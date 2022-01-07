
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sdio_func {int dummy; } ;
struct sdio_data {struct sdio_func* func; } ;
struct intf_hdl {struct dvobj_priv* pintf_dev; struct adapter* padapter; } ;
struct dvobj_priv {struct sdio_data intf_data; } ;
struct adapter {scalar_t__ bSurpriseRemoved; } ;
typedef int s32 ;


 int EPERM ;
 int _sd_read (struct intf_hdl*,int ,int ,void*) ;
 int rtw_sdio_claim_host_needed (struct sdio_func*) ;
 int sdio_claim_host (struct sdio_func*) ;
 int sdio_release_host (struct sdio_func*) ;

s32 sd_read(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, void *pdata)
{
 struct adapter *padapter;
 struct dvobj_priv *psdiodev;
 struct sdio_data *psdio;

 struct sdio_func *func;
 bool claim_needed;
 s32 err = -EPERM;

 padapter = pintfhdl->padapter;
 psdiodev = pintfhdl->pintf_dev;
 psdio = &psdiodev->intf_data;

 if (padapter->bSurpriseRemoved) {

  return err;
 }
 func = psdio->func;
 claim_needed = rtw_sdio_claim_host_needed(func);

 if (claim_needed)
  sdio_claim_host(func);
 err = _sd_read(pintfhdl, addr, cnt, pdata);
 if (claim_needed)
  sdio_release_host(func);
 return err;
}
