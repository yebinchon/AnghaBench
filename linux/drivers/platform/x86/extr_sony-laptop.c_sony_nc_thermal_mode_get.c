
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EIO ;
 scalar_t__ sony_call_snc_handle (int,int,unsigned int*) ;

__attribute__((used)) static int sony_nc_thermal_mode_get(void)
{
 unsigned int result;

 if (sony_call_snc_handle(0x0122, 0x0100, &result))
  return -EIO;

 return result & 0xff;
}
