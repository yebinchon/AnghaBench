
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfi_ioc_attr_s {int * uuid; int mfg_year; int mfg_month; int mfg_day; int asic_rev; int pcie_lanes_orig; int pcie_lanes; int pcie_gen; int pwwn; int adapter_prop; int card_type; int vpd; } ;
struct bfa_mfg_vpd_s {int dummy; } ;
struct bfa_ioc_s {struct bfi_ioc_attr_s* attr; } ;
struct bfa_adapter_attr_s {int nports; int prototype; int trunk_capable; int * uuid; int mfg_year; int mfg_month; int mfg_day; int is_mezz; int cna_capable; int hw_ver; int asic_rev; int pcie_lanes_orig; int pcie_lanes; int pcie_gen; int mac; int pwwn; int card_type; int model_descr; int model; int max_speed; int vpd; int manufacturer; int optrom_ver; int fw_ver; int serial_num; } ;


 int BFA_ADAPTER_UUID_LEN ;
 scalar_t__ BFI_ADAPTER_IS_SPECIAL (int ) ;
 int bfa_ioc_get_adapter_fw_ver (struct bfa_ioc_s*,int ) ;
 int bfa_ioc_get_adapter_manufacturer (struct bfa_ioc_s*,int ) ;
 int bfa_ioc_get_adapter_model (struct bfa_ioc_s*,int ) ;
 int bfa_ioc_get_adapter_optrom_ver (struct bfa_ioc_s*,int ) ;
 int bfa_ioc_get_adapter_serial_num (struct bfa_ioc_s*,int ) ;
 int bfa_ioc_get_mac (struct bfa_ioc_s*) ;
 int bfa_ioc_get_nports (struct bfa_ioc_s*) ;
 int bfa_ioc_get_pci_chip_rev (struct bfa_ioc_s*,int ) ;
 int bfa_ioc_is_cna (struct bfa_ioc_s*) ;
 int bfa_ioc_speed_sup (struct bfa_ioc_s*) ;
 int bfa_mfg_is_mezz (int ) ;
 int memcpy (int *,int *,int) ;

void
bfa_ioc_get_adapter_attr(struct bfa_ioc_s *ioc,
    struct bfa_adapter_attr_s *ad_attr)
{
 struct bfi_ioc_attr_s *ioc_attr;

 ioc_attr = ioc->attr;

 bfa_ioc_get_adapter_serial_num(ioc, ad_attr->serial_num);
 bfa_ioc_get_adapter_fw_ver(ioc, ad_attr->fw_ver);
 bfa_ioc_get_adapter_optrom_ver(ioc, ad_attr->optrom_ver);
 bfa_ioc_get_adapter_manufacturer(ioc, ad_attr->manufacturer);
 memcpy(&ad_attr->vpd, &ioc_attr->vpd,
        sizeof(struct bfa_mfg_vpd_s));

 ad_attr->nports = bfa_ioc_get_nports(ioc);
 ad_attr->max_speed = bfa_ioc_speed_sup(ioc);

 bfa_ioc_get_adapter_model(ioc, ad_attr->model);

 bfa_ioc_get_adapter_model(ioc, ad_attr->model_descr);

 ad_attr->card_type = ioc_attr->card_type;
 ad_attr->is_mezz = bfa_mfg_is_mezz(ioc_attr->card_type);

 if (BFI_ADAPTER_IS_SPECIAL(ioc_attr->adapter_prop))
  ad_attr->prototype = 1;
 else
  ad_attr->prototype = 0;

 ad_attr->pwwn = ioc->attr->pwwn;
 ad_attr->mac = bfa_ioc_get_mac(ioc);

 ad_attr->pcie_gen = ioc_attr->pcie_gen;
 ad_attr->pcie_lanes = ioc_attr->pcie_lanes;
 ad_attr->pcie_lanes_orig = ioc_attr->pcie_lanes_orig;
 ad_attr->asic_rev = ioc_attr->asic_rev;

 bfa_ioc_get_pci_chip_rev(ioc, ad_attr->hw_ver);

 ad_attr->cna_capable = bfa_ioc_is_cna(ioc);
 ad_attr->trunk_capable = (ad_attr->nports > 1) &&
      !bfa_ioc_is_cna(ioc) && !ad_attr->is_mezz;
 ad_attr->mfg_day = ioc_attr->mfg_day;
 ad_attr->mfg_month = ioc_attr->mfg_month;
 ad_attr->mfg_year = ioc_attr->mfg_year;
 memcpy(ad_attr->uuid, ioc_attr->uuid, BFA_ADAPTER_UUID_LEN);
}
