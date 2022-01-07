
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {TYPE_2__* chip_info; } ;
struct TYPE_4__ {scalar_t__ lvds_chip_slave_addr; } ;
struct TYPE_5__ {TYPE_1__ lvds_chip_info; } ;


 int VIA_PORT_2C ;
 int viafb_i2c_readbyte (int ,int,int,int*) ;
 TYPE_3__* viaparinfo ;

__attribute__((used)) static int lvds_register_read(int index)
{
 u8 data;

 viafb_i2c_readbyte(VIA_PORT_2C,
   (u8) viaparinfo->chip_info->lvds_chip_info.lvds_chip_slave_addr,
   (u8) index, &data);
 return data;
}
