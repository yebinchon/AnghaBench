
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct {unsigned int counter_index; } ;


 int GI_RESET (unsigned int) ;
 int NITIO_RESET_REG (unsigned int) ;
 int ni_tio_write (struct ni_gpct*,int ,int ) ;

__attribute__((used)) static void ni_tio_reset_count_and_disarm(struct ni_gpct *counter)
{
 unsigned int cidx = counter->counter_index;

 ni_tio_write(counter, GI_RESET(cidx), NITIO_RESET_REG(cidx));
}
