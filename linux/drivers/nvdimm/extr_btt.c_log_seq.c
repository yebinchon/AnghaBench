
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct log_group {TYPE_1__* ent; } ;
struct TYPE_2__ {int seq; } ;


 int le32_to_cpu (int ) ;

__attribute__((used)) static u32 log_seq(struct log_group *log, int log_idx)
{
 return le32_to_cpu(log->ent[log_idx].seq);
}
