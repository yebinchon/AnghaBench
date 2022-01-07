
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fid_mutex; void* fid; } ;
struct cifs_tcon {int num_remote_opens; int num_local_opens; int stat_lock; TYPE_1__ crfid; int open_file_lock; int tcon_list; int openFileList; int tc_count; int tidStatus; } ;


 int CifsNew ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int atomic_inc (int *) ;
 int atomic_set (int *,int ) ;
 int kfree (struct cifs_tcon*) ;
 void* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;
 int tconInfoAllocCount ;

struct cifs_tcon *
tconInfoAlloc(void)
{
 struct cifs_tcon *ret_buf;

 ret_buf = kzalloc(sizeof(*ret_buf), GFP_KERNEL);
 if (!ret_buf)
  return ((void*)0);
 ret_buf->crfid.fid = kzalloc(sizeof(*ret_buf->crfid.fid), GFP_KERNEL);
 if (!ret_buf->crfid.fid) {
  kfree(ret_buf);
  return ((void*)0);
 }

 atomic_inc(&tconInfoAllocCount);
 ret_buf->tidStatus = CifsNew;
 ++ret_buf->tc_count;
 INIT_LIST_HEAD(&ret_buf->openFileList);
 INIT_LIST_HEAD(&ret_buf->tcon_list);
 spin_lock_init(&ret_buf->open_file_lock);
 mutex_init(&ret_buf->crfid.fid_mutex);
 spin_lock_init(&ret_buf->stat_lock);
 atomic_set(&ret_buf->num_local_opens, 0);
 atomic_set(&ret_buf->num_remote_opens, 0);

 return ret_buf;
}
