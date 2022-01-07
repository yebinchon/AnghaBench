
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int phase; } ;
struct scsi_cmnd {TYPE_3__ SCp; TYPE_2__* device; } ;
struct TYPE_8__ {int SelectionTimeOut; } ;
typedef TYPE_4__ nsp_hw_data ;
struct TYPE_6__ {TYPE_1__* host; } ;
struct TYPE_5__ {unsigned int this_id; unsigned int io_port; scalar_t__ hostdata; } ;


 int ARBITSTATUS ;
 unsigned char ARBIT_FAIL ;
 int ARBIT_FLAG_CLEAR ;
 int ARBIT_GO ;
 unsigned char ARBIT_WIN ;
 int BIT (unsigned char) ;
 unsigned char BUSMON_BUS_FREE ;
 int FALSE ;
 int PH_ARBSTART ;
 int PH_SELSTART ;
 int SCSIBUSCTRL ;
 int SCSIBUSMON ;
 int SCSIDATALATCH ;
 int SCSI_ATN ;
 int SCSI_BSY ;
 int SCSI_DATAOUT_ENB ;
 int SCSI_SEL ;
 int SETARBIT ;
 int TRUE ;
 unsigned char nsp_index_read (unsigned int,int ) ;
 int nsp_index_write (unsigned int,int ,int) ;
 int nsp_start_timer (struct scsi_cmnd*,int) ;
 unsigned char scmd_id (struct scsi_cmnd*) ;
 int udelay (int) ;

__attribute__((used)) static int nsphw_start_selection(struct scsi_cmnd *SCpnt)
{
 unsigned int host_id = SCpnt->device->host->this_id;
 unsigned int base = SCpnt->device->host->io_port;
 unsigned char target = scmd_id(SCpnt);
 nsp_hw_data *data = (nsp_hw_data *)SCpnt->device->host->hostdata;
 int time_out;
 unsigned char phase, arbit;



 phase = nsp_index_read(base, SCSIBUSMON);
 if(phase != BUSMON_BUS_FREE) {

  return FALSE;
 }



 SCpnt->SCp.phase = PH_ARBSTART;
 nsp_index_write(base, SETARBIT, ARBIT_GO);

 time_out = 1000;
 do {

  arbit = nsp_index_read(base, ARBITSTATUS);

  udelay(1);
 } while((arbit & (ARBIT_WIN | ARBIT_FAIL)) == 0 &&
  (time_out-- != 0));

 if (!(arbit & ARBIT_WIN)) {

  nsp_index_write(base, SETARBIT, ARBIT_FLAG_CLEAR);
  return FALSE;
 }



 SCpnt->SCp.phase = PH_SELSTART;
 udelay(3);
 nsp_index_write(base, SCSIDATALATCH, BIT(host_id) | BIT(target));
 nsp_index_write(base, SCSIBUSCTRL, SCSI_SEL | SCSI_BSY | SCSI_ATN);
 udelay(2);
 nsp_index_write(base, SCSIBUSCTRL, SCSI_SEL | SCSI_BSY | SCSI_DATAOUT_ENB | SCSI_ATN);
 nsp_index_write(base, SETARBIT, ARBIT_FLAG_CLEAR);

 nsp_index_write(base, SCSIBUSCTRL, SCSI_SEL | SCSI_DATAOUT_ENB | SCSI_ATN);


 nsp_start_timer(SCpnt, 1000/51);
 data->SelectionTimeOut = 1;

 return TRUE;
}
