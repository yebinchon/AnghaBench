
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int msg; } ;
struct TYPE_6__ {TYPE_2__ in; } ;
struct TYPE_4__ {int size_out; int size_in; } ;
struct vbg_ioctl_log {TYPE_3__ u; TYPE_1__ hdr; } ;


 int EINVAL ;
 int vbg_info (char*,int,int ) ;

__attribute__((used)) static int vbg_ioctl_log(struct vbg_ioctl_log *log)
{
 if (log->hdr.size_out != sizeof(log->hdr))
  return -EINVAL;

 vbg_info("%.*s", (int)(log->hdr.size_in - sizeof(log->hdr)),
   log->u.in.msg);

 return 0;
}
