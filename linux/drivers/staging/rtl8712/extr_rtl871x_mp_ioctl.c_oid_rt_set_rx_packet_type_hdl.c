
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint ;
typedef int u8 ;
typedef int u32 ;
struct oid_par_priv {scalar_t__ type_of_oid; int information_buf_len; scalar_t__ information_buf; scalar_t__ adapter_context; } ;
struct TYPE_2__ {int check_mp_pkt; } ;
struct _adapter {TYPE_1__ mppriv; } ;


 int RCR ;
 int RCR_AAP ;
 int RCR_AB ;
 int RCR_ACRC32 ;
 int RCR_AM ;
 int RCR_APM ;
 int RCR_CBSSID ;
 int RNDIS_STATUS_INVALID_LENGTH ;
 int RNDIS_STATUS_NOT_ACCEPTED ;
 int RNDIS_STATUS_SUCCESS ;



 scalar_t__ SET_OID ;
 int r8712_read32 (struct _adapter*,int ) ;
 int r8712_write32 (struct _adapter*,int ,int) ;

uint oid_rt_set_rx_packet_type_hdl(struct oid_par_priv
        *poid_par_priv)
{
 struct _adapter *Adapter = (struct _adapter *)
       (poid_par_priv->adapter_context);
 u8 rx_pkt_type;
 u32 rcr_val32;

 if (poid_par_priv->type_of_oid != SET_OID)
  return RNDIS_STATUS_NOT_ACCEPTED;
 if (poid_par_priv->information_buf_len < sizeof(u8))
  return RNDIS_STATUS_INVALID_LENGTH;
 rx_pkt_type = *((u8 *)poid_par_priv->information_buf);
 rcr_val32 = r8712_read32(Adapter, RCR);
 rcr_val32 &= ~(RCR_CBSSID | RCR_AB | RCR_AM | RCR_APM | RCR_AAP);
 switch (rx_pkt_type) {
 case 130:
  rcr_val32 |= (RCR_AB | RCR_AM | RCR_APM | RCR_AAP | RCR_ACRC32);
  break;
 case 129:
  rcr_val32 |= (RCR_AB | RCR_AM | RCR_APM | RCR_AAP | RCR_ACRC32);
  break;
 case 128:
  rcr_val32 |= (RCR_APM | RCR_ACRC32);
  break;
 default:
  rcr_val32 &= ~(RCR_AAP |
          RCR_APM |
          RCR_AM |
          RCR_AB |
          RCR_ACRC32);
  break;
 }
 if (rx_pkt_type == 129)
  Adapter->mppriv.check_mp_pkt = 1;
 else
  Adapter->mppriv.check_mp_pkt = 0;
 r8712_write32(Adapter, RCR, rcr_val32);
 return RNDIS_STATUS_SUCCESS;
}
