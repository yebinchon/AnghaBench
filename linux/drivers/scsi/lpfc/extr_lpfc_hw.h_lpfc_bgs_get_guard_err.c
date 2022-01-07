
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int BGS_GUARD_ERR_MASK ;
 int BGS_GUARD_ERR_SHIFT ;

__attribute__((used)) static inline uint32_t
lpfc_bgs_get_guard_err(uint32_t bgstat)
{
 return (bgstat & BGS_GUARD_ERR_MASK) >>
    BGS_GUARD_ERR_SHIFT;
}
