
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int PNP_DS ;
 int PNP_FUNCTION_NOT_SUPPORTED ;
 int PNP_GET_STATIC_ALLOCED_RES_INFO ;
 int PNP_TS1 ;
 int call_pnp_bios (int ,int ,int ,int ,int ,int ,int ,int ,char*,int,int *,int ) ;
 int pnp_bios_present () ;

__attribute__((used)) static int __pnp_bios_get_stat_res(char *info)
{
 u16 status;

 if (!pnp_bios_present())
  return PNP_FUNCTION_NOT_SUPPORTED;
 status = call_pnp_bios(PNP_GET_STATIC_ALLOCED_RES_INFO, 0, PNP_TS1,
          PNP_DS, 0, 0, 0, 0, info, 65536, ((void*)0), 0);
 return status;
}
