
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {struct cb_pcidas_board* board_ptr; } ;
struct cb_pcidas_board {scalar_t__ has_ad8402; } ;


 int cb_pcidas_calib_write (struct comedi_device*,unsigned int,int,int) ;

__attribute__((used)) static void cb_pcidas_trimpot_write(struct comedi_device *dev,
        unsigned int chan, unsigned int val)
{
 const struct cb_pcidas_board *board = dev->board_ptr;

 if (board->has_ad8402) {

  cb_pcidas_calib_write(dev, (chan << 8) | val, 10, 1);
 } else {

  cb_pcidas_calib_write(dev, val, 7, 1);
 }
}
