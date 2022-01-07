
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union recv_frame {int dummy; } recv_frame ;
struct TYPE_4__ {int core_rx_pre; } ;
struct __queue {int dummy; } ;
struct TYPE_3__ {struct __queue free_recv_queue; } ;
struct adapter {TYPE_2__ rx_logs; TYPE_1__ recvpriv; } ;


 int DBG_COUNTER (int ) ;
 int RT_TRACE (int ,int ,char*) ;
 int _SUCCESS ;
 int _drv_info_ ;
 int _module_rtl871x_recv_c_ ;
 int rtw_free_recvframe (union recv_frame*,struct __queue*) ;
 int validate_recv_frame (struct adapter*,union recv_frame*) ;

__attribute__((used)) static int recv_func_prehandle(struct adapter *padapter, union recv_frame *rframe)
{
 int ret = _SUCCESS;
 struct __queue *pfree_recv_queue = &padapter->recvpriv.free_recv_queue;

 DBG_COUNTER(padapter->rx_logs.core_rx_pre);


 ret = validate_recv_frame(padapter, rframe);
 if (ret != _SUCCESS) {
  RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("recv_func: validate_recv_frame fail! drop pkt\n"));
  rtw_free_recvframe(rframe, pfree_recv_queue);
  goto exit;
 }

exit:
 return ret;
}
