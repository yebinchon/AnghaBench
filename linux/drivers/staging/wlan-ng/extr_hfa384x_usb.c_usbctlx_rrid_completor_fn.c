
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbctlx_rrid_completor {scalar_t__ riddatalen; int riddata; int rridresp; } ;
struct usbctlx_completor {int dummy; } ;
struct hfa384x_rridresult {scalar_t__ riddata_len; int riddata; int rid; } ;


 int ENODATA ;
 int memcpy (int ,int ,scalar_t__) ;
 int pr_warn (char*,int ,scalar_t__,scalar_t__) ;
 int usbctlx_get_rridresult (int ,struct hfa384x_rridresult*) ;

__attribute__((used)) static int usbctlx_rrid_completor_fn(struct usbctlx_completor *head)
{
 struct usbctlx_rrid_completor *complete;
 struct hfa384x_rridresult rridresult;

 complete = (struct usbctlx_rrid_completor *)head;
 usbctlx_get_rridresult(complete->rridresp, &rridresult);


 if (rridresult.riddata_len != complete->riddatalen) {
  pr_warn("RID len mismatch, rid=0x%04x hlen=%d fwlen=%d\n",
   rridresult.rid,
   complete->riddatalen, rridresult.riddata_len);
  return -ENODATA;
 }

 memcpy(complete->riddata, rridresult.riddata, complete->riddatalen);
 return 0;
}
