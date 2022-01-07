
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {TYPE_2__* chip_info; } ;
struct TYPE_4__ {scalar_t__ tmds_chip_slave_addr; int i2c_port; } ;
struct TYPE_5__ {TYPE_1__ tmds_chip_info; } ;


 int viafb_i2c_readbytes (int ,int ,int ,int *,int) ;
 TYPE_3__* viaparinfo ;

__attribute__((used)) static int tmds_register_read_bytes(int index, u8 *buff, int buff_len)
{
 viafb_i2c_readbytes(viaparinfo->chip_info->tmds_chip_info.i2c_port,
       (u8) viaparinfo->chip_info->tmds_chip_info.tmds_chip_slave_addr,
       (u8) index, buff, buff_len);
 return 0;
}
