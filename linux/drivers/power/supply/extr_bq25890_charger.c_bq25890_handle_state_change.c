
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bq25890_state {int online; } ;
struct bq25890_device {int dev; int lock; struct bq25890_state state; } ;


 int F_CONV_START ;
 int bq25890_field_write (struct bq25890_device*,int ,int) ;
 int dev_err (int ,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void bq25890_handle_state_change(struct bq25890_device *bq,
     struct bq25890_state *new_state)
{
 int ret;
 struct bq25890_state old_state;

 mutex_lock(&bq->lock);
 old_state = bq->state;
 mutex_unlock(&bq->lock);

 if (!new_state->online) {

  ret = bq25890_field_write(bq, F_CONV_START, 0);
  if (ret < 0)
   goto error;
 } else if (!old_state.online) {

  ret = bq25890_field_write(bq, F_CONV_START, 1);
  if (ret < 0)
   goto error;
 }

 return;

error:
 dev_err(bq->dev, "Error communicating with the chip.\n");
}
