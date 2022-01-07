
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int BGS_HI_WATER_MARK_PRESENT_MASK ;
 int BGS_HI_WATER_MARK_PRESENT_SHIFT ;

__attribute__((used)) static inline uint32_t
lpfc_bgs_get_hi_water_mark_present(uint32_t bgstat)
{
 return (bgstat & BGS_HI_WATER_MARK_PRESENT_MASK) >>
    BGS_HI_WATER_MARK_PRESENT_SHIFT;
}
