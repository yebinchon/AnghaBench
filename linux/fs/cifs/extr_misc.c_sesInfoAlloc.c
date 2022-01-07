
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifs_ses {int iface_lock; int session_mutex; int tcon_list; int smb_ses_list; int ses_count; int status; } ;


 int CifsNew ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int atomic_inc (int *) ;
 struct cifs_ses* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int sesInfoAllocCount ;
 int spin_lock_init (int *) ;

struct cifs_ses *
sesInfoAlloc(void)
{
 struct cifs_ses *ret_buf;

 ret_buf = kzalloc(sizeof(struct cifs_ses), GFP_KERNEL);
 if (ret_buf) {
  atomic_inc(&sesInfoAllocCount);
  ret_buf->status = CifsNew;
  ++ret_buf->ses_count;
  INIT_LIST_HEAD(&ret_buf->smb_ses_list);
  INIT_LIST_HEAD(&ret_buf->tcon_list);
  mutex_init(&ret_buf->session_mutex);
  spin_lock_init(&ret_buf->iface_lock);
 }
 return ret_buf;
}
