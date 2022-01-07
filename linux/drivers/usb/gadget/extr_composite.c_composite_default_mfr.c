
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_gadget {int name; } ;
struct TYPE_2__ {int release; int sysname; } ;


 int GFP_KERNEL ;
 TYPE_1__* init_utsname () ;
 char* kasprintf (int ,char*,int ,int ,int ) ;

__attribute__((used)) static char *composite_default_mfr(struct usb_gadget *gadget)
{
 return kasprintf(GFP_KERNEL, "%s %s with %s", init_utsname()->sysname,
    init_utsname()->release, gadget->name);
}
