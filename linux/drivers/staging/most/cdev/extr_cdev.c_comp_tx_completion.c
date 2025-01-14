
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct most_interface {int num_channels; } ;
struct comp_channel {int wq; } ;


 int EINVAL ;
 int ENXIO ;
 struct comp_channel* get_channel (struct most_interface*,int) ;
 int pr_info (char*) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static int comp_tx_completion(struct most_interface *iface, int channel_id)
{
 struct comp_channel *c;

 if (!iface) {
  pr_info("Bad interface pointer\n");
  return -EINVAL;
 }
 if ((channel_id < 0) || (channel_id >= iface->num_channels)) {
  pr_info("Channel ID out of range\n");
  return -EINVAL;
 }

 c = get_channel(iface, channel_id);
 if (!c)
  return -ENXIO;
 wake_up_interruptible(&c->wq);
 return 0;
}
