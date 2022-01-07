
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct uctrl_txn {int outbits; int* outbuf; int * inbuf; scalar_t__ inbits; int opcode; } ;
struct TYPE_2__ {int external_status; } ;
struct uctrl_driver {TYPE_1__ status; } ;


 int READ_EXTERNAL_STATUS ;
 int dprintk (char*) ;
 int uctrl_do_txn (struct uctrl_driver*,struct uctrl_txn*) ;
 int * uctrl_extstatus ;

__attribute__((used)) static void uctrl_get_external_status(struct uctrl_driver *driver)
{
 struct uctrl_txn txn;
 u8 outbits[2];
 int i, v;

 txn.opcode = READ_EXTERNAL_STATUS;
 txn.inbits = 0;
 txn.outbits = 2;
 txn.inbuf = ((void*)0);
 txn.outbuf = outbits;

 uctrl_do_txn(driver, &txn);

 dprintk(("bytes %x %x\n", (outbits[0] & 0xff), (outbits[1] & 0xff)));
 driver->status.external_status =
  ((outbits[0] * 256) + (outbits[1]));
 dprintk(("ex is %x\n", driver->status.external_status));
 v = driver->status.external_status;
 for (i = 0; v != 0; i++, v >>= 1) {
  if (v & 1) {
   dprintk(("%s%s", " ", uctrl_extstatus[i]));
  }
 }
 dprintk(("\n"));

}
