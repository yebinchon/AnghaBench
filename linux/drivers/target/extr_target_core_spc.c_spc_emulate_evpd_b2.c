
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ emulate_tpu; scalar_t__ emulate_tpws; scalar_t__ unmap_zeroes_data; } ;
struct se_device {TYPE_2__ dev_attrib; TYPE_1__* transport; } ;
struct se_cmd {struct se_device* se_dev; } ;
typedef int sense_reason_t ;
struct TYPE_3__ {unsigned char (* get_device_type ) (struct se_device*) ;} ;


 int put_unaligned_be16 (int,unsigned char*) ;
 unsigned char stub1 (struct se_device*) ;

__attribute__((used)) static sense_reason_t
spc_emulate_evpd_b2(struct se_cmd *cmd, unsigned char *buf)
{
 struct se_device *dev = cmd->se_dev;
 buf[0] = dev->transport->get_device_type(dev);




 put_unaligned_be16(0x0004, &buf[2]);
 buf[4] = 0x00;






 if (dev->dev_attrib.emulate_tpu != 0)
  buf[5] = 0x80;







 if (dev->dev_attrib.emulate_tpws != 0)
  buf[5] |= 0x40 | 0x20;
 if (((dev->dev_attrib.emulate_tpu != 0) ||
      (dev->dev_attrib.emulate_tpws != 0)) &&
      (dev->dev_attrib.unmap_zeroes_data != 0))
  buf[5] |= 0x04;

 return 0;
}
