
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int speed_hz; } ;
struct fsl_lpspi_data {TYPE_1__ config; } ;


 int MSEC_PER_SEC ;
 int msecs_to_jiffies (int) ;

__attribute__((used)) static int fsl_lpspi_calculate_timeout(struct fsl_lpspi_data *fsl_lpspi,
           int size)
{
 unsigned long timeout = 0;


 timeout = (8 + 4) * size / fsl_lpspi->config.speed_hz;


 timeout += 1;


 return msecs_to_jiffies(2 * timeout * MSEC_PER_SEC);
}
