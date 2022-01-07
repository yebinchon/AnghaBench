
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct registry_priv {int rf_config; int mp_mode; int wifi_test; int low_power; int vcs_type; int vrtl_carrier_sense; int cbw40_enable; } ;
struct fw_priv {int mp_mode; int turbo_mode; int low_power_mode; int vcs_mode; int vcs_type; int rf_config; int bw_40MHz_en; scalar_t__ usb_ep_num; int hci_sel; } ;
struct dvobj_priv {scalar_t__ nr_endpoint; } ;
struct _adapter {struct registry_priv registrypriv; struct dvobj_priv dvobjpriv; } ;


 int RTL8712_HCI_TYPE_72USB ;
 int RTL8712_RFC_1T1R ;
 int RTL8712_RFC_1T2R ;
 int RTL8712_RFC_2T2R ;



 int memset (struct fw_priv*,int ,int) ;

__attribute__((used)) static void fill_fwpriv(struct _adapter *adapter, struct fw_priv *fwpriv)
{
 struct dvobj_priv *dvobj = &adapter->dvobjpriv;
 struct registry_priv *regpriv = &adapter->registrypriv;

 memset(fwpriv, 0, sizeof(struct fw_priv));

 fwpriv->hci_sel = RTL8712_HCI_TYPE_72USB;
 fwpriv->usb_ep_num = (u8)dvobj->nr_endpoint;
 fwpriv->bw_40MHz_en = regpriv->cbw40_enable;
 switch (regpriv->rf_config) {
 case 130:
  fwpriv->rf_config = RTL8712_RFC_1T1R;
  break;
 case 128:
  fwpriv->rf_config = RTL8712_RFC_2T2R;
  break;
 case 129:
 default:
  fwpriv->rf_config = RTL8712_RFC_1T2R;
 }
 fwpriv->mp_mode = (regpriv->mp_mode == 1) ? 1 : 0;

 fwpriv->vcs_type = regpriv->vrtl_carrier_sense;
 fwpriv->vcs_mode = regpriv->vcs_type;

 fwpriv->turbo_mode = ((regpriv->wifi_test == 1) ? 0 : 1);
 fwpriv->low_power_mode = regpriv->low_power;
}
