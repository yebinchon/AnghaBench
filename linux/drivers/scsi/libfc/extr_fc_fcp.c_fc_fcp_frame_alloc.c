
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fc_lport {TYPE_1__* host; int stats; } ;
struct fc_frame {int dummy; } ;
struct TYPE_4__ {int FcpFrameAllocFails; } ;
struct TYPE_3__ {int can_queue; } ;


 int KERN_ERR ;
 int fc_fcp_can_queue_ramp_down (struct fc_lport*) ;
 struct fc_frame* fc_frame_alloc (struct fc_lport*,size_t) ;
 int get_cpu () ;
 scalar_t__ likely (struct fc_frame*) ;
 TYPE_2__* per_cpu_ptr (int ,int ) ;
 int put_cpu () ;
 int shost_printk (int ,TYPE_1__*,char*,int ) ;

__attribute__((used)) static inline struct fc_frame *fc_fcp_frame_alloc(struct fc_lport *lport,
        size_t len)
{
 struct fc_frame *fp;

 fp = fc_frame_alloc(lport, len);
 if (likely(fp))
  return fp;

 per_cpu_ptr(lport->stats, get_cpu())->FcpFrameAllocFails++;
 put_cpu();

 fc_fcp_can_queue_ramp_down(lport);
 shost_printk(KERN_ERR, lport->host,
       "libfc: Could not allocate frame, "
       "reducing can_queue to %d.\n", lport->host->can_queue);
 return ((void*)0);
}
