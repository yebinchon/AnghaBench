
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct dvobj_priv {struct adapter* if1; } ;
struct adapter {int dummy; } ;


 int rtw_resume_process (struct adapter*) ;
 struct dvobj_priv* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int rtw_resume(struct usb_interface *pusb_intf)
{
 struct dvobj_priv *dvobj = usb_get_intfdata(pusb_intf);
 struct adapter *padapter = dvobj->if1;

 return rtw_resume_process(padapter);
}
