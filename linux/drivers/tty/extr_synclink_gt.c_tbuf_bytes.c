
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct slgt_info {unsigned int tbuf_current; unsigned int tbuf_count; scalar_t__ tx_active; TYPE_1__* tbufs; } ;
struct TYPE_2__ {unsigned int buf_count; } ;


 unsigned int BIT0 ;
 int TDCSR ;
 unsigned int desc_count (TYPE_1__) ;
 unsigned int rd_reg32 (struct slgt_info*,int ) ;

__attribute__((used)) static unsigned int tbuf_bytes(struct slgt_info *info)
{
 unsigned int total_count = 0;
 unsigned int i = info->tbuf_current;
 unsigned int reg_value;
 unsigned int count;
 unsigned int active_buf_count = 0;
 do {
  count = desc_count(info->tbufs[i]);
  if (count)
   total_count += count;
  else if (!total_count)
   active_buf_count = info->tbufs[i].buf_count;
  if (++i == info->tbuf_count)
   i = 0;
 } while (i != info->tbuf_current);


 reg_value = rd_reg32(info, TDCSR);


 if (reg_value & BIT0)
  total_count += active_buf_count;


 total_count += (reg_value >> 8) & 0xff;


 if (info->tx_active)
  total_count++;

 return total_count;
}
