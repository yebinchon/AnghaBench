
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct file {struct cifsFileInfo* private_data; } ;
struct dir_context {scalar_t__ pos; } ;
struct cifs_tcon {TYPE_2__* ses; } ;
struct TYPE_7__ {char* ntwrk_buf_start; scalar_t__ index_of_last_entry; int info_level; scalar_t__ emptyDir; scalar_t__ endOfSearch; } ;
struct cifsFileInfo {TYPE_3__ srch_inf; int tlink; } ;
struct TYPE_8__ {TYPE_1__* ops; } ;
struct TYPE_6__ {TYPE_4__* server; } ;
struct TYPE_5__ {unsigned int (* calc_smb_size ) (char*,TYPE_4__*) ;} ;


 int ENOMEM ;
 int FYI ;
 int GFP_KERNEL ;
 int UNICODE_NAME_MAX ;
 int VFS ;
 int cifs_dbg (int ,char*,...) ;
 int cifs_filldir (char*,struct file*,struct dir_context*,char*,unsigned int) ;
 int cifs_save_resume_key (char*,struct cifsFileInfo*) ;
 int dir_emit_dots (struct file*,struct dir_context*) ;
 int find_cifs_entry (unsigned int,struct cifs_tcon*,scalar_t__,struct file*,char**,int*) ;
 int free_xid (unsigned int) ;
 unsigned int get_xid () ;
 int initiate_cifs_search (unsigned int,struct file*) ;
 int kfree (char*) ;
 char* kmalloc (int ,int ) ;
 char* nxt_dir_entry (char*,char*,int ) ;
 unsigned int stub1 (char*,TYPE_4__*) ;
 struct cifs_tcon* tlink_tcon (int ) ;

int cifs_readdir(struct file *file, struct dir_context *ctx)
{
 int rc = 0;
 unsigned int xid;
 int i;
 struct cifs_tcon *tcon;
 struct cifsFileInfo *cifsFile = ((void*)0);
 char *current_entry;
 int num_to_fill = 0;
 char *tmp_buf = ((void*)0);
 char *end_of_smb;
 unsigned int max_len;

 xid = get_xid();





 if (file->private_data == ((void*)0)) {
  rc = initiate_cifs_search(xid, file);
  cifs_dbg(FYI, "initiate cifs search rc %d\n", rc);
  if (rc)
   goto rddir2_exit;
 }

 if (!dir_emit_dots(file, ctx))
  goto rddir2_exit;






 cifsFile = file->private_data;
 if (cifsFile->srch_inf.endOfSearch) {
  if (cifsFile->srch_inf.emptyDir) {
   cifs_dbg(FYI, "End of search, empty dir\n");
   rc = 0;
   goto rddir2_exit;
  }
 }




 tcon = tlink_tcon(cifsFile->tlink);
 rc = find_cifs_entry(xid, tcon, ctx->pos, file, &current_entry,
        &num_to_fill);
 if (rc) {
  cifs_dbg(FYI, "fce error %d\n", rc);
  goto rddir2_exit;
 } else if (current_entry != ((void*)0)) {
  cifs_dbg(FYI, "entry %lld found\n", ctx->pos);
 } else {
  cifs_dbg(FYI, "could not find entry\n");
  goto rddir2_exit;
 }
 cifs_dbg(FYI, "loop through %d times filling dir for net buf %p\n",
   num_to_fill, cifsFile->srch_inf.ntwrk_buf_start);
 max_len = tcon->ses->server->ops->calc_smb_size(
   cifsFile->srch_inf.ntwrk_buf_start,
   tcon->ses->server);
 end_of_smb = cifsFile->srch_inf.ntwrk_buf_start + max_len;

 tmp_buf = kmalloc(UNICODE_NAME_MAX, GFP_KERNEL);
 if (tmp_buf == ((void*)0)) {
  rc = -ENOMEM;
  goto rddir2_exit;
 }

 for (i = 0; i < num_to_fill; i++) {
  if (current_entry == ((void*)0)) {

   cifs_dbg(VFS, "past SMB end,  num to fill %d i %d\n",
     num_to_fill, i);
   break;
  }




  *tmp_buf = 0;
  rc = cifs_filldir(current_entry, file, ctx,
      tmp_buf, max_len);
  if (rc) {
   if (rc > 0)
    rc = 0;
   break;
  }

  ctx->pos++;
  if (ctx->pos ==
   cifsFile->srch_inf.index_of_last_entry) {
   cifs_dbg(FYI, "last entry in buf at pos %lld %s\n",
     ctx->pos, tmp_buf);
   cifs_save_resume_key(current_entry, cifsFile);
   break;
  } else
   current_entry =
    nxt_dir_entry(current_entry, end_of_smb,
     cifsFile->srch_inf.info_level);
 }
 kfree(tmp_buf);

rddir2_exit:
 free_xid(xid);
 return rc;
}
