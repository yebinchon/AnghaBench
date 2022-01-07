
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int BGS_BIDIR_BG_PROF_MASK ;
 int BGS_BIDIR_BG_PROF_SHIFT ;

__attribute__((used)) static inline uint32_t
lpfc_bgs_get_bidir_bg_prof(uint32_t bgstat)
{
 return (bgstat & BGS_BIDIR_BG_PROF_MASK) >>
    BGS_BIDIR_BG_PROF_SHIFT;
}
