
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int timeout; } ;


 int ASCEBC (char*,int ) ;
 int EBC_TOUPPER (char*,int ) ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ MACHINE_IS_VM ;
 int MAX_CMDLEN ;
 int WARN_ON (int) ;
 int WDT_FUNC_CHANGE ;
 unsigned int WDT_FUNC_CONCEAL ;
 unsigned int WDT_FUNC_INIT ;
 int __diag288_lpar (int ,int ,int ) ;
 int __diag288_vm (unsigned int,int ,char*,size_t) ;
 scalar_t__ conceal_on ;
 int kfree (char*) ;
 char* kmalloc (int ,int ) ;
 int pr_err (char*) ;
 size_t strlcpy (char*,int ,int ) ;
 int wdt_cmd ;

__attribute__((used)) static int wdt_ping(struct watchdog_device *dev)
{
 char *ebc_cmd;
 size_t len;
 int ret;
 unsigned int func;

 ret = -ENODEV;

 if (MACHINE_IS_VM) {
  ebc_cmd = kmalloc(MAX_CMDLEN, GFP_KERNEL);
  if (!ebc_cmd)
   return -ENOMEM;
  len = strlcpy(ebc_cmd, wdt_cmd, MAX_CMDLEN);
  ASCEBC(ebc_cmd, MAX_CMDLEN);
  EBC_TOUPPER(ebc_cmd, MAX_CMDLEN);






  func = conceal_on ? (WDT_FUNC_INIT | WDT_FUNC_CONCEAL)
   : WDT_FUNC_INIT;

  ret = __diag288_vm(func, dev->timeout, ebc_cmd, len);
  WARN_ON(ret != 0);
  kfree(ebc_cmd);
 } else {
  ret = __diag288_lpar(WDT_FUNC_CHANGE, dev->timeout, 0);
 }

 if (ret)
  pr_err("The watchdog timer cannot be started or reset\n");
 return ret;
}
