
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap2_mcspi {scalar_t__ slave_aborted; int master; } ;
struct completion {int dummy; } ;


 int EINTR ;
 scalar_t__ spi_controller_is_slave (int ) ;
 int wait_for_completion (struct completion*) ;
 scalar_t__ wait_for_completion_interruptible (struct completion*) ;

__attribute__((used)) static int mcspi_wait_for_completion(struct omap2_mcspi *mcspi,
         struct completion *x)
{
 if (spi_controller_is_slave(mcspi->master)) {
  if (wait_for_completion_interruptible(x) ||
      mcspi->slave_aborted)
   return -EINTR;
 } else {
  wait_for_completion(x);
 }

 return 0;
}
