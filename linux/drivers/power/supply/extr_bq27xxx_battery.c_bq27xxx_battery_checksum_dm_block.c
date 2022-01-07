
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct bq27xxx_dm_buf {scalar_t__* data; } ;


 int BQ27XXX_DM_SZ ;

__attribute__((used)) static u8 bq27xxx_battery_checksum_dm_block(struct bq27xxx_dm_buf *buf)
{
 u16 sum = 0;
 int i;

 for (i = 0; i < BQ27XXX_DM_SZ; i++)
  sum += buf->data[i];
 sum &= 0xff;

 return 0xff - sum;
}
