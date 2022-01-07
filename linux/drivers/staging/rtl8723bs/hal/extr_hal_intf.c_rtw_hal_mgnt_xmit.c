
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int bswenc; int encrypt; int ra; } ;
struct xmit_frame {int pkt; TYPE_3__ attrib; } ;
struct TYPE_4__ {int (* mgnt_xmit ) (struct adapter*,struct xmit_frame*) ;} ;
struct TYPE_5__ {int binstallBIPkey; } ;
struct adapter {TYPE_1__ HalFunc; TYPE_2__ securitypriv; } ;
typedef int s32 ;


 scalar_t__ IS_MCAST (int ) ;
 int _AES_ ;
 int _BIP_ ;
 int _FAIL ;
 int rtw_mgmt_xmitframe_coalesce (struct adapter*,int ,struct xmit_frame*) ;
 int stub1 (struct adapter*,struct xmit_frame*) ;
 int update_mgntframe_attrib_addr (struct adapter*,struct xmit_frame*) ;

s32 rtw_hal_mgnt_xmit(struct adapter *padapter, struct xmit_frame *pmgntframe)
{
 s32 ret = _FAIL;
 update_mgntframe_attrib_addr(padapter, pmgntframe);




 if (padapter->securitypriv.binstallBIPkey == 1) {
  if (IS_MCAST(pmgntframe->attrib.ra)) {
   pmgntframe->attrib.encrypt = _BIP_;

  } else {
   pmgntframe->attrib.encrypt = _AES_;
   pmgntframe->attrib.bswenc = 1;
  }
  rtw_mgmt_xmitframe_coalesce(padapter, pmgntframe->pkt, pmgntframe);
 }

 if (padapter->HalFunc.mgnt_xmit)
  ret = padapter->HalFunc.mgnt_xmit(padapter, pmgntframe);
 return ret;
}
