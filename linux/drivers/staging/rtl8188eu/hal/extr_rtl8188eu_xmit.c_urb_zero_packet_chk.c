
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct adapter {TYPE_1__* HalData; } ;
struct TYPE_2__ {int UsbBulkOutSize; } ;


 int TXDESC_SIZE ;

__attribute__((used)) static u8 urb_zero_packet_chk(struct adapter *adapt, int sz)
{
 return !((sz + TXDESC_SIZE) % adapt->HalData->UsbBulkOutSize);
}
