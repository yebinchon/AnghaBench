
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct esas2r_buffered_ioctl {scalar_t__ offset; int * done_context; int done_callback; int * context; int callback; scalar_t__ length; struct atto_ioctl* ioctl; struct esas2r_adapter* a; } ;
struct esas2r_adapter {int dummy; } ;
struct atto_ioctl {scalar_t__ data_length; } ;
typedef int bi ;


 int handle_buffered_ioctl (struct esas2r_buffered_ioctl*) ;
 int hba_ioctl_callback ;
 int hba_ioctl_done_callback ;
 int memset (struct esas2r_buffered_ioctl*,int ,int) ;

u8 handle_hba_ioctl(struct esas2r_adapter *a,
      struct atto_ioctl *ioctl_hba)
{
 struct esas2r_buffered_ioctl bi;

 memset(&bi, 0, sizeof(bi));

 bi.a = a;
 bi.ioctl = ioctl_hba;
 bi.length = sizeof(struct atto_ioctl) + ioctl_hba->data_length;
 bi.callback = hba_ioctl_callback;
 bi.context = ((void*)0);
 bi.done_callback = hba_ioctl_done_callback;
 bi.done_context = ((void*)0);
 bi.offset = 0;

 return handle_buffered_ioctl(&bi);
}
