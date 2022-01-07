
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ efi_status_t ;
typedef int efi_guid_t ;
struct TYPE_2__ {scalar_t__ (* get_variable ) (int ,int *,int *,unsigned long*,int *) ;} ;


 int EFI_GLOBAL_VARIABLE_GUID ;
 scalar_t__ EFI_SUCCESS ;
 int ETH_ALEN ;
 TYPE_1__ efi ;
 int ether_addr_copy (int *,int *) ;
 int mlxbf_tmfifo_efi_name ;
 int * mlxbf_tmfifo_net_default_mac ;
 scalar_t__ stub1 (int ,int *,int *,unsigned long*,int *) ;

__attribute__((used)) static void mlxbf_tmfifo_get_cfg_mac(u8 *mac)
{
 efi_guid_t guid = EFI_GLOBAL_VARIABLE_GUID;
 unsigned long size = ETH_ALEN;
 u8 buf[ETH_ALEN];
 efi_status_t rc;

 rc = efi.get_variable(mlxbf_tmfifo_efi_name, &guid, ((void*)0), &size, buf);
 if (rc == EFI_SUCCESS && size == ETH_ALEN)
  ether_addr_copy(mac, buf);
 else
  ether_addr_copy(mac, mlxbf_tmfifo_net_default_mac);
}
