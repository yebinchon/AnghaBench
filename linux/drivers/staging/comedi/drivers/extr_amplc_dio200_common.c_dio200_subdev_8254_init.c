
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dio200_board {scalar_t__ has_clk_gat_sce; scalar_t__ is_pcie; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {scalar_t__ iobase; scalar_t__ mmio; struct dio200_board* board_ptr; } ;
struct comedi_8254 {int insn_config; } ;


 int ENOMEM ;
 int I8254_IO8 ;
 struct comedi_8254* comedi_8254_init (scalar_t__,int ,int ,unsigned int) ;
 struct comedi_8254* comedi_8254_mm_init (scalar_t__,int ,int ,unsigned int) ;
 int comedi_8254_subdevice_init (struct comedi_subdevice*,struct comedi_8254*) ;
 int comedi_set_spriv_auto_free (struct comedi_subdevice*) ;
 int dio200_subdev_8254_config ;
 int dio200_subdev_8254_set_clock_src (struct comedi_device*,struct comedi_subdevice*,int,int ) ;
 int dio200_subdev_8254_set_gate_src (struct comedi_device*,struct comedi_subdevice*,int,int ) ;

__attribute__((used)) static int dio200_subdev_8254_init(struct comedi_device *dev,
       struct comedi_subdevice *s,
       unsigned int offset)
{
 const struct dio200_board *board = dev->board_ptr;
 struct comedi_8254 *i8254;
 unsigned int regshift;
 int chan;





 if (board->is_pcie) {
  offset <<= 3;
  regshift = 3;
 } else {
  regshift = 0;
 }

 if (dev->mmio) {
  i8254 = comedi_8254_mm_init(dev->mmio + offset,
         0, I8254_IO8, regshift);
 } else {
  i8254 = comedi_8254_init(dev->iobase + offset,
      0, I8254_IO8, regshift);
 }
 if (!i8254)
  return -ENOMEM;

 comedi_8254_subdevice_init(s, i8254);

 i8254->insn_config = dio200_subdev_8254_config;
 comedi_set_spriv_auto_free(s);


 if (board->has_clk_gat_sce) {
  for (chan = 0; chan < 3; chan++) {

   dio200_subdev_8254_set_gate_src(dev, s, chan, 0);

   dio200_subdev_8254_set_clock_src(dev, s, chan, 0);
  }
 }

 return 0;
}
