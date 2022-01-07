
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct comedi_device {int dummy; } ;


 size_t ARRAY_SIZE (int ) ;
 int s626_i2c_read (struct comedi_device*,int ) ;
 int * s626_trimadrs ;
 int s626_trimchan ;
 int s626_write_trim_dac (struct comedi_device*,size_t,int ) ;

__attribute__((used)) static int s626_load_trim_dacs(struct comedi_device *dev)
{
 u8 i;
 int ret;


 for (i = 0; i < ARRAY_SIZE(s626_trimchan); i++) {
  ret = s626_write_trim_dac(dev, i,
       s626_i2c_read(dev, s626_trimadrs[i]));
  if (ret)
   return ret;
 }
 return 0;
}
