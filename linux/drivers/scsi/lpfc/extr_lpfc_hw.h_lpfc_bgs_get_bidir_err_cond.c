
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int BGS_BIDIR_ERR_COND_FLAGS_MASK ;
 int BGS_BIDIR_ERR_COND_SHIFT ;

__attribute__((used)) static inline uint32_t
lpfc_bgs_get_bidir_err_cond(uint32_t bgstat)
{
 return (bgstat & BGS_BIDIR_ERR_COND_FLAGS_MASK) >>
    BGS_BIDIR_ERR_COND_SHIFT;
}
