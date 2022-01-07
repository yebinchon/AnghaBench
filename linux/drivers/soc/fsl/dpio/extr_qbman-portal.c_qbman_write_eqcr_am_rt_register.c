
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qbman_swp {int dummy; } ;


 scalar_t__ QBMAN_CINH_SWP_EQCR_AM_RT ;
 scalar_t__ QBMAN_CINH_SWP_EQCR_AM_RT2 ;
 int QMAN_RT_MODE ;
 int qbman_write_register (struct qbman_swp*,scalar_t__,int ) ;

__attribute__((used)) static inline void qbman_write_eqcr_am_rt_register(struct qbman_swp *p,
         u8 idx)
{
 if (idx < 16)
  qbman_write_register(p, QBMAN_CINH_SWP_EQCR_AM_RT + idx * 4,
         QMAN_RT_MODE);
 else
  qbman_write_register(p, QBMAN_CINH_SWP_EQCR_AM_RT2 +
         (idx - 16) * 4,
         QMAN_RT_MODE);
}
