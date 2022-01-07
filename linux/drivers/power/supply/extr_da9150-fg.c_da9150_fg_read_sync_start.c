
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct da9150_fg {int dev; int io_lock; } ;


 int DA9150_QIF_SYNC ;
 int DA9150_QIF_SYNC_RETRIES ;
 int DA9150_QIF_SYNC_SIZE ;
 int DA9150_QIF_SYNC_TIMEOUT ;
 scalar_t__ da9150_fg_read_attr (struct da9150_fg*,int ,int ) ;
 int da9150_fg_write_attr (struct da9150_fg*,int ,int ,int ) ;
 int dev_err (int ,char*) ;
 int mutex_lock (int *) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void da9150_fg_read_sync_start(struct da9150_fg *fg)
{
 int i = 0;
 u32 res = 0;

 mutex_lock(&fg->io_lock);


 res = da9150_fg_read_attr(fg, DA9150_QIF_SYNC,
      DA9150_QIF_SYNC_SIZE);
 if (res > 0)
  da9150_fg_write_attr(fg, DA9150_QIF_SYNC,
         DA9150_QIF_SYNC_SIZE, 0);


 res = 0;
 while ((res == 0) && (i++ < DA9150_QIF_SYNC_RETRIES)) {
  usleep_range(DA9150_QIF_SYNC_TIMEOUT,
        DA9150_QIF_SYNC_TIMEOUT * 2);
  res = da9150_fg_read_attr(fg, DA9150_QIF_SYNC,
       DA9150_QIF_SYNC_SIZE);
 }


 if (res == 0)
  dev_err(fg->dev, "Failed to perform QIF read sync!\n");
}
