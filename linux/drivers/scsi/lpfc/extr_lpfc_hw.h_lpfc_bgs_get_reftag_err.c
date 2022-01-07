
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int BGS_REFTAG_ERR_MASK ;
 int BGS_REFTAG_ERR_SHIFT ;

__attribute__((used)) static inline uint32_t
lpfc_bgs_get_reftag_err(uint32_t bgstat)
{
 return (bgstat & BGS_REFTAG_ERR_MASK) >>
    BGS_REFTAG_ERR_SHIFT;
}
