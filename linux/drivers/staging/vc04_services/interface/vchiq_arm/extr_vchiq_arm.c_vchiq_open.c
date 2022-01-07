
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vchiq_state {int dummy; } ;
struct inode {int dummy; } ;
struct file {TYPE_1__* private_data; } ;
typedef TYPE_1__* VCHIQ_INSTANCE_T ;
struct TYPE_6__ {int tgid; } ;
struct TYPE_5__ {int bulk_waiter_list; int bulk_waiter_list_mutex; int completion_mutex; int remove_event; int insert_event; int pid; struct vchiq_state* state; } ;


 int ENOMEM ;
 int ENOTCONN ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 TYPE_4__* current ;
 int init_completion (int *) ;
 TYPE_1__* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int vchiq_arm_log_level ;
 int vchiq_debugfs_add_instance (TYPE_1__*) ;
 struct vchiq_state* vchiq_get_state () ;
 int vchiq_log_error (int ,char*) ;
 int vchiq_log_info (int ,char*) ;

__attribute__((used)) static int vchiq_open(struct inode *inode, struct file *file)
{
 struct vchiq_state *state = vchiq_get_state();
 VCHIQ_INSTANCE_T instance;

 vchiq_log_info(vchiq_arm_log_level, "vchiq_open");

 if (!state) {
  vchiq_log_error(vchiq_arm_log_level,
    "vchiq has no connection to VideoCore");
  return -ENOTCONN;
 }

 instance = kzalloc(sizeof(*instance), GFP_KERNEL);
 if (!instance)
  return -ENOMEM;

 instance->state = state;
 instance->pid = current->tgid;

 vchiq_debugfs_add_instance(instance);

 init_completion(&instance->insert_event);
 init_completion(&instance->remove_event);
 mutex_init(&instance->completion_mutex);
 mutex_init(&instance->bulk_waiter_list_mutex);
 INIT_LIST_HEAD(&instance->bulk_waiter_list);

 file->private_data = instance;

 return 0;
}
