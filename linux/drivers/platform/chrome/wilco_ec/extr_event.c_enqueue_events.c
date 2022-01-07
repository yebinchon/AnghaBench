
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u32 ;
struct event_device_data {int wq; int queue_lock; int events; } ;
struct ec_event {int dummy; } ;
struct acpi_device {int dev; struct event_device_data* driver_data; } ;


 size_t EC_ACPI_MAX_EVENT_WORDS ;
 int ENOMEM ;
 int EOVERFLOW ;
 int GFP_KERNEL ;
 int dev_err (int *,char*,size_t,size_t) ;
 size_t ec_event_num_words (struct ec_event*) ;
 size_t ec_event_size (struct ec_event*) ;
 struct ec_event* event_queue_push (int ,struct ec_event*) ;
 int kfree (struct ec_event*) ;
 struct ec_event* kmemdup (struct ec_event*,size_t,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static int enqueue_events(struct acpi_device *adev, const u8 *buf, u32 length)
{
 struct event_device_data *dev_data = adev->driver_data;
 struct ec_event *event, *queue_event, *old_event;
 size_t num_words, event_size;
 u32 offset = 0;

 while (offset < length) {
  event = (struct ec_event *)(buf + offset);

  num_words = ec_event_num_words(event);
  event_size = ec_event_size(event);
  if (num_words > EC_ACPI_MAX_EVENT_WORDS) {
   dev_err(&adev->dev, "Too many event words: %zu > %d\n",
    num_words, EC_ACPI_MAX_EVENT_WORDS);
   return -EOVERFLOW;
  }


  if ((offset + event_size) > length) {
   dev_err(&adev->dev, "Event exceeds buffer: %zu > %d\n",
    offset + event_size, length);
   return -EOVERFLOW;
  }


  offset += event_size;


  queue_event = kmemdup(event, event_size, GFP_KERNEL);
  if (!queue_event)
   return -ENOMEM;
  spin_lock(&dev_data->queue_lock);
  old_event = event_queue_push(dev_data->events, queue_event);
  spin_unlock(&dev_data->queue_lock);
  kfree(old_event);
  wake_up_interruptible(&dev_data->wq);
 }

 return 0;
}
