
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_handle {struct input_dev* dev; } ;
struct input_dev {int sndbit; int evbit; } ;


 int EV_SND ;
 int SND_BELL ;
 int SND_TONE ;
 int input_inject_event (struct input_handle*,int ,int ,int) ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static int kd_sound_helper(struct input_handle *handle, void *data)
{
 unsigned int *hz = data;
 struct input_dev *dev = handle->dev;

 if (test_bit(EV_SND, dev->evbit)) {
  if (test_bit(SND_TONE, dev->sndbit)) {
   input_inject_event(handle, EV_SND, SND_TONE, *hz);
   if (*hz)
    return 0;
  }
  if (test_bit(SND_BELL, dev->sndbit))
   input_inject_event(handle, EV_SND, SND_BELL, *hz ? 1 : 0);
 }

 return 0;
}
