
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_cmnd {TYPE_2__* device; } ;
struct TYPE_4__ {TYPE_1__* host; } ;
struct TYPE_3__ {unsigned int io_port; } ;


 int KERN_DEBUG ;
 int SCSIBUSMON ;
 unsigned char nsp_index_read (unsigned int,int ) ;
 int nsp_msg (int ,char*,char*) ;

__attribute__((used)) static int nsp_negate_signal(struct scsi_cmnd *SCpnt, unsigned char mask,
        char *str)
{
 unsigned int base = SCpnt->device->host->io_port;
 unsigned char reg;
 int time_out;



 time_out = 100;

 do {
  reg = nsp_index_read(base, SCSIBUSMON);
  if (reg == 0xff) {
   break;
  }
 } while ((--time_out != 0) && (reg & mask) != 0);

 if (time_out == 0) {
  nsp_msg(KERN_DEBUG, " %s signal off timeout", str);
 }

 return 0;
}
