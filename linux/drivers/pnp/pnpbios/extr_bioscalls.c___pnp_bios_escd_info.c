
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct escd_info_struc {int dummy; } ;


 int ESCD_FUNCTION_NOT_SUPPORTED ;
 int PNP_DS ;
 int PNP_GET_ESCD_INFO ;
 int PNP_TS1 ;
 int call_pnp_bios (int ,int ,int ,int,int ,int,int ,int ,struct escd_info_struc*,int,int *,int ) ;
 int pnp_bios_present () ;

__attribute__((used)) static int __pnp_bios_escd_info(struct escd_info_struc *data)
{
 u16 status;

 if (!pnp_bios_present())
  return ESCD_FUNCTION_NOT_SUPPORTED;
 status = call_pnp_bios(PNP_GET_ESCD_INFO, 0, PNP_TS1, 2, PNP_TS1, 4,
          PNP_TS1, PNP_DS, data,
          sizeof(struct escd_info_struc), ((void*)0), 0);
 return status;
}
