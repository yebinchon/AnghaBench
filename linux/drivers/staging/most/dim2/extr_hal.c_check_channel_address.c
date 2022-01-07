
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ CAT_CL_MASK ;

__attribute__((used)) static inline bool check_channel_address(u32 ch_address)
{
 return ch_address > 0 && (ch_address % 2) == 0 &&
        (ch_address / 2) <= (u32)CAT_CL_MASK;
}
