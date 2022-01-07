
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slgt_info {unsigned int tbuf_current; unsigned int tbuf_count; int * tbufs; } ;


 int BIT0 ;
 int TDCSR ;
 scalar_t__ desc_count (int ) ;
 int rd_reg32 (struct slgt_info*,int ) ;

__attribute__((used)) static unsigned int free_tbuf_count(struct slgt_info *info)
{
 unsigned int count = 0;
 unsigned int i = info->tbuf_current;

 do
 {
  if (desc_count(info->tbufs[i]))
   break;
  ++count;
  if (++i == info->tbuf_count)
   i=0;
 } while (i != info->tbuf_current);


 if (count && (rd_reg32(info, TDCSR) & BIT0))
  --count;

 return count;
}
