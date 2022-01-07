
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int aac_cfg_fops ;
 scalar_t__ aac_cfg_major ;
 int pr_err (char*) ;
 scalar_t__ register_chrdev (int ,char*,int *) ;

__attribute__((used)) static void aac_init_char(void)
{
 aac_cfg_major = register_chrdev(0, "aac", &aac_cfg_fops);
 if (aac_cfg_major < 0) {
  pr_err("aacraid: unable to register \"aac\" device.\n");
 }
}
