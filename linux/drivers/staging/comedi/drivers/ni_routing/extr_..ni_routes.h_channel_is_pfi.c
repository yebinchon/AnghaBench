
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NI_PFI (int) ;

__attribute__((used)) static inline bool channel_is_pfi(int channel)
{
 return NI_PFI(0) <= channel && channel <= NI_PFI(-1);
}
