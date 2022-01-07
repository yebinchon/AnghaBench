
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct Scsi_Host {int host_no; } ;
struct NCR5380_hostdata {int read_overruns; int dma_len; TYPE_2__* connected; } ;
struct TYPE_3__ {unsigned char phase; int this_residual; int ptr; } ;
struct TYPE_4__ {TYPE_1__ SCp; int request; } ;


 unsigned char BASR_ACK ;
 unsigned char BASR_PHASE_MATCH ;
 int BUG () ;
 int BUS_AND_STATUS_REG ;
 int ICR_BASE ;
 int INITIATOR_COMMAND_REG ;
 int INPUT_DATA_REG ;
 int MODE_REG ;
 int MR_BASE ;
 int NCR5380_dma_residual (struct NCR5380_hostdata*) ;
 unsigned char NCR5380_read (int ) ;
 int NCR5380_transfer_pio (struct Scsi_Host*,unsigned char*,int*,unsigned char**) ;
 int NCR5380_write (int ,int ) ;
 int NDEBUG_DMA ;
 unsigned char PHASE_MASK ;
 int RESET_PARITY_INTERRUPT_REG ;
 unsigned char SR_IO ;
 int STATUS_REG ;
 int dsprintk (int ,struct Scsi_Host*,char*,...) ;
 int pr_err (char*,int ,...) ;
 int rq_data_dir (int ) ;
 struct NCR5380_hostdata* shost_priv (struct Scsi_Host*) ;
 scalar_t__ sun3scsi_dma_finish (int ) ;
 int udelay (int) ;

__attribute__((used)) static void NCR5380_dma_complete(struct Scsi_Host *instance)
{
 struct NCR5380_hostdata *hostdata = shost_priv(instance);
 int transferred;
 unsigned char **data;
 int *count;
 int saved_data = 0, overrun = 0;
 unsigned char p;

 if (hostdata->read_overruns) {
  p = hostdata->connected->SCp.phase;
  if (p & SR_IO) {
   udelay(10);
   if ((NCR5380_read(BUS_AND_STATUS_REG) &
        (BASR_PHASE_MATCH | BASR_ACK)) ==
       (BASR_PHASE_MATCH | BASR_ACK)) {
    saved_data = NCR5380_read(INPUT_DATA_REG);
    overrun = 1;
    dsprintk(NDEBUG_DMA, instance, "read overrun handled\n");
   }
  }
 }
 NCR5380_write(MODE_REG, MR_BASE);
 NCR5380_write(INITIATOR_COMMAND_REG, ICR_BASE);
 NCR5380_read(RESET_PARITY_INTERRUPT_REG);

 transferred = hostdata->dma_len - NCR5380_dma_residual(hostdata);
 hostdata->dma_len = 0;

 data = (unsigned char **)&hostdata->connected->SCp.ptr;
 count = &hostdata->connected->SCp.this_residual;
 *data += transferred;
 *count -= transferred;

 if (hostdata->read_overruns) {
  int cnt, toPIO;

  if ((NCR5380_read(STATUS_REG) & PHASE_MASK) == p && (p & SR_IO)) {
   cnt = toPIO = hostdata->read_overruns;
   if (overrun) {
    dsprintk(NDEBUG_DMA, instance,
             "Got an input overrun, using saved byte\n");
    *(*data)++ = saved_data;
    (*count)--;
    cnt--;
    toPIO--;
   }
   if (toPIO > 0) {
    dsprintk(NDEBUG_DMA, instance,
             "Doing %d byte PIO to 0x%p\n", cnt, *data);
    NCR5380_transfer_pio(instance, &p, &cnt, data);
    *count -= toPIO - cnt;
   }
  }
 }
}
