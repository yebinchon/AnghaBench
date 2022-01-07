
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_insn {int dummy; } ;
struct comedi_device {int dummy; } ;


 int EINVAL ;



 int connect_route (unsigned int,unsigned int,struct comedi_device*) ;
 int disconnect_route (unsigned int,unsigned int,struct comedi_device*) ;
 unsigned int test_route (unsigned int,unsigned int,struct comedi_device*) ;

__attribute__((used)) static int ni_global_insn_config(struct comedi_device *dev,
     struct comedi_insn *insn,
     unsigned int *data)
{
 switch (data[0]) {
 case 128:
  data[0] = test_route(data[1], data[2], dev);
  return 2;
 case 130:
  return connect_route(data[1], data[2], dev);
 case 129:
  return disconnect_route(data[1], data[2], dev);




 default:
  return -EINVAL;
 }
 return 1;
}
