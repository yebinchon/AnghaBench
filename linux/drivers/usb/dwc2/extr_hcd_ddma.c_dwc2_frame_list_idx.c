
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int FRLISTEN_64_SIZE ;

__attribute__((used)) static u16 dwc2_frame_list_idx(u16 frame)
{
 return frame & (FRLISTEN_64_SIZE - 1);
}
