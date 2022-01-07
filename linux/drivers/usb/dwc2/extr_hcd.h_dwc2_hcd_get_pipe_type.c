
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dwc2_hcd_pipe_info {int pipe_type; } ;



__attribute__((used)) static inline u8 dwc2_hcd_get_pipe_type(struct dwc2_hcd_pipe_info *pipe)
{
 return pipe->pipe_type;
}
