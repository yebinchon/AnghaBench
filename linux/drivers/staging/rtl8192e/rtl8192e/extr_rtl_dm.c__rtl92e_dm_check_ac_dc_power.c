
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r8192_priv {scalar_t__ ResetProgress; TYPE_1__* rtllib; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ state; } ;


 int COMP_INIT ;
 int COMP_POWER ;
 int COMP_RF ;
 char* DRV_NAME ;
 scalar_t__ RESET_TYPE_SILENT ;
 scalar_t__ RTLLIB_LINKED ;
 int RT_TRACE (int,char*) ;
 int UMH_WAIT_PROC ;
 int call_usermodehelper (char const*,char**,char**,int ) ;
 struct r8192_priv* rtllib_priv (struct net_device*) ;

__attribute__((used)) static void _rtl92e_dm_check_ac_dc_power(struct net_device *dev)
{
 struct r8192_priv *priv = rtllib_priv(dev);
 static char const ac_dc_script[] = "/etc/acpi/wireless-rtl-ac-dc-power.sh";
 char *argv[] = {(char *)ac_dc_script, DRV_NAME, ((void*)0)};
 static char *envp[] = {"HOME=/",
   "TERM=linux",
   "PATH=/usr/bin:/bin",
    ((void*)0)};

 if (priv->ResetProgress == RESET_TYPE_SILENT) {
  RT_TRACE((COMP_INIT | COMP_POWER | COMP_RF),
    "GPIOChangeRFWorkItemCallBack(): Silent Reset!!!!!!!\n");
  return;
 }

 if (priv->rtllib->state != RTLLIB_LINKED)
  return;
 call_usermodehelper(ac_dc_script, argv, envp, UMH_WAIT_PROC);

 return;
}
