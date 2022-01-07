
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bq24257_state {int status; int fault; int power_good; } ;
struct bq24257_device {scalar_t__ pg; } ;





 int F_FAULT ;
 int F_STAT ;
 int bq24257_field_read (struct bq24257_device*,int ) ;
 int gpiod_get_value_cansleep (scalar_t__) ;

__attribute__((used)) static int bq24257_get_chip_state(struct bq24257_device *bq,
      struct bq24257_state *state)
{
 int ret;

 ret = bq24257_field_read(bq, F_STAT);
 if (ret < 0)
  return ret;

 state->status = ret;

 ret = bq24257_field_read(bq, F_FAULT);
 if (ret < 0)
  return ret;

 state->fault = ret;

 if (bq->pg)
  state->power_good = !gpiod_get_value_cansleep(bq->pg);
 else
  switch (state->fault) {
  case 129:
  case 128:
  case 130:
   state->power_good = 0;
   break;
  default:
   state->power_good = 1;
  }

 return 0;
}
