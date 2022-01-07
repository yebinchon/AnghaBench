
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_gen3_chan {int is_otg_channel; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
typedef enum phy_mode { ____Placeholder_phy_mode } phy_mode ;


 size_t EINVAL ;
 size_t EIO ;
 int PHY_MODE_USB_DEVICE ;
 int PHY_MODE_USB_HOST ;
 struct rcar_gen3_chan* dev_get_drvdata (struct device*) ;
 int rcar_gen3_check_id (struct rcar_gen3_chan*) ;
 int rcar_gen3_get_phy_mode (struct rcar_gen3_chan*) ;
 int rcar_gen3_init_for_a_peri (struct rcar_gen3_chan*) ;
 int rcar_gen3_init_for_b_host (struct rcar_gen3_chan*) ;
 int rcar_gen3_init_for_peri (struct rcar_gen3_chan*) ;
 int rcar_gen3_init_from_a_peri_to_a_host (struct rcar_gen3_chan*) ;
 int rcar_gen3_is_any_rphy_initialized (struct rcar_gen3_chan*) ;
 int strlen (char*) ;
 int strncmp (char const*,char*,int ) ;

__attribute__((used)) static ssize_t role_store(struct device *dev, struct device_attribute *attr,
     const char *buf, size_t count)
{
 struct rcar_gen3_chan *ch = dev_get_drvdata(dev);
 bool is_b_device;
 enum phy_mode cur_mode, new_mode;

 if (!ch->is_otg_channel || !rcar_gen3_is_any_rphy_initialized(ch))
  return -EIO;

 if (!strncmp(buf, "host", strlen("host")))
  new_mode = PHY_MODE_USB_HOST;
 else if (!strncmp(buf, "peripheral", strlen("peripheral")))
  new_mode = PHY_MODE_USB_DEVICE;
 else
  return -EINVAL;


 is_b_device = rcar_gen3_check_id(ch);
 cur_mode = rcar_gen3_get_phy_mode(ch);


 if (cur_mode == new_mode)
  return -EINVAL;

 if (new_mode == PHY_MODE_USB_HOST) {
  if (!is_b_device)
   rcar_gen3_init_from_a_peri_to_a_host(ch);
  else
   rcar_gen3_init_for_b_host(ch);
 } else {
  if (!is_b_device)
   rcar_gen3_init_for_a_peri(ch);
  else
   rcar_gen3_init_for_peri(ch);
 }

 return count;
}
