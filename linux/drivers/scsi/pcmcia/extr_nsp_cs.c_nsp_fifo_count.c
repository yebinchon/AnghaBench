
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_cmnd {TYPE_2__* device; } ;
struct TYPE_4__ {TYPE_1__* host; } ;
struct TYPE_3__ {unsigned int io_port; } ;


 int ACK_COUNTER ;
 int POINTERCLR ;
 int POINTER_CLEAR ;
 int TRANSFERCOUNT ;
 unsigned int nsp_index_read (unsigned int,int ) ;
 int nsp_index_write (unsigned int,int ,int) ;

__attribute__((used)) static int nsp_fifo_count(struct scsi_cmnd *SCpnt)
{
 unsigned int base = SCpnt->device->host->io_port;
 unsigned int count;
 unsigned int l, m, h, dummy;

 nsp_index_write(base, POINTERCLR, POINTER_CLEAR | ACK_COUNTER);

 l = nsp_index_read(base, TRANSFERCOUNT);
 m = nsp_index_read(base, TRANSFERCOUNT);
 h = nsp_index_read(base, TRANSFERCOUNT);
 dummy = nsp_index_read(base, TRANSFERCOUNT);

 count = (h << 16) | (m << 8) | (l << 0);



 return count;
}
