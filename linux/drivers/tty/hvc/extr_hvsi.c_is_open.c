
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hvsi_struct {scalar_t__ state; } ;


 scalar_t__ HVSI_OPEN ;
 scalar_t__ HVSI_WAIT_FOR_MCTRL_RESPONSE ;

__attribute__((used)) static inline int is_open(struct hvsi_struct *hp)
{

 return (hp->state == HVSI_OPEN)
   || (hp->state == HVSI_WAIT_FOR_MCTRL_RESPONSE);
}
