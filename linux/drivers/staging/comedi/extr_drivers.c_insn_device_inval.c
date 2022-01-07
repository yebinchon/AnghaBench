
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_insn {int dummy; } ;
struct comedi_device {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static int insn_device_inval(struct comedi_device *dev,
        struct comedi_insn *insn, unsigned int *data)
{
 return -EINVAL;
}
