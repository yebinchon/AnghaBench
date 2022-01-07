
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memset (unsigned char*,int ,int) ;
 scalar_t__ scsi_debug_lbp () ;
 int sdebug_lbprz ;
 scalar_t__ sdebug_lbpu ;
 scalar_t__ sdebug_lbpws ;
 scalar_t__ sdebug_lbpws10 ;

__attribute__((used)) static int inquiry_vpd_b2(unsigned char *arr)
{
 memset(arr, 0, 0x4);
 arr[0] = 0;
 if (sdebug_lbpu)
  arr[1] = 1 << 7;
 if (sdebug_lbpws)
  arr[1] |= 1 << 6;
 if (sdebug_lbpws10)
  arr[1] |= 1 << 5;
 if (sdebug_lbprz && scsi_debug_lbp())
  arr[1] |= (sdebug_lbprz & 0x7) << 2;



 return 0x4;
}
