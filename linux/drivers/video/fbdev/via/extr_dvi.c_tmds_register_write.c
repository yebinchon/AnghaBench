
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {TYPE_2__* chip_info; } ;
struct TYPE_4__ {int tmds_chip_slave_addr; int i2c_port; } ;
struct TYPE_5__ {TYPE_1__ tmds_chip_info; } ;


 int viafb_i2c_writebyte (int ,int ,int,int ) ;
 TYPE_3__* viaparinfo ;

__attribute__((used)) static void tmds_register_write(int index, u8 data)
{
 viafb_i2c_writebyte(viaparinfo->chip_info->tmds_chip_info.i2c_port,
       viaparinfo->chip_info->tmds_chip_info.tmds_chip_slave_addr,
       index, data);
}
