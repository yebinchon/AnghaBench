
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint ;
typedef int u8 ;
typedef int u32 ;
struct oid_par_priv {scalar_t__ type_of_oid; scalar_t__ information_buf; scalar_t__ adapter_context; } ;
struct TYPE_2__ {int mode; } ;
struct _adapter {TYPE_1__ mppriv; } ;


 int EE_9346CR ;
 scalar_t__ MSR ;
 scalar_t__ RCR ;
 int RNDIS_STATUS_NOT_ACCEPTED ;
 int RNDIS_STATUS_SUCCESS ;
 int RXFLTMAP0 ;
 scalar_t__ SET_OID ;
 int _9356SEL ;
 scalar_t__ mp_start_test (struct _adapter*) ;
 int r8712_efuse_change_max_size (struct _adapter*) ;
 int r8712_efuse_reg_init (struct _adapter*) ;
 int r8712_efuse_reg_uninit (struct _adapter*) ;
 int r8712_read8 (struct _adapter*,int ) ;
 int r8712_write16 (struct _adapter*,int ,int) ;
 int r8712_write8 (struct _adapter*,scalar_t__,int) ;

uint oid_rt_pro_start_test_hdl(struct oid_par_priv *poid_par_priv)
{
 struct _adapter *Adapter = (struct _adapter *)
       (poid_par_priv->adapter_context);
 uint status = RNDIS_STATUS_SUCCESS;
 u32 mode;
 u8 val8;

 if (poid_par_priv->type_of_oid != SET_OID)
  return RNDIS_STATUS_NOT_ACCEPTED;
 mode = *((u32 *)poid_par_priv->information_buf);
 Adapter->mppriv.mode = mode;
 if (mp_start_test(Adapter))
  status = RNDIS_STATUS_NOT_ACCEPTED;
 r8712_write8(Adapter, MSR, 1);
 r8712_write8(Adapter, RCR, 0);

 r8712_write8(Adapter, RCR + 2, 0x57);

 r8712_write16(Adapter, RXFLTMAP0, 0x0);
 val8 = r8712_read8(Adapter, EE_9346CR);
 if (!(val8 & _9356SEL)) {
  r8712_efuse_reg_init(Adapter);
  r8712_efuse_change_max_size(Adapter);
  r8712_efuse_reg_uninit(Adapter);
 }
 return status;
}
