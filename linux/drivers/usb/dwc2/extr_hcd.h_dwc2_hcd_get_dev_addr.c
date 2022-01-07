
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dwc2_hcd_pipe_info {int dev_addr; } ;



__attribute__((used)) static inline u8 dwc2_hcd_get_dev_addr(struct dwc2_hcd_pipe_info *pipe)
{
 return pipe->dev_addr;
}
