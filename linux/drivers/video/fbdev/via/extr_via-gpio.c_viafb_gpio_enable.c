
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct viafb_gpio {int vg_port_index; } ;


 int VIASR ;
 int via_write_reg_mask (int ,int ,int,int) ;

__attribute__((used)) static void viafb_gpio_enable(struct viafb_gpio *gpio)
{
 via_write_reg_mask(VIASR, gpio->vg_port_index, 0x02, 0x02);
}
