
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmuio_board {int num_asics; } ;
struct comedi_device {struct pcmuio_board* board_ptr; } ;


 int PCMUIO_PAGE_ENAB ;
 int PCMUIO_PAGE_INT_ID ;
 int PCMUIO_PAGE_POL ;
 int pcmuio_write (struct comedi_device*,int ,int,int ,int) ;

__attribute__((used)) static void pcmuio_reset(struct comedi_device *dev)
{
 const struct pcmuio_board *board = dev->board_ptr;
 int asic;

 for (asic = 0; asic < board->num_asics; ++asic) {

  pcmuio_write(dev, 0, asic, 0, 0);
  pcmuio_write(dev, 0, asic, 0, 3);


  pcmuio_write(dev, 0, asic, PCMUIO_PAGE_POL, 0);
  pcmuio_write(dev, 0, asic, PCMUIO_PAGE_ENAB, 0);
  pcmuio_write(dev, 0, asic, PCMUIO_PAGE_INT_ID, 0);
 }
}
