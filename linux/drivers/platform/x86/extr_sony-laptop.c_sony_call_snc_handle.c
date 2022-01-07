
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dprintk (char*,int,int) ;
 int sony_find_snc_handle (int) ;
 int sony_nc_acpi_handle ;
 int sony_nc_int_call (int ,char*,int*,int*) ;

__attribute__((used)) static int sony_call_snc_handle(int handle, int argument, int *result)
{
 int arg, ret = 0;
 int offset = sony_find_snc_handle(handle);

 if (offset < 0)
  return offset;

 arg = offset | argument;
 ret = sony_nc_int_call(sony_nc_acpi_handle, "SN07", &arg, result);
 dprintk("called SN07 with 0x%.4x (result: 0x%.4x)\n", arg, *result);
 return ret;
}
