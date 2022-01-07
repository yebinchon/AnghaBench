
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct adapter {int dummy; } ;
typedef int __le32 ;


 int SDIO_HIMR_DISABLED ;
 int SDIO_REG_HIMR ;
 int cpu_to_le32 (int ) ;
 int sdio_local_write (struct adapter*,int ,int,int *) ;

void DisableInterrupt8723BSdio(struct adapter *adapter)
{
 __le32 himr;

 himr = cpu_to_le32(SDIO_HIMR_DISABLED);
 sdio_local_write(adapter, SDIO_REG_HIMR, 4, (u8 *)&himr);
}
