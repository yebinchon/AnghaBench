
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct ecryptfs_daemon {int euid_chain; scalar_t__ num_queued_msg_ctx; int wait; int msg_ctx_out_queue; int mux; struct file* file; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 size_t ecryptfs_current_euid_hash () ;
 int * ecryptfs_daemon_hash ;
 int hlist_add_head (int *,int *) ;
 int init_waitqueue_head (int *) ;
 struct ecryptfs_daemon* kzalloc (int,int ) ;
 int mutex_init (int *) ;

int
ecryptfs_spawn_daemon(struct ecryptfs_daemon **daemon, struct file *file)
{
 int rc = 0;

 (*daemon) = kzalloc(sizeof(**daemon), GFP_KERNEL);
 if (!(*daemon)) {
  rc = -ENOMEM;
  goto out;
 }
 (*daemon)->file = file;
 mutex_init(&(*daemon)->mux);
 INIT_LIST_HEAD(&(*daemon)->msg_ctx_out_queue);
 init_waitqueue_head(&(*daemon)->wait);
 (*daemon)->num_queued_msg_ctx = 0;
 hlist_add_head(&(*daemon)->euid_chain,
         &ecryptfs_daemon_hash[ecryptfs_current_euid_hash()]);
out:
 return rc;
}
