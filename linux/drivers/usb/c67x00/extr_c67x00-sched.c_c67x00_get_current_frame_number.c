
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct c67x00_hcd {int sie; } ;


 int HOST_FRAME_MASK ;
 int c67x00_ll_husb_get_frame (int ) ;

__attribute__((used)) static inline u16 c67x00_get_current_frame_number(struct c67x00_hcd *c67x00)
{
 return c67x00_ll_husb_get_frame(c67x00->sie) & HOST_FRAME_MASK;
}
