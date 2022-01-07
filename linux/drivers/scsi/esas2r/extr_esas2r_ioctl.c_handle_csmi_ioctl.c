
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union atto_ioctl_csmi {int dummy; } atto_ioctl_csmi ;
typedef int u8 ;
struct esas2r_buffered_ioctl {int length; struct atto_csmi* done_context; int done_callback; struct atto_csmi* context; int callback; scalar_t__ offset; int * ioctl; struct esas2r_adapter* a; } ;
struct esas2r_adapter {int dummy; } ;
struct atto_csmi {int data; } ;
typedef int bi ;


 int csmi_ioctl_callback ;
 int csmi_ioctl_done_callback ;
 int handle_buffered_ioctl (struct esas2r_buffered_ioctl*) ;
 int memset (struct esas2r_buffered_ioctl*,int ,int) ;

__attribute__((used)) static u8 handle_csmi_ioctl(struct esas2r_adapter *a, struct atto_csmi *ci)
{
 struct esas2r_buffered_ioctl bi;

 memset(&bi, 0, sizeof(bi));

 bi.a = a;
 bi.ioctl = &ci->data;
 bi.length = sizeof(union atto_ioctl_csmi);
 bi.offset = 0;
 bi.callback = csmi_ioctl_callback;
 bi.context = ci;
 bi.done_callback = csmi_ioctl_done_callback;
 bi.done_context = ci;

 return handle_buffered_ioctl(&bi);
}
