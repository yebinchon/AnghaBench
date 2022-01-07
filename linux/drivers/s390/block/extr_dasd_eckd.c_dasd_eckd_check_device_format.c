
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct irb {int scsw; } ;
struct TYPE_6__ {int blksize; int stop_unit; int start_unit; } ;
struct format_check_t {TYPE_3__ expect; } ;
struct eckd_count {int dummy; } ;
struct TYPE_4__ {int* feature; } ;
struct TYPE_5__ {int trk_per_cyl; } ;
struct dasd_eckd_private {int fcx_max_data; TYPE_1__ features; TYPE_2__ rdc_data; } ;
struct dasd_device {struct dasd_eckd_private* private; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int dasd_eckd_format_evaluate_tracks (struct eckd_count*,struct format_check_t*,int,int,int,int) ;
 int dasd_eckd_format_process_data (struct dasd_device*,TYPE_3__*,int,int,struct eckd_count*,int,struct irb*) ;
 int kfree (struct eckd_count*) ;
 struct eckd_count* kzalloc (int,int) ;
 int recs_per_track (TYPE_2__*,int ,int) ;
 int scsw_cstat (int *) ;

__attribute__((used)) static int dasd_eckd_check_device_format(struct dasd_device *base,
      struct format_check_t *cdata,
      int enable_pav)
{
 struct dasd_eckd_private *private = base->private;
 struct eckd_count *fmt_buffer;
 struct irb irb;
 int rpt_max, rpt_exp;
 int fmt_buffer_size;
 int trk_per_cyl;
 int trkcount;
 int tpm = 0;
 int rc;

 trk_per_cyl = private->rdc_data.trk_per_cyl;


 rpt_max = recs_per_track(&private->rdc_data, 0, 512) + 1;
 rpt_exp = recs_per_track(&private->rdc_data, 0, cdata->expect.blksize);

 trkcount = cdata->expect.stop_unit - cdata->expect.start_unit + 1;
 fmt_buffer_size = trkcount * rpt_max * sizeof(struct eckd_count);

 fmt_buffer = kzalloc(fmt_buffer_size, GFP_KERNEL | GFP_DMA);
 if (!fmt_buffer)
  return -ENOMEM;
 if ((private->features.feature[40] & 0x04) &&
     fmt_buffer_size <= private->fcx_max_data)
  tpm = 1;

 rc = dasd_eckd_format_process_data(base, &cdata->expect, enable_pav,
        tpm, fmt_buffer, rpt_max, &irb);
 if (rc && rc != -EIO)
  goto out;
 if (rc == -EIO) {





  if (tpm && scsw_cstat(&irb.scsw) == 0x40) {
   tpm = 0;
   rc = dasd_eckd_format_process_data(base, &cdata->expect,
          enable_pav, tpm,
          fmt_buffer, rpt_max,
          &irb);
   if (rc)
    goto out;
  } else {
   goto out;
  }
 }

 dasd_eckd_format_evaluate_tracks(fmt_buffer, cdata, rpt_max, rpt_exp,
      trk_per_cyl, tpm);

out:
 kfree(fmt_buffer);

 return rc;
}
