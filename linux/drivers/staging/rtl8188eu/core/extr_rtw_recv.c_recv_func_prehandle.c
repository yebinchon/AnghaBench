
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct recv_frame {int dummy; } ;
struct __queue {int dummy; } ;
struct TYPE_2__ {struct __queue free_recv_queue; } ;
struct adapter {TYPE_1__ recvpriv; } ;


 int RT_TRACE (int ,int ,char*) ;
 int _SUCCESS ;
 int _drv_info_ ;
 int _module_rtl871x_recv_c_ ;
 int rtw_free_recvframe (struct recv_frame*,struct __queue*) ;
 int validate_recv_frame (struct adapter*,struct recv_frame*) ;

__attribute__((used)) static int recv_func_prehandle(struct adapter *padapter,
          struct recv_frame *rframe)
{
 int ret = _SUCCESS;
 struct __queue *pfree_recv_queue = &padapter->recvpriv.free_recv_queue;


 ret = validate_recv_frame(padapter, rframe);
 if (ret != _SUCCESS) {
  RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("recv_func: validate_recv_frame fail! drop pkt\n"));
  rtw_free_recvframe(rframe, pfree_recv_queue);
  goto exit;
 }

exit:
 return ret;
}
