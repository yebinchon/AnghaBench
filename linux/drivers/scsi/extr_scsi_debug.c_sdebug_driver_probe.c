
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sdebug_host_info {int dev; struct Scsi_Host* shost; } ;
struct device {int dummy; } ;
struct Scsi_Host {scalar_t__ this_id; scalar_t__ max_lun; scalar_t__ max_id; scalar_t__ hostdata; scalar_t__ nr_hw_queues; } ;
typedef int sdbg_host ;
struct TYPE_3__ {scalar_t__ dma_boundary; int can_queue; } ;


 int ENODEV ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ SCSI_W_LUN_REPORT_LUNS ;
 int SDEBUG_OPT_ALL_INJECTING ;
 int SDEBUG_OPT_NOISE ;
 int SHOST_DIF_TYPE1_PROTECTION ;
 int SHOST_DIF_TYPE2_PROTECTION ;
 int SHOST_DIF_TYPE3_PROTECTION ;
 int SHOST_DIX_GUARD_CRC ;
 int SHOST_DIX_GUARD_IP ;
 int SHOST_DIX_TYPE0_PROTECTION ;
 int SHOST_DIX_TYPE1_PROTECTION ;
 int SHOST_DIX_TYPE2_PROTECTION ;
 int SHOST_DIX_TYPE3_PROTECTION ;



 scalar_t__ have_dif_prot ;
 int my_name ;
 scalar_t__ nr_cpu_ids ;
 int pr_err (char*) ;
 int pr_info (char*,char*,char*,char*,char*,char*,char*,char*) ;
 int pr_warn (char*,int ,scalar_t__,scalar_t__) ;
 int scsi_add_host (struct Scsi_Host*,int *) ;
 struct Scsi_Host* scsi_host_alloc (TYPE_1__*,int) ;
 int scsi_host_put (struct Scsi_Host*) ;
 int scsi_host_set_guard (struct Scsi_Host*,int ) ;
 int scsi_host_set_prot (struct Scsi_Host*,int) ;
 int scsi_scan_host (struct Scsi_Host*) ;
 int sdebug_any_injecting_opt ;
 int sdebug_clustering ;
 int sdebug_dif ;
 scalar_t__ sdebug_dix ;
 TYPE_1__ sdebug_driver_template ;
 scalar_t__ sdebug_every_nth ;
 int sdebug_guard ;
 int sdebug_max_queue ;
 scalar_t__ sdebug_num_tgts ;
 int sdebug_opts ;
 int sdebug_statistics ;
 int sdebug_verbose ;
 scalar_t__ submit_queues ;
 struct sdebug_host_info* to_sdebug_host (struct device*) ;

__attribute__((used)) static int sdebug_driver_probe(struct device *dev)
{
 int error = 0;
 struct sdebug_host_info *sdbg_host;
 struct Scsi_Host *hpnt;
 int hprot;

 sdbg_host = to_sdebug_host(dev);

 sdebug_driver_template.can_queue = sdebug_max_queue;
 if (!sdebug_clustering)
  sdebug_driver_template.dma_boundary = PAGE_SIZE - 1;

 hpnt = scsi_host_alloc(&sdebug_driver_template, sizeof(sdbg_host));
 if (((void*)0) == hpnt) {
  pr_err("scsi_host_alloc failed\n");
  error = -ENODEV;
  return error;
 }
 if (submit_queues > nr_cpu_ids) {
  pr_warn("%s: trim submit_queues (was %d) to nr_cpu_ids=%u\n",
   my_name, submit_queues, nr_cpu_ids);
  submit_queues = nr_cpu_ids;
 }


 hpnt->nr_hw_queues = submit_queues;

 sdbg_host->shost = hpnt;
 *((struct sdebug_host_info **)hpnt->hostdata) = sdbg_host;
 if ((hpnt->this_id >= 0) && (sdebug_num_tgts > hpnt->this_id))
  hpnt->max_id = sdebug_num_tgts + 1;
 else
  hpnt->max_id = sdebug_num_tgts;

 hpnt->max_lun = SCSI_W_LUN_REPORT_LUNS + 1;

 hprot = 0;

 switch (sdebug_dif) {

 case 130:
  hprot = SHOST_DIF_TYPE1_PROTECTION;
  if (sdebug_dix)
   hprot |= SHOST_DIX_TYPE1_PROTECTION;
  break;

 case 129:
  hprot = SHOST_DIF_TYPE2_PROTECTION;
  if (sdebug_dix)
   hprot |= SHOST_DIX_TYPE2_PROTECTION;
  break;

 case 128:
  hprot = SHOST_DIF_TYPE3_PROTECTION;
  if (sdebug_dix)
   hprot |= SHOST_DIX_TYPE3_PROTECTION;
  break;

 default:
  if (sdebug_dix)
   hprot |= SHOST_DIX_TYPE0_PROTECTION;
  break;
 }

 scsi_host_set_prot(hpnt, hprot);

 if (have_dif_prot || sdebug_dix)
  pr_info("host protection%s%s%s%s%s%s%s\n",
   (hprot & SHOST_DIF_TYPE1_PROTECTION) ? " DIF1" : "",
   (hprot & SHOST_DIF_TYPE2_PROTECTION) ? " DIF2" : "",
   (hprot & SHOST_DIF_TYPE3_PROTECTION) ? " DIF3" : "",
   (hprot & SHOST_DIX_TYPE0_PROTECTION) ? " DIX0" : "",
   (hprot & SHOST_DIX_TYPE1_PROTECTION) ? " DIX1" : "",
   (hprot & SHOST_DIX_TYPE2_PROTECTION) ? " DIX2" : "",
   (hprot & SHOST_DIX_TYPE3_PROTECTION) ? " DIX3" : "");

 if (sdebug_guard == 1)
  scsi_host_set_guard(hpnt, SHOST_DIX_GUARD_IP);
 else
  scsi_host_set_guard(hpnt, SHOST_DIX_GUARD_CRC);

 sdebug_verbose = !!(SDEBUG_OPT_NOISE & sdebug_opts);
 sdebug_any_injecting_opt = !!(SDEBUG_OPT_ALL_INJECTING & sdebug_opts);
 if (sdebug_every_nth)
  sdebug_statistics = 1;
 error = scsi_add_host(hpnt, &sdbg_host->dev);
 if (error) {
  pr_err("scsi_add_host failed\n");
  error = -ENODEV;
  scsi_host_put(hpnt);
 } else
  scsi_scan_host(hpnt);

 return error;
}
