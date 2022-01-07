
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int (* w1_slave_found_callback ) (struct w1_master*,int) ;
typedef int u8 ;
typedef int u64 ;
struct w1_master {int bus_mutex; } ;
struct ds1wm_data {TYPE_1__* pdev; scalar_t__ read_error; } ;
struct TYPE_2__ {int dev; } ;


 int DS1WM_CMD ;
 int DS1WM_CMD_SRA ;
 int dev_dbg (int *,char*,...) ;
 int dev_err (int *,char*,unsigned int,...) ;
 unsigned char ds1wm_read (struct ds1wm_data*,unsigned char) ;
 scalar_t__ ds1wm_reset (struct ds1wm_data*) ;
 int ds1wm_write (struct ds1wm_data*,int ) ;
 int ds1wm_write_register (struct ds1wm_data*,int ,int ) ;
 int fls64 (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void ds1wm_search(void *data, struct w1_master *master_dev,
   u8 search_type, w1_slave_found_callback slave_found)
{
 struct ds1wm_data *ds1wm_data = data;
 int i;
 int ms_discrep_bit = -1;
 u64 r = 0;
 u64 r_prime, d;
 unsigned slaves_found = 0;
 unsigned int pass = 0;

 dev_dbg(&ds1wm_data->pdev->dev, "search begin\n");
 while (1) {
  ++pass;
  if (pass > 100) {
   dev_dbg(&ds1wm_data->pdev->dev,
    "too many attempts (100), search aborted\n");
   return;
  }

  mutex_lock(&master_dev->bus_mutex);
  if (ds1wm_reset(ds1wm_data)) {
   mutex_unlock(&master_dev->bus_mutex);
   dev_dbg(&ds1wm_data->pdev->dev,
    "pass: %d reset error (or no slaves)\n", pass);
   break;
  }

  dev_dbg(&ds1wm_data->pdev->dev,
   "pass: %d r : %0#18llx writing SEARCH_ROM\n", pass, r);
  ds1wm_write(ds1wm_data, search_type);
  dev_dbg(&ds1wm_data->pdev->dev,
   "pass: %d entering ASM\n", pass);
  ds1wm_write_register(ds1wm_data, DS1WM_CMD, DS1WM_CMD_SRA);
  dev_dbg(&ds1wm_data->pdev->dev,
   "pass: %d beginning nibble loop\n", pass);

  r_prime = 0;
  d = 0;


  for (i = 0; i < 16; i++) {

   unsigned char resp, _r, _r_prime, _d;

   _r = (r >> (4*i)) & 0xf;
   _r = ((_r & 0x1) << 1) |
   ((_r & 0x2) << 2) |
   ((_r & 0x4) << 3) |
   ((_r & 0x8) << 4);


   resp = ds1wm_read(ds1wm_data, _r);

   if (ds1wm_data->read_error) {
    dev_err(&ds1wm_data->pdev->dev,
    "pass: %d nibble: %d read error\n", pass, i);
    break;
   }

   _r_prime = ((resp & 0x02) >> 1) |
   ((resp & 0x08) >> 2) |
   ((resp & 0x20) >> 3) |
   ((resp & 0x80) >> 4);

   _d = ((resp & 0x01) >> 0) |
   ((resp & 0x04) >> 1) |
   ((resp & 0x10) >> 2) |
   ((resp & 0x40) >> 3);

   r_prime |= (unsigned long long) _r_prime << (i * 4);
   d |= (unsigned long long) _d << (i * 4);

  }
  if (ds1wm_data->read_error) {
   mutex_unlock(&master_dev->bus_mutex);
   dev_err(&ds1wm_data->pdev->dev,
    "pass: %d read error, retrying\n", pass);
   break;
  }
  dev_dbg(&ds1wm_data->pdev->dev,
   "pass: %d r\': %0#18llx d:%0#18llx\n",
   pass, r_prime, d);
  dev_dbg(&ds1wm_data->pdev->dev,
   "pass: %d nibble loop complete, exiting ASM\n", pass);
  ds1wm_write_register(ds1wm_data, DS1WM_CMD, ~DS1WM_CMD_SRA);
  dev_dbg(&ds1wm_data->pdev->dev,
   "pass: %d resetting bus\n", pass);
  ds1wm_reset(ds1wm_data);
  mutex_unlock(&master_dev->bus_mutex);
  if ((r_prime & ((u64)1 << 63)) && (d & ((u64)1 << 63))) {
   dev_err(&ds1wm_data->pdev->dev,
    "pass: %d bus error, retrying\n", pass);
   continue;
  }


  dev_dbg(&ds1wm_data->pdev->dev,
   "pass: %d found %0#18llx\n", pass, r_prime);
  slave_found(master_dev, r_prime);
  ++slaves_found;
  dev_dbg(&ds1wm_data->pdev->dev,
   "pass: %d complete, preparing next pass\n", pass);




  d &= ~r;

  ms_discrep_bit = fls64(d) - 1;
  dev_dbg(&ds1wm_data->pdev->dev,
   "pass: %d new d:%0#18llx MS discrep bit:%d\n",
   pass, d, ms_discrep_bit);



  if (ms_discrep_bit == -1)
   break;

  r = (r & ~(~0ull << (ms_discrep_bit))) | 1 << ms_discrep_bit;
 }
 dev_dbg(&ds1wm_data->pdev->dev,
  "pass: %d total: %d search done ms d bit pos: %d\n", pass,
  slaves_found, ms_discrep_bit);
}
