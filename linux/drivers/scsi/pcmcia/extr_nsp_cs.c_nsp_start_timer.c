
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct scsi_cmnd {TYPE_2__* device; } ;
struct TYPE_6__ {int TimerCount; } ;
typedef TYPE_3__ nsp_hw_data ;
struct TYPE_5__ {TYPE_1__* host; } ;
struct TYPE_4__ {unsigned int io_port; scalar_t__ hostdata; } ;


 int TIMERCOUNT ;
 int nsp_index_write (unsigned int,int ,int) ;

__attribute__((used)) static void nsp_start_timer(struct scsi_cmnd *SCpnt, int time)
{
 unsigned int base = SCpnt->device->host->io_port;
 nsp_hw_data *data = (nsp_hw_data *)SCpnt->device->host->hostdata;


 data->TimerCount = time;
 nsp_index_write(base, TIMERCOUNT, time);
}
