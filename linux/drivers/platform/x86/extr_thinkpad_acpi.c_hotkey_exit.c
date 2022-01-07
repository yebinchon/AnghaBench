
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ hotkey_mask; } ;
struct TYPE_4__ {int kobj; } ;
struct TYPE_5__ {TYPE_1__ dev; } ;


 int TPACPI_DBG_EXIT ;
 int TPACPI_DBG_HKEY ;
 int dbg_printk (int,char*) ;
 int delete_attr_set (scalar_t__,int *) ;
 scalar_t__ hotkey_dev_attributes ;
 scalar_t__ hotkey_mask_set (int ) ;
 int hotkey_mutex ;
 int hotkey_orig_mask ;
 int hotkey_poll_stop_sync () ;
 int hotkey_status_set (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*) ;
 TYPE_3__ tp_features ;
 TYPE_2__* tpacpi_pdev ;

__attribute__((used)) static void hotkey_exit(void)
{






 if (hotkey_dev_attributes)
  delete_attr_set(hotkey_dev_attributes, &tpacpi_pdev->dev.kobj);

 dbg_printk(TPACPI_DBG_EXIT | TPACPI_DBG_HKEY,
     "restoring original HKEY status and mask\n");


 if (((tp_features.hotkey_mask &&
       hotkey_mask_set(hotkey_orig_mask)) |
      hotkey_status_set(0)) != 0)
  pr_err("failed to restore hot key mask to BIOS defaults\n");
}
