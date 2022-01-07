
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cap_exit () ;
 int cap_init () ;
 int fw_mgmt_exit () ;
 int fw_mgmt_init () ;
 int gb_fw_core_driver ;
 int greybus_register (int *) ;
 int pr_err (char*,int) ;

__attribute__((used)) static int fw_core_init(void)
{
 int ret;

 ret = fw_mgmt_init();
 if (ret) {
  pr_err("Failed to initialize fw-mgmt core (%d)\n", ret);
  return ret;
 }

 ret = cap_init();
 if (ret) {
  pr_err("Failed to initialize component authentication core (%d)\n",
         ret);
  goto fw_mgmt_exit;
 }

 ret = greybus_register(&gb_fw_core_driver);
 if (ret)
  goto cap_exit;

 return 0;

cap_exit:
 cap_exit();
fw_mgmt_exit:
 fw_mgmt_exit();

 return ret;
}
