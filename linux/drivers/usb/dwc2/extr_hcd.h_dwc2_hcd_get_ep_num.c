
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dwc2_hcd_pipe_info {int ep_num; } ;



__attribute__((used)) static inline u8 dwc2_hcd_get_ep_num(struct dwc2_hcd_pipe_info *pipe)
{
 return pipe->ep_num;
}
