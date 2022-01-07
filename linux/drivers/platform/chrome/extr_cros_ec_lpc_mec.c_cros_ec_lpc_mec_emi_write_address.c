
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef enum cros_ec_lpc_mec_emi_access_mode { ____Placeholder_cros_ec_lpc_mec_emi_access_mode } cros_ec_lpc_mec_emi_access_mode ;


 int MEC_EMI_EC_ADDRESS_B0 (int ) ;
 int MEC_EMI_EC_ADDRESS_B1 (int ) ;
 int mec_emi_base ;
 int outb (int,int ) ;

__attribute__((used)) static void cros_ec_lpc_mec_emi_write_address(u16 addr,
   enum cros_ec_lpc_mec_emi_access_mode access_type)
{
 outb((addr & 0xfc) | access_type, MEC_EMI_EC_ADDRESS_B0(mec_emi_base));
 outb((addr >> 8) & 0x7f, MEC_EMI_EC_ADDRESS_B1(mec_emi_base));
}
