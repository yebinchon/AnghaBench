
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dwc2_hcd_pipe_info {scalar_t__ pipe_dir; } ;


 scalar_t__ USB_DIR_IN ;

__attribute__((used)) static inline u8 dwc2_hcd_is_pipe_in(struct dwc2_hcd_pipe_info *pipe)
{
 return pipe->pipe_dir == USB_DIR_IN;
}
