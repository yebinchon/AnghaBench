
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slgt_info {unsigned int tbuf_current; int tbuf_count; unsigned int tbuf_start; int * tbufs; } ;


 int desc_count (int ) ;

__attribute__((used)) static bool unsent_tbufs(struct slgt_info *info)
{
 unsigned int i = info->tbuf_current;
 bool rc = 0;






 do {
  if (i)
   i--;
  else
   i = info->tbuf_count - 1;
  if (!desc_count(info->tbufs[i]))
   break;
  info->tbuf_start = i;
  rc = 1;
 } while (i != info->tbuf_current);

 return rc;
}
