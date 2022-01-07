
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvme_subsystem {char* serial; char* model; int vendor_id; } ;
struct nvme_ns_ids {int eui64; int nguid; int uuid; } ;
struct nvme_ns_head {int ns_id; struct nvme_subsystem* subsys; struct nvme_ns_ids ids; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct nvme_ns_head* dev_to_ns_head (struct device*) ;
 scalar_t__ memchr_inv (int ,int ,int) ;
 int sprintf (char*,char*,int,...) ;
 int uuid_is_null (int *) ;

__attribute__((used)) static ssize_t wwid_show(struct device *dev, struct device_attribute *attr,
  char *buf)
{
 struct nvme_ns_head *head = dev_to_ns_head(dev);
 struct nvme_ns_ids *ids = &head->ids;
 struct nvme_subsystem *subsys = head->subsys;
 int serial_len = sizeof(subsys->serial);
 int model_len = sizeof(subsys->model);

 if (!uuid_is_null(&ids->uuid))
  return sprintf(buf, "uuid.%pU\n", &ids->uuid);

 if (memchr_inv(ids->nguid, 0, sizeof(ids->nguid)))
  return sprintf(buf, "eui.%16phN\n", ids->nguid);

 if (memchr_inv(ids->eui64, 0, sizeof(ids->eui64)))
  return sprintf(buf, "eui.%8phN\n", ids->eui64);

 while (serial_len > 0 && (subsys->serial[serial_len - 1] == ' ' ||
      subsys->serial[serial_len - 1] == '\0'))
  serial_len--;
 while (model_len > 0 && (subsys->model[model_len - 1] == ' ' ||
     subsys->model[model_len - 1] == '\0'))
  model_len--;

 return sprintf(buf, "nvme.%04x-%*phN-%*phN-%08x\n", subsys->vendor_id,
  serial_len, subsys->serial, model_len, subsys->model,
  head->ns_id);
}
