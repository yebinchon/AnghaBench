
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct file {struct cifsFileInfo* private_data; } ;
struct cifs_tcon {TYPE_1__* ses; } ;
struct cifs_sb_info {int dummy; } ;
struct TYPE_6__ {scalar_t__ index_of_last_entry; int entries_in_buffer; char* ntwrk_buf_start; char* srch_entries_start; int info_level; scalar_t__ last_entry; int endOfSearch; scalar_t__ smallBuf; } ;
struct cifsFileInfo {int invalidHandle; TYPE_3__ srch_inf; int fid; int file_info_lock; } ;
struct TCP_Server_Info {TYPE_2__* ops; } ;
typedef scalar_t__ loff_t ;
typedef int __u16 ;
struct TYPE_5__ {int (* query_dir_next ) (unsigned int const,struct cifs_tcon*,int *,int,TYPE_3__*) ;int (* calc_smb_size ) (char*,struct TCP_Server_Info*) ;int (* close_dir ) (unsigned int const,struct cifs_tcon*,int *) ;scalar_t__ (* dir_needs_close ) (struct cifsFileInfo*) ;int query_dir_first; } ;
struct TYPE_4__ {struct TCP_Server_Info* server; } ;


 struct cifs_sb_info* CIFS_FILE_SB (struct file*) ;
 int CIFS_SEARCH_BACKUP_SEARCH ;
 int CIFS_SEARCH_CLOSE_AT_END ;
 int CIFS_SEARCH_RETURN_RESUME ;
 int EIO ;
 int ENOENT ;
 int ENOSYS ;
 int FYI ;
 int VFS ;
 scalar_t__ backup_cred (struct cifs_sb_info*) ;
 int cifs_buf_release (char*) ;
 int cifs_dbg (int ,char*,...) ;
 int cifs_save_resume_key (scalar_t__,struct cifsFileInfo*) ;
 int cifs_small_buf_release (char*) ;
 int dump_cifs_file_struct (struct file*,char*) ;
 int initiate_cifs_search (unsigned int const,struct file*) ;
 scalar_t__ is_dir_changed (struct file*) ;
 char* nxt_dir_entry (char*,char*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ stub1 (struct cifsFileInfo*) ;
 int stub2 (unsigned int const,struct cifs_tcon*,int *) ;
 int stub3 (unsigned int const,struct cifs_tcon*,int *,int,TYPE_3__*) ;
 int stub4 (char*,struct TCP_Server_Info*) ;

__attribute__((used)) static int
find_cifs_entry(const unsigned int xid, struct cifs_tcon *tcon, loff_t pos,
  struct file *file, char **current_entry, int *num_to_ret)
{
 __u16 search_flags;
 int rc = 0;
 int pos_in_buf = 0;
 loff_t first_entry_in_buffer;
 loff_t index_to_find = pos;
 struct cifsFileInfo *cfile = file->private_data;
 struct cifs_sb_info *cifs_sb = CIFS_FILE_SB(file);
 struct TCP_Server_Info *server = tcon->ses->server;


 if (!server->ops->query_dir_first || !server->ops->query_dir_next)
  return -ENOSYS;

 if ((cfile == ((void*)0)) || (current_entry == ((void*)0)) || (num_to_ret == ((void*)0)))
  return -ENOENT;

 *current_entry = ((void*)0);
 first_entry_in_buffer = cfile->srch_inf.index_of_last_entry -
     cfile->srch_inf.entries_in_buffer;
 dump_cifs_file_struct(file, "In fce ");
 if (((index_to_find < cfile->srch_inf.index_of_last_entry) &&
      is_dir_changed(file)) || (index_to_find < first_entry_in_buffer)) {

  cifs_dbg(FYI, "search backing up - close and restart search\n");
  spin_lock(&cfile->file_info_lock);
  if (server->ops->dir_needs_close(cfile)) {
   cfile->invalidHandle = 1;
   spin_unlock(&cfile->file_info_lock);
   if (server->ops->close_dir)
    server->ops->close_dir(xid, tcon, &cfile->fid);
  } else
   spin_unlock(&cfile->file_info_lock);
  if (cfile->srch_inf.ntwrk_buf_start) {
   cifs_dbg(FYI, "freeing SMB ff cache buf on search rewind\n");
   if (cfile->srch_inf.smallBuf)
    cifs_small_buf_release(cfile->srch_inf.
      ntwrk_buf_start);
   else
    cifs_buf_release(cfile->srch_inf.
      ntwrk_buf_start);
   cfile->srch_inf.ntwrk_buf_start = ((void*)0);
  }
  rc = initiate_cifs_search(xid, file);
  if (rc) {
   cifs_dbg(FYI, "error %d reinitiating a search on rewind\n",
     rc);
   return rc;
  }

  if (cfile->srch_inf.last_entry)
   cifs_save_resume_key(cfile->srch_inf.last_entry, cfile);
 }

 search_flags = CIFS_SEARCH_CLOSE_AT_END | CIFS_SEARCH_RETURN_RESUME;
 if (backup_cred(cifs_sb))
  search_flags |= CIFS_SEARCH_BACKUP_SEARCH;

 while ((index_to_find >= cfile->srch_inf.index_of_last_entry) &&
        (rc == 0) && !cfile->srch_inf.endOfSearch) {
  cifs_dbg(FYI, "calling findnext2\n");
  rc = server->ops->query_dir_next(xid, tcon, &cfile->fid,
       search_flags,
       &cfile->srch_inf);

  if (cfile->srch_inf.last_entry)
   cifs_save_resume_key(cfile->srch_inf.last_entry, cfile);
  if (rc)
   return -ENOENT;
 }
 if (index_to_find < cfile->srch_inf.index_of_last_entry) {


  int i;
  char *cur_ent;
  char *end_of_smb;

  if (cfile->srch_inf.ntwrk_buf_start == ((void*)0)) {
   cifs_dbg(VFS, "ntwrk_buf_start is NULL during readdir\n");
   return -EIO;
  }

  end_of_smb = cfile->srch_inf.ntwrk_buf_start +
   server->ops->calc_smb_size(
     cfile->srch_inf.ntwrk_buf_start,
     server);

  cur_ent = cfile->srch_inf.srch_entries_start;
  first_entry_in_buffer = cfile->srch_inf.index_of_last_entry
     - cfile->srch_inf.entries_in_buffer;
  pos_in_buf = index_to_find - first_entry_in_buffer;
  cifs_dbg(FYI, "found entry - pos_in_buf %d\n", pos_in_buf);

  for (i = 0; (i < (pos_in_buf)) && (cur_ent != ((void*)0)); i++) {

   cur_ent = nxt_dir_entry(cur_ent, end_of_smb,
      cfile->srch_inf.info_level);
  }
  if ((cur_ent == ((void*)0)) && (i < pos_in_buf)) {

   cifs_dbg(VFS, "reached end of buf searching for pos in buf %d index to find %lld rc %d\n",
     pos_in_buf, index_to_find, rc);
  }
  rc = 0;
  *current_entry = cur_ent;
 } else {
  cifs_dbg(FYI, "index not in buffer - could not findnext into it\n");
  return 0;
 }

 if (pos_in_buf >= cfile->srch_inf.entries_in_buffer) {
  cifs_dbg(FYI, "can not return entries pos_in_buf beyond last\n");
  *num_to_ret = 0;
 } else
  *num_to_ret = cfile->srch_inf.entries_in_buffer - pos_in_buf;

 return rc;
}
