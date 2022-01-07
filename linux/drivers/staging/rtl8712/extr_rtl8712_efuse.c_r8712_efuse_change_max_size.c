
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u16 ;
struct _adapter {int dummy; } ;


 int efuse_available_max_size ;
 int efuse_one_byte_read (struct _adapter*,size_t,int*) ;

void r8712_efuse_change_max_size(struct _adapter *adapter)
{
 u16 pre_pg_data_saddr = 0x1FB;
 u16 i;
 u16 pre_pg_data_size = 5;
 u8 pre_pg_data[5];

 for (i = 0; i < pre_pg_data_size; i++)
  efuse_one_byte_read(adapter, pre_pg_data_saddr + i,
        &pre_pg_data[i]);
 if ((pre_pg_data[0] == 0x03) && (pre_pg_data[1] == 0x00) &&
     (pre_pg_data[2] == 0x00) && (pre_pg_data[3] == 0x00) &&
     (pre_pg_data[4] == 0x0C))
  efuse_available_max_size -= pre_pg_data_size;
}
