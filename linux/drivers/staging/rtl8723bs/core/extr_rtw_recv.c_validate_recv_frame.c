
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct rx_pkt_attrib {int qos; scalar_t__* iv_len; int hdrlen; int order; int privacy; int mdata; int mfrag; int pw_save; int seq_num; int frag_num; int to_fr_ds; } ;
struct TYPE_6__ {scalar_t__* rx_data; struct rx_pkt_attrib attrib; } ;
struct TYPE_7__ {TYPE_1__ hdr; } ;
union recv_frame {TYPE_2__ u; } ;
typedef scalar_t__ u8 ;
typedef int u16 ;
struct recv_priv {int rx_drop; } ;
struct TYPE_9__ {int core_rx_pre_unknown; int core_rx_pre_data_handled; int core_rx_pre_data_err; int core_rx_pre_data; int core_rx_pre_ctrl_err; int core_rx_pre_ctrl; int core_rx_pre_mgmt_err; int core_rx_pre_mgmt; int core_rx_pre_ver_err; } ;
struct adapter {TYPE_4__ rx_logs; struct recv_priv recvpriv; } ;
typedef int sint ;
struct TYPE_8__ {int core_rx_pre_mgmt_err_80211w; } ;
struct TYPE_10__ {TYPE_3__ rx_logs; } ;


 scalar_t__ BIT (int) ;
 int DBG_871X (char*,scalar_t__) ;
 int DBG_COUNTER (int ) ;
 int GetFragNum (scalar_t__*) ;
 scalar_t__ GetFrameSubType (scalar_t__*) ;
 scalar_t__ GetFrameType (scalar_t__*) ;
 int GetMData (scalar_t__*) ;
 int GetMFrag (scalar_t__*) ;
 int GetOrder (scalar_t__*) ;
 int GetPrivacy (scalar_t__*) ;
 int GetPwrMgt (scalar_t__*) ;
 int GetSequence (scalar_t__*) ;
 int HAL_DEF_DBG_DUMP_RXPKT ;
 scalar_t__* LLC_HEADER_SIZE ;
 int RT_TRACE (int ,int ,char*) ;



 int _FAIL ;
 int _SUCCESS ;
 int _drv_err_ ;
 int _module_rtl871x_recv_c_ ;
 int dump_rx_packet (scalar_t__*) ;
 int get_tofr_ds (scalar_t__*) ;
 int memcpy (int*,scalar_t__*,int) ;
 int ntohs (unsigned short) ;
 TYPE_5__* padapter ;
 int rtw_hal_get_def_var (struct adapter*,int ,scalar_t__*) ;
 int validate_80211w_mgmt (struct adapter*,union recv_frame*) ;
 int validate_recv_ctrl_frame (struct adapter*,union recv_frame*) ;
 int validate_recv_data_frame (struct adapter*,union recv_frame*) ;
 int validate_recv_mgnt_frame (struct adapter*,union recv_frame*) ;

sint validate_recv_frame(struct adapter *adapter, union recv_frame *precv_frame)
{




 u8 type;
 u8 subtype;
 sint retval = _SUCCESS;
 u8 bDumpRxPkt;

 struct rx_pkt_attrib *pattrib = &precv_frame->u.hdr.attrib;

 u8 *ptr = precv_frame->u.hdr.rx_data;
 u8 ver = (unsigned char) (*ptr)&0x3;


 if (ver != 0) {
  RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("validate_recv_data_frame fail! (ver!= 0)\n"));
  retval = _FAIL;
  DBG_COUNTER(adapter->rx_logs.core_rx_pre_ver_err);
  goto exit;
 }

 type = GetFrameType(ptr);
 subtype = GetFrameSubType(ptr);

 pattrib->to_fr_ds = get_tofr_ds(ptr);

 pattrib->frag_num = GetFragNum(ptr);
 pattrib->seq_num = GetSequence(ptr);

 pattrib->pw_save = GetPwrMgt(ptr);
 pattrib->mfrag = GetMFrag(ptr);
 pattrib->mdata = GetMData(ptr);
 pattrib->privacy = GetPrivacy(ptr);
 pattrib->order = GetOrder(ptr);
 rtw_hal_get_def_var(adapter, HAL_DEF_DBG_DUMP_RXPKT, &(bDumpRxPkt));
 if (bDumpRxPkt == 1)
  dump_rx_packet(ptr);
 else if ((bDumpRxPkt == 2) && (type == 128))
  dump_rx_packet(ptr);
 else if ((bDumpRxPkt == 3) && (type == 129))
  dump_rx_packet(ptr);

 switch (type) {
 case 128:
  DBG_COUNTER(adapter->rx_logs.core_rx_pre_mgmt);
  if (validate_80211w_mgmt(adapter, precv_frame) == _FAIL) {
   retval = _FAIL;
   DBG_COUNTER(padapter->rx_logs.core_rx_pre_mgmt_err_80211w);
   break;
  }

  retval = validate_recv_mgnt_frame(adapter, precv_frame);
  if (retval == _FAIL) {
   RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("validate_recv_mgnt_frame fail\n"));
   DBG_COUNTER(adapter->rx_logs.core_rx_pre_mgmt_err);
  }
  retval = _FAIL;
  break;
 case 130:
  DBG_COUNTER(adapter->rx_logs.core_rx_pre_ctrl);
  retval = validate_recv_ctrl_frame(adapter, precv_frame);
  if (retval == _FAIL) {
   RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("validate_recv_ctrl_frame fail\n"));
   DBG_COUNTER(adapter->rx_logs.core_rx_pre_ctrl_err);
  }
  retval = _FAIL;
  break;
 case 129:
  DBG_COUNTER(adapter->rx_logs.core_rx_pre_data);

  pattrib->qos = (subtype & BIT(7)) ? 1:0;
  retval = validate_recv_data_frame(adapter, precv_frame);
  if (retval == _FAIL) {
   struct recv_priv *precvpriv = &adapter->recvpriv;

   precvpriv->rx_drop++;
   DBG_COUNTER(adapter->rx_logs.core_rx_pre_data_err);
  } else if (retval == _SUCCESS) {
  } else
   DBG_COUNTER(adapter->rx_logs.core_rx_pre_data_handled);
  break;
 default:
  DBG_COUNTER(adapter->rx_logs.core_rx_pre_unknown);
  RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("validate_recv_data_frame fail! type = 0x%x\n", type));



  retval = _FAIL;
  break;
 }

exit:
 return retval;
}
