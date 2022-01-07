
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_660x_private {int ** ring; int mite; } ;
struct ni_660x_board {unsigned int n_chips; } ;
struct comedi_device {struct ni_660x_private* private; struct ni_660x_board* board_ptr; } ;


 int ENOMEM ;
 unsigned int NI660X_COUNTERS_PER_CHIP ;
 int mite_alloc_ring (int ) ;

__attribute__((used)) static int ni_660x_alloc_mite_rings(struct comedi_device *dev)
{
 const struct ni_660x_board *board = dev->board_ptr;
 struct ni_660x_private *devpriv = dev->private;
 unsigned int i;
 unsigned int j;

 for (i = 0; i < board->n_chips; ++i) {
  for (j = 0; j < NI660X_COUNTERS_PER_CHIP; ++j) {
   devpriv->ring[i][j] = mite_alloc_ring(devpriv->mite);
   if (!devpriv->ring[i][j])
    return -ENOMEM;
  }
 }
 return 0;
}
