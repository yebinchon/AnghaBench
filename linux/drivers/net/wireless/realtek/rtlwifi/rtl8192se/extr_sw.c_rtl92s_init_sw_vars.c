
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef void* u32 ;
typedef int u16 ;
struct TYPE_12__ {int * pfirmware; int macphymode; void* bandset; void* current_bandtype; } ;
struct TYPE_11__ {int dev; } ;
struct TYPE_10__ {int reg_fwctrl_lps; int reg_max_lps_awakeintvl; int fwctrl_psmode; int fwctrl_lps; int inactiveps; int swctrl_lps; } ;
struct TYPE_7__ {int dm_initialgain_enable; int disable_framebursting; int useramask; scalar_t__ thermalvalue; scalar_t__ dm_flag; } ;
struct rtl_priv {int max_fw_size; TYPE_6__ rtlhal; TYPE_5__ io; TYPE_4__ psc; TYPE_3__* cfg; TYPE_1__ dm; } ;
struct rtl_pci {int receive_config; int shortretry_limit; int longretry_limit; int first_init; void** irq_mask; scalar_t__ transmit_config; } ;
struct rt_firmware {int dummy; } ;
struct ieee80211_hw {int dummy; } ;
struct fw_hdr {int dummy; } ;
struct TYPE_9__ {TYPE_2__* mod_params; } ;
struct TYPE_8__ {int fwctrl_lps; int swctrl_lps; int inactiveps; } ;


 void* BAND_ON_2_4G ;
 int FW_PS_DTIM_MODE ;
 int FW_PS_MAX_MODE ;
 int FW_PS_MIN_MODE ;
 int GFP_KERNEL ;
 int IMR_BCNINT ;
 int IMR_BDOK ;
 int IMR_BEDOK ;
 int IMR_BKDOK ;
 int IMR_COMDOK ;
 int IMR_HCCADOK ;
 int IMR_HIGHDOK ;
 int IMR_MGNTDOK ;
 int IMR_RDU ;
 int IMR_ROK ;
 int IMR_RXCMDOK ;
 int IMR_RXFOVW ;
 int IMR_VIDOK ;
 int IMR_VODOK ;
 int RCR_AB ;
 int RCR_ACRC32 ;
 int RCR_ADF ;
 int RCR_AICV ;
 int RCR_AM ;
 int RCR_AMF ;
 int RCR_APM ;
 int RCR_APPFCS ;
 int RCR_APP_ICV ;
 int RCR_APP_MIC ;
 int RCR_APP_PHYST_RXFF ;
 int RCR_APP_PHYST_STAFF ;
 int RCR_APWRMGT ;
 int RCR_FIFO_OFFSET ;
 int RTL8190_MAX_FIRMWARE_CODE_SIZE ;
 int SINGLEMAC_SINGLEPHY ;
 int THIS_MODULE ;
 int pr_err (char*) ;
 int pr_info (char*,...) ;
 int request_firmware_nowait (int ,int,char*,int ,int ,struct ieee80211_hw*,int ) ;
 int rtl92s_init_aspm_vars (struct ieee80211_hw*) ;
 int rtl92se_fw_cb ;
 struct rtl_pci* rtl_pcidev (int ) ;
 int rtl_pcipriv (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 int vfree (int *) ;
 int * vzalloc (int) ;

__attribute__((used)) static int rtl92s_init_sw_vars(struct ieee80211_hw *hw)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_pci *rtlpci = rtl_pcidev(rtl_pcipriv(hw));
 int err = 0;
 u16 earlyrxthreshold = 7;
 char *fw_name = "rtlwifi/rtl8192sefw.bin";

 rtlpriv->dm.dm_initialgain_enable = 1;
 rtlpriv->dm.dm_flag = 0;
 rtlpriv->dm.disable_framebursting = 0;
 rtlpriv->dm.thermalvalue = 0;
 rtlpriv->dm.useramask = 1;


 rtlpriv->rtlhal.current_bandtype = BAND_ON_2_4G;
 rtlpriv->rtlhal.bandset = BAND_ON_2_4G;
 rtlpriv->rtlhal.macphymode = SINGLEMAC_SINGLEPHY;

 rtlpci->transmit_config = 0;

 rtlpci->receive_config =
   RCR_APPFCS |
   RCR_APWRMGT |

   RCR_AMF |
   RCR_ADF |
   RCR_APP_MIC |
   RCR_APP_ICV |
   RCR_AICV |

   RCR_ACRC32 |
   RCR_AB |

   RCR_AM |

   RCR_APM |


   RCR_APP_PHYST_STAFF |

   RCR_APP_PHYST_RXFF |
   (earlyrxthreshold << RCR_FIFO_OFFSET);

 rtlpci->irq_mask[0] = (u32)
   (IMR_ROK |
   IMR_VODOK |
   IMR_VIDOK |
   IMR_BEDOK |
   IMR_BKDOK |
   IMR_HCCADOK |
   IMR_MGNTDOK |
   IMR_COMDOK |
   IMR_HIGHDOK |
   IMR_BDOK |
   IMR_RXCMDOK |

   IMR_RDU |
   IMR_RXFOVW |
   IMR_BCNINT


              );

 rtlpci->irq_mask[1] = (u32) 0;

 rtlpci->shortretry_limit = 0x30;
 rtlpci->longretry_limit = 0x30;

 rtlpci->first_init = 1;


 rtlpriv->psc.inactiveps = rtlpriv->cfg->mod_params->inactiveps;
 rtlpriv->psc.swctrl_lps = rtlpriv->cfg->mod_params->swctrl_lps;
 rtlpriv->psc.fwctrl_lps = rtlpriv->cfg->mod_params->fwctrl_lps;
 if (!rtlpriv->psc.inactiveps)
  pr_info("Power Save off (module option)\n");
 if (!rtlpriv->psc.fwctrl_lps)
  pr_info("FW Power Save off (module option)\n");
 rtlpriv->psc.reg_fwctrl_lps = 3;
 rtlpriv->psc.reg_max_lps_awakeintvl = 5;


 rtl92s_init_aspm_vars(hw);

 if (rtlpriv->psc.reg_fwctrl_lps == 1)
  rtlpriv->psc.fwctrl_psmode = FW_PS_MIN_MODE;
 else if (rtlpriv->psc.reg_fwctrl_lps == 2)
  rtlpriv->psc.fwctrl_psmode = FW_PS_MAX_MODE;
 else if (rtlpriv->psc.reg_fwctrl_lps == 3)
  rtlpriv->psc.fwctrl_psmode = FW_PS_DTIM_MODE;


 rtlpriv->rtlhal.pfirmware = vzalloc(sizeof(struct rt_firmware));
 if (!rtlpriv->rtlhal.pfirmware)
  return 1;

 rtlpriv->max_fw_size = RTL8190_MAX_FIRMWARE_CODE_SIZE*2 +
          sizeof(struct fw_hdr);
 pr_info("Driver for Realtek RTL8192SE/RTL8191SE\n"
  "Loading firmware %s\n", fw_name);

 err = request_firmware_nowait(THIS_MODULE, 1, fw_name,
          rtlpriv->io.dev, GFP_KERNEL, hw,
          rtl92se_fw_cb);
 if (err) {
  pr_err("Failed to request firmware!\n");
  vfree(rtlpriv->rtlhal.pfirmware);
  rtlpriv->rtlhal.pfirmware = ((void*)0);
  return 1;
 }

 return err;
}
