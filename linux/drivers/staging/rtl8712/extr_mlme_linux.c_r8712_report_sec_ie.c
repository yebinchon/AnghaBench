
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wrqu ;
struct TYPE_2__ {int length; } ;
union iwreq_data {TYPE_1__ data; } ;
typedef scalar_t__ uint ;
typedef scalar_t__ u8 ;
struct _adapter {int pnetdev; } ;


 int GFP_ATOMIC ;
 int IWEVCUSTOM ;
 scalar_t__ IW_CUSTOM_MAX ;
 scalar_t__ _WPA_IE_ID_ ;
 int kfree (scalar_t__*) ;
 scalar_t__* kzalloc (scalar_t__,int ) ;
 int memset (union iwreq_data*,int ,int) ;
 int sprintf (scalar_t__*,char*,...) ;
 int wireless_send_event (int ,int ,union iwreq_data*,scalar_t__*) ;

void r8712_report_sec_ie(struct _adapter *adapter, u8 authmode, u8 *sec_ie)
{
 uint len;
 u8 *buff, *p, i;
 union iwreq_data wrqu;

 buff = ((void*)0);
 if (authmode == _WPA_IE_ID_) {
  buff = kzalloc(IW_CUSTOM_MAX, GFP_ATOMIC);
  if (!buff)
   return;
  p = buff;
  p += sprintf(p, "ASSOCINFO(ReqIEs=");
  len = sec_ie[1] + 2;
  len = (len < IW_CUSTOM_MAX) ? len : IW_CUSTOM_MAX;
  for (i = 0; i < len; i++)
   p += sprintf(p, "%02x", sec_ie[i]);
  p += sprintf(p, ")");
  memset(&wrqu, 0, sizeof(wrqu));
  wrqu.data.length = p - buff;
  wrqu.data.length = (wrqu.data.length < IW_CUSTOM_MAX) ?
       wrqu.data.length : IW_CUSTOM_MAX;
  wireless_send_event(adapter->pnetdev, IWEVCUSTOM, &wrqu, buff);
  kfree(buff);
 }
}
