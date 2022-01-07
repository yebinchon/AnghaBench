
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zorro_dev {int slotsize; int slotaddr; int rom; } ;
struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct bin_attribute {int dummy; } ;
struct ConfigDev {void* cd_BoardSize; void* cd_BoardAddr; void* cd_SlotSize; void* cd_SlotAddr; int cd_Rom; } ;
typedef int ssize_t ;
typedef int loff_t ;
typedef int cd ;


 void* cpu_to_be16 (int ) ;
 void* cpu_to_be32 (int ) ;
 int kobj_to_dev (struct kobject*) ;
 int memory_read_from_buffer (char*,size_t,int *,struct ConfigDev*,int) ;
 int memset (struct ConfigDev*,int ,int) ;
 struct zorro_dev* to_zorro_dev (int ) ;
 int zorro_resource_len (struct zorro_dev*) ;
 int zorro_resource_start (struct zorro_dev*) ;

__attribute__((used)) static ssize_t zorro_read_config(struct file *filp, struct kobject *kobj,
     struct bin_attribute *bin_attr,
     char *buf, loff_t off, size_t count)
{
 struct zorro_dev *z = to_zorro_dev(kobj_to_dev(kobj));
 struct ConfigDev cd;


 memset(&cd, 0, sizeof(cd));
 cd.cd_Rom = z->rom;
 cd.cd_SlotAddr = cpu_to_be16(z->slotaddr);
 cd.cd_SlotSize = cpu_to_be16(z->slotsize);
 cd.cd_BoardAddr = cpu_to_be32(zorro_resource_start(z));
 cd.cd_BoardSize = cpu_to_be32(zorro_resource_len(z));

 return memory_read_from_buffer(buf, count, &off, &cd, sizeof(cd));
}
