
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dev; } ;
struct uwb_rc {TYPE_4__* dbg; TYPE_1__ uwb_dev; } ;
struct uwb_dbg {int dummy; } ;
struct TYPE_6__ {int new_rsv; int channel_changed; struct uwb_rc* rc; } ;
struct TYPE_7__ {int root_d; void* drp_avail_f; int accept; int accept_f; void* reservations_f; void* command_f; TYPE_2__ pal; int list_lock; int rsvs; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int command_fops ;
 int debugfs_create_bool (char*,int,int ,int *) ;
 int debugfs_create_dir (int ,scalar_t__) ;
 void* debugfs_create_file (char*,int,int ,struct uwb_rc*,int *) ;
 int dev_name (int *) ;
 int drp_avail_fops ;
 TYPE_4__* kzalloc (int,int ) ;
 int reservations_fops ;
 scalar_t__ root_dir ;
 int spin_lock_init (int *) ;
 int uwb_dbg_channel_changed ;
 int uwb_dbg_new_rsv ;
 int uwb_pal_init (TYPE_2__*) ;
 int uwb_pal_register (TYPE_2__*) ;

void uwb_dbg_add_rc(struct uwb_rc *rc)
{
 rc->dbg = kzalloc(sizeof(struct uwb_dbg), GFP_KERNEL);
 if (rc->dbg == ((void*)0))
  return;

 INIT_LIST_HEAD(&rc->dbg->rsvs);
 spin_lock_init(&(rc->dbg)->list_lock);

 uwb_pal_init(&rc->dbg->pal);
 rc->dbg->pal.rc = rc;
 rc->dbg->pal.channel_changed = uwb_dbg_channel_changed;
 rc->dbg->pal.new_rsv = uwb_dbg_new_rsv;
 uwb_pal_register(&rc->dbg->pal);

 if (root_dir) {
  rc->dbg->root_d = debugfs_create_dir(dev_name(&rc->uwb_dev.dev),
           root_dir);
  rc->dbg->command_f = debugfs_create_file("command", 0200,
        rc->dbg->root_d, rc,
        &command_fops);
  rc->dbg->reservations_f = debugfs_create_file("reservations", 0444,
             rc->dbg->root_d, rc,
             &reservations_fops);
  rc->dbg->accept_f = debugfs_create_bool("accept", 0644,
       rc->dbg->root_d,
       &rc->dbg->accept);
  rc->dbg->drp_avail_f = debugfs_create_file("drp_avail", 0444,
          rc->dbg->root_d, rc,
          &drp_avail_fops);
 }
}
