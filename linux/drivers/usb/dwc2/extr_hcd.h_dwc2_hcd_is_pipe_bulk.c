
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dwc2_hcd_pipe_info {scalar_t__ pipe_type; } ;


 scalar_t__ USB_ENDPOINT_XFER_BULK ;

__attribute__((used)) static inline u8 dwc2_hcd_is_pipe_bulk(struct dwc2_hcd_pipe_info *pipe)
{
 return pipe->pipe_type == USB_ENDPOINT_XFER_BULK;
}
