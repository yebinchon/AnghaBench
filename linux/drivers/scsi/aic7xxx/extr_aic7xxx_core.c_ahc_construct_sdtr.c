
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct ahc_softc {int msgout_len; scalar_t__ msgout_index; scalar_t__ msgout_buf; } ;
struct ahc_devinfo {int lun; int target; int channel; } ;


 scalar_t__ AHC_ASYNC_XFER_PERIOD ;
 int ahc_name (struct ahc_softc*) ;
 scalar_t__ bootverbose ;
 int printk (char*,int ,int ,int ,int ,scalar_t__,scalar_t__) ;
 scalar_t__ spi_populate_sync_msg (scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
ahc_construct_sdtr(struct ahc_softc *ahc, struct ahc_devinfo *devinfo,
     u_int period, u_int offset)
{
 if (offset == 0)
  period = AHC_ASYNC_XFER_PERIOD;
 ahc->msgout_index += spi_populate_sync_msg(
   ahc->msgout_buf + ahc->msgout_index, period, offset);
 ahc->msgout_len += 5;
 if (bootverbose) {
  printk("(%s:%c:%d:%d): Sending SDTR period %x, offset %x\n",
         ahc_name(ahc), devinfo->channel, devinfo->target,
         devinfo->lun, period, offset);
 }
}
