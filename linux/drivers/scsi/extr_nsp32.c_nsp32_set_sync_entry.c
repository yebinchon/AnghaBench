
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {unsigned char ackwidth; unsigned char offset; unsigned char sample_reg; int syncreg; } ;
typedef TYPE_2__ nsp32_target ;
struct TYPE_8__ {TYPE_1__* synct; } ;
typedef TYPE_3__ nsp32_hw_data ;
struct TYPE_6__ {unsigned char period_num; unsigned char ackwidth; unsigned char sample_rate; } ;


 int NSP32_DEBUG_SYNC ;
 unsigned char SAMPLING_ENABLE ;
 int TO_SYNCREG (unsigned char,unsigned char) ;
 int nsp32_dbg (int ,char*) ;

__attribute__((used)) static void nsp32_set_sync_entry(nsp32_hw_data *data,
     nsp32_target *target,
     int entry,
     unsigned char offset)
{
 unsigned char period, ackwidth, sample_rate;

 period = data->synct[entry].period_num;
 ackwidth = data->synct[entry].ackwidth;
 sample_rate = data->synct[entry].sample_rate;

 target->syncreg = TO_SYNCREG(period, offset);
 target->ackwidth = ackwidth;
 target->offset = offset;
 target->sample_reg = sample_rate | SAMPLING_ENABLE;

 nsp32_dbg(NSP32_DEBUG_SYNC, "set sync");
}
