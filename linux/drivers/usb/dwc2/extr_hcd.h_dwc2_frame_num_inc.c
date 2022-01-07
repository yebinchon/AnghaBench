
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int HFNUM_MAX_FRNUM ;

__attribute__((used)) static inline u16 dwc2_frame_num_inc(u16 frame, u16 inc)
{
 return (frame + inc) & HFNUM_MAX_FRNUM;
}
