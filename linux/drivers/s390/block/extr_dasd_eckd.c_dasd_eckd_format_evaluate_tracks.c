
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int stop_unit; int start_unit; int blksize; int intensity; } ;
struct format_check_t {int unit; int num_records; int rec; int blksize; int key_length; int result; TYPE_1__ expect; } ;
struct eckd_count {int record; int dl; int kl; scalar_t__ cyl; int head; } ;
struct ch_t {scalar_t__ cyl; int head; } ;


 int DASD_FMT_ERR_BLKSIZE ;
 int DASD_FMT_ERR_KEY_LENGTH ;
 int DASD_FMT_ERR_RECORD_ID ;
 int DASD_FMT_ERR_TOO_FEW_RECORDS ;
 int DASD_FMT_ERR_TOO_MANY_RECORDS ;
 int LABEL_SIZE ;
 int dasd_eckd_count_records (struct eckd_count*,int,int) ;
 int set_ch_t (struct ch_t*,int,int) ;
 int* sizes_trk0 ;

__attribute__((used)) static void dasd_eckd_format_evaluate_tracks(struct eckd_count *fmt_buffer,
          struct format_check_t *cdata,
          int rpt_max, int rpt_exp,
          int trk_per_cyl, int tpm)
{
 struct ch_t geo;
 int max_entries;
 int count = 0;
 int trkcount;
 int blksize;
 int pos = 0;
 int i, j;
 int kl;

 trkcount = cdata->expect.stop_unit - cdata->expect.start_unit + 1;
 max_entries = trkcount * rpt_max;

 for (i = cdata->expect.start_unit; i <= cdata->expect.stop_unit; i++) {

  if (tpm) {
   while (fmt_buffer[pos].record == 0 &&
          fmt_buffer[pos].dl == 0) {
    if (pos++ > max_entries)
     break;
   }
  } else {
   if (i != cdata->expect.start_unit)
    pos += rpt_max - count;
  }


  set_ch_t(&geo, i / trk_per_cyl, i % trk_per_cyl);


  count = dasd_eckd_count_records(fmt_buffer, pos, pos + rpt_max);

  if (count < rpt_exp) {
   cdata->result = DASD_FMT_ERR_TOO_FEW_RECORDS;
   break;
  }
  if (count > rpt_exp) {
   cdata->result = DASD_FMT_ERR_TOO_MANY_RECORDS;
   break;
  }

  for (j = 0; j < count; j++, pos++) {
   blksize = cdata->expect.blksize;
   kl = 0;





   if ((cdata->expect.intensity & 0x08) &&
       geo.cyl == 0 && geo.head == 0) {
    if (j < 3) {
     blksize = sizes_trk0[j] - 4;
     kl = 4;
    }
   }
   if ((cdata->expect.intensity & 0x08) &&
       geo.cyl == 0 && geo.head == 1) {
    blksize = LABEL_SIZE - 44;
    kl = 44;
   }


   if (fmt_buffer[pos].dl != blksize) {
    cdata->result = DASD_FMT_ERR_BLKSIZE;
    goto out;
   }

   if (fmt_buffer[pos].kl != kl) {
    cdata->result = DASD_FMT_ERR_KEY_LENGTH;
    goto out;
   }

   if (fmt_buffer[pos].cyl != geo.cyl ||
       fmt_buffer[pos].head != geo.head ||
       fmt_buffer[pos].record != (j + 1)) {
    cdata->result = DASD_FMT_ERR_RECORD_ID;
    goto out;
   }
  }
 }

out:




 if (!cdata->result) {
  i--;
  pos--;
 }

 cdata->unit = i;
 cdata->num_records = count;
 cdata->rec = fmt_buffer[pos].record;
 cdata->blksize = fmt_buffer[pos].dl;
 cdata->key_length = fmt_buffer[pos].kl;
}
