
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dwc2_hcd_pipe_info {int maxp; } ;



__attribute__((used)) static inline u16 dwc2_hcd_get_maxp(struct dwc2_hcd_pipe_info *pipe)
{
 return pipe->maxp;
}
