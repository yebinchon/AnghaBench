
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct c67x00_td {int pid_ep; int td_addr; struct c67x00_td* data; } ;
struct c67x00_hcd {TYPE_1__* sie; } ;
struct TYPE_2__ {int dev; } ;


 int CY_TD_SIZE ;
 int TD_PIDEPMASK_PID ;
 int TD_PID_IN ;
 int c67x00_ll_write_mem_le16 (int ,int ,struct c67x00_td*,int) ;
 int td_length (struct c67x00_td*) ;
 int td_ly_base_addr (struct c67x00_td*) ;

__attribute__((used)) static void c67x00_send_td(struct c67x00_hcd *c67x00, struct c67x00_td *td)
{
 int len = td_length(td);

 if (len && ((td->pid_ep & TD_PIDEPMASK_PID) != TD_PID_IN))
  c67x00_ll_write_mem_le16(c67x00->sie->dev, td_ly_base_addr(td),
      td->data, len);

 c67x00_ll_write_mem_le16(c67x00->sie->dev,
     td->td_addr, td, CY_TD_SIZE);
}
