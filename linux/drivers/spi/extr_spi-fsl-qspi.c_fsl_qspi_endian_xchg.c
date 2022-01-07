
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fsl_qspi {int dummy; } ;


 int __swab32 (int ) ;
 scalar_t__ needs_swap_endian (struct fsl_qspi*) ;

__attribute__((used)) static inline u32 fsl_qspi_endian_xchg(struct fsl_qspi *q, u32 a)
{
 return needs_swap_endian(q) ? __swab32(a) : a;
}
