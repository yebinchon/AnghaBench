
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct esas2r_buffered_ioctl {int callback; scalar_t__ offset; scalar_t__ length; struct atto_ioctl_smp* ioctl; struct esas2r_adapter* a; } ;
struct esas2r_adapter {int dummy; } ;
struct atto_ioctl_smp {int rsp_length; int req_length; } ;
typedef int bi ;


 int handle_buffered_ioctl (struct esas2r_buffered_ioctl*) ;
 scalar_t__ le32_to_cpu (int ) ;
 int memset (struct esas2r_buffered_ioctl*,int ,int) ;
 int smp_ioctl_callback ;

__attribute__((used)) static u8 handle_smp_ioctl(struct esas2r_adapter *a, struct atto_ioctl_smp *si)
{
 struct esas2r_buffered_ioctl bi;

 memset(&bi, 0, sizeof(bi));

 bi.a = a;
 bi.ioctl = si;
 bi.length = sizeof(struct atto_ioctl_smp)
      + le32_to_cpu(si->req_length)
      + le32_to_cpu(si->rsp_length);
 bi.offset = 0;
 bi.callback = smp_ioctl_callback;
 return handle_buffered_ioctl(&bi);
}
