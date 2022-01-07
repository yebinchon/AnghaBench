
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct c67x00_td {struct c67x00_td* data; int pipe; int td_addr; } ;
struct c67x00_hcd {TYPE_1__* sie; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ CY_TD_SIZE ;
 int c67x00_ll_read_mem_le16 (int ,int ,struct c67x00_td*,scalar_t__) ;
 scalar_t__ td_actual_bytes (struct c67x00_td*) ;
 int td_ly_base_addr (struct c67x00_td*) ;
 scalar_t__ usb_pipein (int ) ;

__attribute__((used)) static inline void
c67x00_parse_td(struct c67x00_hcd *c67x00, struct c67x00_td *td)
{
 c67x00_ll_read_mem_le16(c67x00->sie->dev,
    td->td_addr, td, CY_TD_SIZE);

 if (usb_pipein(td->pipe) && td_actual_bytes(td))
  c67x00_ll_read_mem_le16(c67x00->sie->dev, td_ly_base_addr(td),
     td->data, td_actual_bytes(td));
}
