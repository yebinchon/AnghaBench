
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef long long u64 ;
typedef long long u32 ;
struct imx_media_fim {scalar_t__ counter; long long tolerance_max; scalar_t__ num_avg; unsigned long tolerance_min; int last_ts; scalar_t__ sum; TYPE_1__* sd; scalar_t__ nominal; int enabled; } ;
typedef int ktime_t ;
struct TYPE_2__ {int dev; } ;


 unsigned long DIV_ROUND_CLOSEST (scalar_t__,scalar_t__) ;
 long long NSEC_PER_USEC ;
 long long U32_MAX ;
 long long abs (long long) ;
 int dev_dbg (int ,char*,unsigned long,...) ;
 int ktime_sub (int ,int ) ;
 long long ktime_to_ns (int ) ;
 int send_fim_event (struct imx_media_fim*,unsigned long) ;

__attribute__((used)) static void frame_interval_monitor(struct imx_media_fim *fim,
       ktime_t timestamp)
{
 long long interval, error;
 unsigned long error_avg;
 bool send_event = 0;

 if (!fim->enabled || ++fim->counter <= 0)
  goto out_update_ts;


 interval = ktime_to_ns(ktime_sub(timestamp, fim->last_ts));
 error = abs(interval - NSEC_PER_USEC * (u64)fim->nominal);
 if (error > U32_MAX)
  error = U32_MAX;
 else
  error = abs((u32)error / NSEC_PER_USEC);

 if (fim->tolerance_max && error >= fim->tolerance_max) {
  dev_dbg(fim->sd->dev,
   "FIM: %llu ignored, out of tolerance bounds\n",
   error);
  fim->counter--;
  goto out_update_ts;
 }

 fim->sum += error;

 if (fim->counter == fim->num_avg) {
  error_avg = DIV_ROUND_CLOSEST(fim->sum, fim->num_avg);

  if (error_avg > fim->tolerance_min)
   send_event = 1;

  dev_dbg(fim->sd->dev, "FIM: error: %lu usec%s\n",
   error_avg, send_event ? " (!!!)" : "");

  fim->counter = 0;
  fim->sum = 0;
 }

out_update_ts:
 fim->last_ts = timestamp;
 if (send_event)
  send_fim_event(fim, error_avg);
}
