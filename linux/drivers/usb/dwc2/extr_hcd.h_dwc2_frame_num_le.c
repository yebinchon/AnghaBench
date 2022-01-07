
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int HFNUM_MAX_FRNUM ;

__attribute__((used)) static inline int dwc2_frame_num_le(u16 frame1, u16 frame2)
{
 return ((frame2 - frame1) & HFNUM_MAX_FRNUM) <= (HFNUM_MAX_FRNUM >> 1);
}
