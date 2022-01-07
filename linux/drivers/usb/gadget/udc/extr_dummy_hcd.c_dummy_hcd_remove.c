
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct dummy {int * ss_hcd; int * hs_hcd; } ;
struct TYPE_2__ {struct dummy* dum; } ;


 int dummy_hcd_to_hcd (int *) ;
 TYPE_1__* hcd_to_dummy_hcd (int ) ;
 int platform_get_drvdata (struct platform_device*) ;
 int usb_put_hcd (int ) ;
 int usb_remove_hcd (int ) ;

__attribute__((used)) static int dummy_hcd_remove(struct platform_device *pdev)
{
 struct dummy *dum;

 dum = hcd_to_dummy_hcd(platform_get_drvdata(pdev))->dum;

 if (dum->ss_hcd) {
  usb_remove_hcd(dummy_hcd_to_hcd(dum->ss_hcd));
  usb_put_hcd(dummy_hcd_to_hcd(dum->ss_hcd));
 }

 usb_remove_hcd(dummy_hcd_to_hcd(dum->hs_hcd));
 usb_put_hcd(dummy_hcd_to_hcd(dum->hs_hcd));

 dum->hs_hcd = ((void*)0);
 dum->ss_hcd = ((void*)0);

 return 0;
}
