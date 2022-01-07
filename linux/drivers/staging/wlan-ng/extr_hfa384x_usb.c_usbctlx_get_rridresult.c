
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfa384x_usb_rridresp {int frmlen; int data; int rid; } ;
struct hfa384x_rridresult {int rid; int riddata_len; int riddata; } ;


 int le16_to_cpu (int ) ;

__attribute__((used)) static void
usbctlx_get_rridresult(const struct hfa384x_usb_rridresp *rridresp,
         struct hfa384x_rridresult *result)
{
 result->rid = le16_to_cpu(rridresp->rid);
 result->riddata = rridresp->data;
 result->riddata_len = ((le16_to_cpu(rridresp->frmlen) - 1) * 2);
}
