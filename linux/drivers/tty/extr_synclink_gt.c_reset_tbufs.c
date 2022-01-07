
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct slgt_info {unsigned int tbuf_count; TYPE_1__* tbufs; scalar_t__ tbuf_current; } ;
struct TYPE_2__ {scalar_t__ count; scalar_t__ status; } ;



__attribute__((used)) static void reset_tbufs(struct slgt_info *info)
{
 unsigned int i;
 info->tbuf_current = 0;
 for (i=0 ; i < info->tbuf_count ; i++) {
  info->tbufs[i].status = 0;
  info->tbufs[i].count = 0;
 }
}
