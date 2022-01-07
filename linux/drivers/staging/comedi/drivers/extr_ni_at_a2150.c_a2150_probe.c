
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; } ;
struct a2150_board {int dummy; } ;


 int ARRAY_SIZE (struct a2150_board const*) ;
 int ID_BITS (int ) ;
 scalar_t__ STATUS_REG ;
 struct a2150_board const* a2150_boards ;
 int inw (scalar_t__) ;

__attribute__((used)) static const struct a2150_board *a2150_probe(struct comedi_device *dev)
{
 int id = ID_BITS(inw(dev->iobase + STATUS_REG));

 if (id >= ARRAY_SIZE(a2150_boards))
  return ((void*)0);

 return &a2150_boards[id];
}
