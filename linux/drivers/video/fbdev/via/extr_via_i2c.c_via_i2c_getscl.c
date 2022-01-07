
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct via_port_cfg {scalar_t__ type; int ioport_index; int io_port; } ;
struct TYPE_2__ {int reg_lock; } ;


 scalar_t__ VIA_PORT_GPIO ;
 TYPE_1__* i2c_vdev ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int via_read_reg (int ,int ) ;
 int via_write_reg_mask (int ,int ,int ,int) ;

__attribute__((used)) static int via_i2c_getscl(void *data)
{
 struct via_port_cfg *adap_data = data;
 unsigned long flags;
 int ret = 0;

 spin_lock_irqsave(&i2c_vdev->reg_lock, flags);
 if (adap_data->type == VIA_PORT_GPIO)
  via_write_reg_mask(adap_data->io_port, adap_data->ioport_index,
   0, 0x80);
 if (via_read_reg(adap_data->io_port, adap_data->ioport_index) & 0x08)
  ret = 1;
 spin_unlock_irqrestore(&i2c_vdev->reg_lock, flags);
 return ret;
}
