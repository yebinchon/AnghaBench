
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct inode {TYPE_4__* i_mapping; } ;
struct file {struct cifsFileInfo* private_data; } ;
struct cifs_tcon {TYPE_3__* ses; } ;
struct cifsFileInfo {scalar_t__ tlink; } ;
typedef int loff_t ;
struct TYPE_12__ {scalar_t__ time; } ;
struct TYPE_11__ {scalar_t__ nrpages; } ;
struct TYPE_10__ {TYPE_2__* server; } ;
struct TYPE_9__ {TYPE_1__* ops; } ;
struct TYPE_8__ {int (* llseek ) (struct file*,struct cifs_tcon*,int,int) ;} ;


 int CIFS_CACHE_READ (TYPE_6__*) ;
 TYPE_6__* CIFS_I (struct inode*) ;
 int SEEK_CUR ;
 int SEEK_SET ;
 int cifs_revalidate_file_attr (struct file*) ;
 struct inode* file_inode (struct file*) ;
 int filemap_fdatawait (TYPE_4__*) ;
 int generic_file_llseek (struct file*,int,int) ;
 int mapping_set_error (TYPE_4__*,int) ;
 int stub1 (struct file*,struct cifs_tcon*,int,int) ;
 struct cifs_tcon* tlink_tcon (scalar_t__) ;

__attribute__((used)) static loff_t cifs_llseek(struct file *file, loff_t offset, int whence)
{
 struct cifsFileInfo *cfile = file->private_data;
 struct cifs_tcon *tcon;





 if (whence != SEEK_SET && whence != SEEK_CUR) {
  int rc;
  struct inode *inode = file_inode(file);





  if (!CIFS_CACHE_READ(CIFS_I(inode)) && inode->i_mapping &&
      inode->i_mapping->nrpages != 0) {
   rc = filemap_fdatawait(inode->i_mapping);
   if (rc) {
    mapping_set_error(inode->i_mapping, rc);
    return rc;
   }
  }





  CIFS_I(inode)->time = 0;

  rc = cifs_revalidate_file_attr(file);
  if (rc < 0)
   return (loff_t)rc;
 }
 if (cfile && cfile->tlink) {
  tcon = tlink_tcon(cfile->tlink);
  if (tcon->ses->server->ops->llseek)
   return tcon->ses->server->ops->llseek(file, tcon,
             offset, whence);
 }
 return generic_file_llseek(file, offset, whence);
}
