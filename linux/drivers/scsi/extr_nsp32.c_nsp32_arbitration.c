
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int result; } ;


 int ARBIT_CLEAR ;
 unsigned char ARBIT_FAIL ;
 int ARBIT_STATUS ;
 int ARBIT_TIMEOUT_TIME ;
 unsigned char ARBIT_WIN ;
 int DID_BUS_BUSY ;
 int DID_NO_CONNECT ;
 int DID_OK ;
 int EXT_PORT ;
 int FALSE ;
 int LED_ON ;
 int NSP32_DEBUG_AUTOSCSI ;
 int SET_ARBIT ;
 int TRUE ;
 int nsp32_dbg (int ,char*,...) ;
 int nsp32_index_write1 (unsigned int,int ,int ) ;
 unsigned char nsp32_read1 (unsigned int,int ) ;
 int nsp32_write1 (unsigned int,int ,int ) ;

__attribute__((used)) static int nsp32_arbitration(struct scsi_cmnd *SCpnt, unsigned int base)
{
 unsigned char arbit;
 int status = TRUE;
 int time = 0;

 do {
  arbit = nsp32_read1(base, ARBIT_STATUS);
  time++;
 } while ((arbit & (ARBIT_WIN | ARBIT_FAIL)) == 0 &&
   (time <= ARBIT_TIMEOUT_TIME));

 nsp32_dbg(NSP32_DEBUG_AUTOSCSI,
    "arbit: 0x%x, delay time: %d", arbit, time);

 if (arbit & ARBIT_WIN) {

  SCpnt->result = DID_OK << 16;
  nsp32_index_write1(base, EXT_PORT, LED_ON);
 } else if (arbit & ARBIT_FAIL) {

  SCpnt->result = DID_BUS_BUSY << 16;
  status = FALSE;
 } else {




  nsp32_dbg(NSP32_DEBUG_AUTOSCSI, "arbit timeout");
  SCpnt->result = DID_NO_CONNECT << 16;
  status = FALSE;
        }




 nsp32_write1(base, SET_ARBIT, ARBIT_CLEAR);

 return status;
}
