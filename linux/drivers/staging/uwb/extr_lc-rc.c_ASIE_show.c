
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uwb_rc {int ies_mutex; TYPE_1__* ies; } ;
struct uwb_ie_hdr {scalar_t__ element_id; scalar_t__ length; } ;
struct uwb_dev {struct uwb_rc* rc; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int wIELength; void* IEData; } ;


 int PAGE_SIZE ;
 scalar_t__ UWB_APP_SPEC_IE ;
 size_t le16_to_cpu (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int scnprintf (char*,int ,char*) ;
 struct uwb_dev* to_uwb_dev (struct device*) ;
 int uwb_ie_dump_hex (struct uwb_ie_hdr*,scalar_t__,char*,int ) ;
 struct uwb_ie_hdr* uwb_ie_next (void**,size_t*) ;

__attribute__((used)) static ssize_t ASIE_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 struct uwb_dev *uwb_dev = to_uwb_dev(dev);
 struct uwb_rc *rc = uwb_dev->rc;
 struct uwb_ie_hdr *ie;
 void *ptr;
 size_t len;
 int result = 0;


 result = scnprintf(buf, PAGE_SIZE, "\n");
 mutex_lock(&rc->ies_mutex);

 ptr = rc->ies->IEData;
 len = le16_to_cpu(rc->ies->wIELength);
 for (;;) {
  ie = uwb_ie_next(&ptr, &len);
  if (!ie)
   break;
  if (ie->element_id == UWB_APP_SPEC_IE) {
   result = uwb_ie_dump_hex(ie,
     ie->length + sizeof(struct uwb_ie_hdr),
     buf, PAGE_SIZE);
   break;
  }
 }
 mutex_unlock(&rc->ies_mutex);

 return result;
}
