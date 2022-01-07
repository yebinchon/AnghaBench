
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xmit_frame {struct xmit_buf* pxmitbuf; } ;
struct xmit_buf {struct submit_ctx* sctx; } ;
struct submit_ctx {int dummy; } ;
struct adapter {scalar_t__ bDriverStopped; scalar_t__ bSurpriseRemoved; } ;
typedef scalar_t__ s32 ;


 scalar_t__ _FAIL ;
 scalar_t__ _SUCCESS ;
 scalar_t__ rtw_hal_mgnt_xmit (struct adapter*,struct xmit_frame*) ;
 int rtw_sctx_init (struct submit_ctx*,int) ;
 scalar_t__ rtw_sctx_wait (struct submit_ctx*) ;

__attribute__((used)) static s32 dump_mgntframe_and_wait(struct adapter *padapter,
       struct xmit_frame *pmgntframe,
       int timeout_ms)
{
 s32 ret = _FAIL;
 struct xmit_buf *pxmitbuf = pmgntframe->pxmitbuf;
 struct submit_ctx sctx;

 if (padapter->bSurpriseRemoved || padapter->bDriverStopped)
  return ret;

 rtw_sctx_init(&sctx, timeout_ms);
 pxmitbuf->sctx = &sctx;

 ret = rtw_hal_mgnt_xmit(padapter, pmgntframe);

 if (ret == _SUCCESS)
  ret = rtw_sctx_wait(&sctx);

 return ret;
}
