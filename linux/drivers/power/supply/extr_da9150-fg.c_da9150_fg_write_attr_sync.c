
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct da9150_fg {int dev; int io_lock; } ;


 int DA9150_QIF_SYNC ;
 int DA9150_QIF_SYNC_RETRIES ;
 int DA9150_QIF_SYNC_SIZE ;
 int DA9150_QIF_SYNC_TIMEOUT ;
 scalar_t__ da9150_fg_read_attr (struct da9150_fg*,int ,int ) ;
 int da9150_fg_write_attr (struct da9150_fg*,int ,int ,scalar_t__) ;
 int dev_err (int ,char*,...) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void da9150_fg_write_attr_sync(struct da9150_fg *fg, u8 code, u8 size,
          u32 val)
{
 int i = 0;
 u32 res = 0, sync_val;

 mutex_lock(&fg->io_lock);


 res = da9150_fg_read_attr(fg, DA9150_QIF_SYNC,
      DA9150_QIF_SYNC_SIZE);


 while ((res == 0) && (i++ < DA9150_QIF_SYNC_RETRIES)) {
  usleep_range(DA9150_QIF_SYNC_TIMEOUT,
        DA9150_QIF_SYNC_TIMEOUT * 2);
  res = da9150_fg_read_attr(fg, DA9150_QIF_SYNC,
       DA9150_QIF_SYNC_SIZE);
 }

 if (res == 0) {
  dev_err(fg->dev, "Timeout waiting for existing QIF sync!\n");
  mutex_unlock(&fg->io_lock);
  return;
 }


 da9150_fg_write_attr(fg, code, size, val);


 i = 0;
 sync_val = res;
 while ((res == sync_val) && (i++ < DA9150_QIF_SYNC_RETRIES)) {
  usleep_range(DA9150_QIF_SYNC_TIMEOUT,
        DA9150_QIF_SYNC_TIMEOUT * 2);
  res = da9150_fg_read_attr(fg, DA9150_QIF_SYNC,
       DA9150_QIF_SYNC_SIZE);
 }

 mutex_unlock(&fg->io_lock);


 if (res != (sync_val + 1))
  dev_err(fg->dev, "Error performing QIF sync write for code %d\n",
   code);
}
