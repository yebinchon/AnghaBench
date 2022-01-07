
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ TPACPI_LIFE_RUNNING ;
 int WARN (int,int ) ;
 int pr_err (char*) ;
 int pr_fmt (char*) ;
 scalar_t__ tpacpi_lifecycle ;
 int tpacpi_log_usertask (char*) ;

__attribute__((used)) static void hotkey_enabledisable_warn(bool enable)
{
 tpacpi_log_usertask("procfs hotkey enable/disable");
 if (!WARN((tpacpi_lifecycle == TPACPI_LIFE_RUNNING || !enable),
    pr_fmt("hotkey enable/disable functionality has been removed from the driver.  Hotkeys are always enabled.\n")))
  pr_err("Please remove the hotkey=enable module parameter, it is deprecated.  Hotkeys are always enabled.\n");
}
