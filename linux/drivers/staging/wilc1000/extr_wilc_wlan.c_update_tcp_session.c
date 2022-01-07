
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tcp_ack_filter {TYPE_1__* ack_session_info; } ;
struct wilc_vif {struct tcp_ack_filter ack_filter; } ;
struct TYPE_2__ {int bigger_ack_num; } ;


 int MAX_TCP_SESSION ;

__attribute__((used)) static inline void update_tcp_session(struct wilc_vif *vif, u32 index, u32 ack)
{
 struct tcp_ack_filter *f = &vif->ack_filter;

 if (index < 2 * MAX_TCP_SESSION &&
     ack > f->ack_session_info[index].bigger_ack_num)
  f->ack_session_info[index].bigger_ack_num = ack;
}
