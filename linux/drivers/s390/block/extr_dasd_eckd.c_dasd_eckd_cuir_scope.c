
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dasd_device {TYPE_1__* path; } ;
struct dasd_cuir_message {unsigned long ned_map; int* neq_map; } ;
struct dasd_conf_data {int gneq; int * neds; } ;
typedef int __u8 ;
struct TYPE_2__ {struct dasd_conf_data* conf_data; } ;


 int clear_bit (unsigned int,unsigned long*) ;
 struct dasd_conf_data* dasd_eckd_get_ref_conf (struct dasd_device*,int,struct dasd_cuir_message*) ;
 int ffs (unsigned long) ;
 scalar_t__ memcmp (char*,char*,int) ;

__attribute__((used)) static int dasd_eckd_cuir_scope(struct dasd_device *device, __u8 lpum,
    struct dasd_cuir_message *cuir)
{
 struct dasd_conf_data *ref_conf_data;
 unsigned long bitmask = 0, mask = 0;
 struct dasd_conf_data *conf_data;
 unsigned int pos, path;
 char *ref_gneq, *gneq;
 char *ref_ned, *ned;
 int tbcpm = 0;



 if (!cuir->ned_map ||
     !(cuir->neq_map[0] | cuir->neq_map[1] | cuir->neq_map[2]))
  return lpum;


 ref_conf_data = dasd_eckd_get_ref_conf(device, lpum, cuir);

 pos = 8 - ffs(cuir->ned_map);
 ref_ned = (char *)&ref_conf_data->neds[pos];
 ref_gneq = (char *)&ref_conf_data->gneq;

 mask = cuir->neq_map[2];
 mask |= cuir->neq_map[1] << 8;
 mask |= cuir->neq_map[0] << 16;

 for (path = 0; path < 8; path++) {

  bitmask = mask;
  conf_data = device->path[path].conf_data;
  pos = 8 - ffs(cuir->ned_map);
  ned = (char *) &conf_data->neds[pos];

  if (memcmp(ref_ned, ned, sizeof(*ned)) != 0)
   continue;
  gneq = (char *)&conf_data->gneq;



  while (bitmask) {
   pos = ffs(bitmask) - 1;
   if (memcmp(&ref_gneq[31 - pos], &gneq[31 - pos], 1)
       != 0)
    break;
   clear_bit(pos, &bitmask);
  }
  if (bitmask)
   continue;


  tbcpm |= 0x80 >> path;
 }
 return tbcpm;
}
