
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eeepc_laptop {int cm_supported; int handle; } ;


 int * cm_getv ;
 int pr_info (char*,char const*,int) ;
 int read_acpi_int (int ,int ,int*) ;

__attribute__((used)) static void cmsg_quirk(struct eeepc_laptop *eeepc, int cm, const char *name)
{
 int dummy;



 if (!(eeepc->cm_supported & (1 << cm))
     && !read_acpi_int(eeepc->handle, cm_getv[cm], &dummy)) {
  pr_info("%s (%x) not reported by BIOS, enabling anyway\n",
   name, 1 << cm);
  eeepc->cm_supported |= 1 << cm;
 }
}
