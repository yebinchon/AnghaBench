
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct per_user_data {int restrict_domid; int ring_prod_lock; int ring_cons_mutex; int bind_mutex; int evtchn_wait; int * name; } ;
struct inode {int dummy; } ;
struct file {struct per_user_data* private_data; } ;
struct TYPE_2__ {int comm; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int UNRESTRICTED_DOMID ;
 TYPE_1__* current ;
 int init_waitqueue_head (int *) ;
 int * kasprintf (int ,char*,int ) ;
 int kfree (struct per_user_data*) ;
 struct per_user_data* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;
 int stream_open (struct inode*,struct file*) ;

__attribute__((used)) static int evtchn_open(struct inode *inode, struct file *filp)
{
 struct per_user_data *u;

 u = kzalloc(sizeof(*u), GFP_KERNEL);
 if (u == ((void*)0))
  return -ENOMEM;

 u->name = kasprintf(GFP_KERNEL, "evtchn:%s", current->comm);
 if (u->name == ((void*)0)) {
  kfree(u);
  return -ENOMEM;
 }

 init_waitqueue_head(&u->evtchn_wait);

 mutex_init(&u->bind_mutex);
 mutex_init(&u->ring_cons_mutex);
 spin_lock_init(&u->ring_prod_lock);

 u->restrict_domid = UNRESTRICTED_DOMID;

 filp->private_data = u;

 return stream_open(inode, filp);
}
