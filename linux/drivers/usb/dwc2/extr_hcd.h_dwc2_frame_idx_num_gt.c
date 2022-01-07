
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int FRLISTEN_64_SIZE ;

__attribute__((used)) static inline bool dwc2_frame_idx_num_gt(u16 fr_idx1, u16 fr_idx2)
{
 u16 diff = fr_idx1 - fr_idx2;
 u16 sign = diff & (FRLISTEN_64_SIZE >> 1);

 return diff && !sign;
}
