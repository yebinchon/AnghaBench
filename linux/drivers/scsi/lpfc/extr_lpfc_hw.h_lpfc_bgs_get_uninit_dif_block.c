
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int BGS_UNINIT_DIF_BLOCK_MASK ;
 int BGS_UNINIT_DIF_BLOCK_SHIFT ;

__attribute__((used)) static inline uint32_t
lpfc_bgs_get_uninit_dif_block(uint32_t bgstat)
{
 return (bgstat & BGS_UNINIT_DIF_BLOCK_MASK) >>
    BGS_UNINIT_DIF_BLOCK_SHIFT;
}
