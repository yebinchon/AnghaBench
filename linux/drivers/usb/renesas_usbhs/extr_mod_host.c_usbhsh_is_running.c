
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * irq_attch; } ;
struct usbhsh_hpriv {TYPE_1__ mod; } ;



__attribute__((used)) static int usbhsh_is_running(struct usbhsh_hpriv *hpriv)
{







 return (hpriv->mod.irq_attch == ((void*)0));
}
