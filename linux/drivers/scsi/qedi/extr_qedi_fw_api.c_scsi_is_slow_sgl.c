
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;


 scalar_t__ SCSI_NUM_SGES_SLOW_SGL_THR ;

__attribute__((used)) static bool scsi_is_slow_sgl(u16 num_sges, bool small_mid_sge)
{
 return (num_sges > SCSI_NUM_SGES_SLOW_SGL_THR && small_mid_sge);
}
