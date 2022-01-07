
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcidas64_private {unsigned int calibration_source; } ;
struct pcidas64_board {scalar_t__ layout; } ;
struct comedi_device {int class_dev; struct pcidas64_private* private; struct pcidas64_board* board_ptr; } ;


 int EINVAL ;
 scalar_t__ LAYOUT_60XX ;
 int dev_dbg (int ,char*,unsigned int) ;

__attribute__((used)) static int ai_config_calibration_source(struct comedi_device *dev,
     unsigned int *data)
{
 const struct pcidas64_board *board = dev->board_ptr;
 struct pcidas64_private *devpriv = dev->private;
 unsigned int source = data[1];
 int num_calibration_sources;

 if (board->layout == LAYOUT_60XX)
  num_calibration_sources = 16;
 else
  num_calibration_sources = 8;
 if (source >= num_calibration_sources) {
  dev_dbg(dev->class_dev, "invalid calibration source: %i\n",
   source);
  return -EINVAL;
 }

 devpriv->calibration_source = source;

 return 2;
}
