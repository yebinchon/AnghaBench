
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;
typedef int avmcard ;


 int c4_handle_interrupt (int *) ;

__attribute__((used)) static irqreturn_t c4_interrupt(int interrupt, void *devptr)
{
 avmcard *card = devptr;

 return c4_handle_interrupt(card);
}
