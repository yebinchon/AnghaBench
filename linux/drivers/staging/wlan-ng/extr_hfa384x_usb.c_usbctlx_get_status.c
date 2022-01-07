
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfa384x_usb_statusresp {int resp2; int resp1; int resp0; int status; } ;
struct hfa384x_cmdresult {int status; void* resp2; void* resp1; void* resp0; } ;


 int HFA384x_STATUS_RESULT ;
 void* le16_to_cpu (int ) ;
 int pr_debug (char*,int,void*,void*,void*) ;

__attribute__((used)) static int
usbctlx_get_status(const struct hfa384x_usb_statusresp *cmdresp,
     struct hfa384x_cmdresult *result)
{
 result->status = le16_to_cpu(cmdresp->status);
 result->resp0 = le16_to_cpu(cmdresp->resp0);
 result->resp1 = le16_to_cpu(cmdresp->resp1);
 result->resp2 = le16_to_cpu(cmdresp->resp2);

 pr_debug("cmdresult:status=0x%04x resp0=0x%04x resp1=0x%04x resp2=0x%04x\n",
   result->status, result->resp0, result->resp1, result->resp2);

 return result->status & HFA384x_STATUS_RESULT;
}
