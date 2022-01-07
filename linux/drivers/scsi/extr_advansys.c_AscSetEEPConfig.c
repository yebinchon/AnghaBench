
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ushort ;
typedef int PortAddr ;
typedef int ASCEEP_CONFIG ;


 int ASC_EEP_MAX_RETRY ;
 int AscSetEEPConfigOnce (int ,int *,int ) ;

__attribute__((used)) static int AscSetEEPConfig(PortAddr iop_base, ASCEEP_CONFIG *cfg_buf,
      ushort bus_type)
{
 int retry;
 int n_error;

 retry = 0;
 while (1) {
  if ((n_error = AscSetEEPConfigOnce(iop_base, cfg_buf,
         bus_type)) == 0) {
   break;
  }
  if (++retry > ASC_EEP_MAX_RETRY) {
   break;
  }
 }
 return n_error;
}
