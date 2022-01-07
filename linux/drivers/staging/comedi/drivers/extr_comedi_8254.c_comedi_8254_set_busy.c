
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_8254 {int* busy; } ;



void comedi_8254_set_busy(struct comedi_8254 *i8254,
     unsigned int counter, bool busy)
{
 if (counter < 3)
  i8254->busy[counter] = busy;
}
