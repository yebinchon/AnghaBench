
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {struct a2150_private* private; struct a2150_board* board_ptr; } ;
struct a2150_private {int config_bits; } ;
struct a2150_board {int* clock; int num_clocks; } ;


 int CLOCK_DIVISOR_BITS (int) ;
 int CLOCK_MASK ;
 int CLOCK_SELECT_BITS (int) ;

 unsigned int CMDF_ROUND_MASK ;



__attribute__((used)) static int a2150_get_timing(struct comedi_device *dev, unsigned int *period,
       unsigned int flags)
{
 const struct a2150_board *board = dev->board_ptr;
 struct a2150_private *devpriv = dev->private;
 int lub, glb, temp;
 int lub_divisor_shift, lub_index, glb_divisor_shift, glb_index;
 int i, j;


 lub_divisor_shift = 3;
 lub_index = 0;
 lub = board->clock[lub_index] * (1 << lub_divisor_shift);
 glb_divisor_shift = 0;
 glb_index = board->num_clocks - 1;
 glb = board->clock[glb_index] * (1 << glb_divisor_shift);


 if (*period < glb)
  *period = glb;
 if (*period > lub)
  *period = lub;


 for (i = 0; i < 4; i++) {

  for (j = 0; j < board->num_clocks; j++) {

   temp = board->clock[j] * (1 << i);

   if (temp < lub && temp >= *period) {
    lub_divisor_shift = i;
    lub_index = j;
    lub = temp;
   }
   if (temp > glb && temp <= *period) {
    glb_divisor_shift = i;
    glb_index = j;
    glb = temp;
   }
  }
 }
 switch (flags & CMDF_ROUND_MASK) {
 case 129:
 default:

  if (lub - *period < *period - glb)
   *period = lub;
  else
   *period = glb;
  break;
 case 128:
  *period = lub;
  break;
 case 130:
  *period = glb;
  break;
 }


 devpriv->config_bits &= ~CLOCK_MASK;
 if (*period == lub) {
  devpriv->config_bits |=
      CLOCK_SELECT_BITS(lub_index) |
      CLOCK_DIVISOR_BITS(lub_divisor_shift);
 } else {
  devpriv->config_bits |=
      CLOCK_SELECT_BITS(glb_index) |
      CLOCK_DIVISOR_BITS(glb_divisor_shift);
 }

 return 0;
}
