
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIG_TCM_FILEIO ;
 int CONFIG_TCM_IBLOCK ;
 int CONFIG_TCM_PSCSI ;
 int CONFIG_TCM_USER2 ;
 scalar_t__ IS_ENABLED (int ) ;
 int pr_err (char*) ;
 scalar_t__ request_module (char*) ;

void transport_subsystem_check_init(void)
{
 int ret;
 static int sub_api_initialized;

 if (sub_api_initialized)
  return;

 ret = IS_ENABLED(CONFIG_TCM_IBLOCK) && request_module("target_core_iblock");
 if (ret != 0)
  pr_err("Unable to load target_core_iblock\n");

 ret = IS_ENABLED(CONFIG_TCM_FILEIO) && request_module("target_core_file");
 if (ret != 0)
  pr_err("Unable to load target_core_file\n");

 ret = IS_ENABLED(CONFIG_TCM_PSCSI) && request_module("target_core_pscsi");
 if (ret != 0)
  pr_err("Unable to load target_core_pscsi\n");

 ret = IS_ENABLED(CONFIG_TCM_USER2) && request_module("target_core_user");
 if (ret != 0)
  pr_err("Unable to load target_core_user\n");

 sub_api_initialized = 1;
}
