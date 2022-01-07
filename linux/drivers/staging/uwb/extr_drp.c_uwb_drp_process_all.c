
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uwb_rc_evt_drp {void* ie_data; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;
struct uwb_rc {TYPE_1__ uwb_dev; } ;
struct uwb_ie_hdr {int element_id; } ;
struct uwb_ie_drp_avail {int dummy; } ;
struct uwb_ie_drp {int dummy; } ;
struct uwb_dev {int dummy; } ;




 int dev_warn (struct device*,char*,...) ;
 int uwb_drp_availability_process (struct uwb_rc*,struct uwb_dev*,struct uwb_ie_drp_avail*) ;
 int uwb_drp_process (struct uwb_rc*,struct uwb_rc_evt_drp*,struct uwb_dev*,struct uwb_ie_drp*) ;
 struct uwb_ie_hdr* uwb_ie_next (void**,size_t*) ;

__attribute__((used)) static
void uwb_drp_process_all(struct uwb_rc *rc, struct uwb_rc_evt_drp *drp_evt,
    size_t ielen, struct uwb_dev *src_dev)
{
 struct device *dev = &rc->uwb_dev.dev;
 struct uwb_ie_hdr *ie_hdr;
 void *ptr;

 ptr = drp_evt->ie_data;
 for (;;) {
  ie_hdr = uwb_ie_next(&ptr, &ielen);
  if (!ie_hdr)
   break;

  switch (ie_hdr->element_id) {
  case 128:
   uwb_drp_availability_process(rc, src_dev, (struct uwb_ie_drp_avail *)ie_hdr);
   break;
  case 129:
   uwb_drp_process(rc, drp_evt, src_dev, (struct uwb_ie_drp *)ie_hdr);
   break;
  default:
   dev_warn(dev, "unexpected IE in DRP notification\n");
   break;
  }
 }

 if (ielen > 0)
  dev_warn(dev, "%d octets remaining in DRP notification\n",
    (int)ielen);
}
