
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pr_warn (char*,char const* const,char const* const) ;
 int tpacpi_log_usertask (char*) ;

__attribute__((used)) static void printk_deprecated_attribute(const char * const what,
     const char * const details)
{
 tpacpi_log_usertask("deprecated sysfs attribute");
 pr_warn("WARNING: sysfs attribute %s is deprecated and will be removed. %s\n",
  what, details);
}
