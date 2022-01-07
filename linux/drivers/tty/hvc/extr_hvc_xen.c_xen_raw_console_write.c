
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int ENOSYS ;
 int dom0_write_console (int ,char const*,int ) ;
 int strlen (char const*) ;
 scalar_t__ xen_domain () ;
 int xen_hvm_domain () ;
 int xen_hvm_early_write (int ,char const*,int ) ;

void xen_raw_console_write(const char *str)
{
 ssize_t len = strlen(str);
 int rc = 0;

 if (xen_domain()) {
  rc = dom0_write_console(0, str, len);
  if (rc != -ENOSYS || !xen_hvm_domain())
   return;
 }
 xen_hvm_early_write(0, str, len);
}
