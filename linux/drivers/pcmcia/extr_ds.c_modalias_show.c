
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pcmcia_device {int manf_id; int card_id; int func_id; int func; int device_no; scalar_t__ has_func_id; scalar_t__ has_card_id; scalar_t__ has_manf_id; int * prod_id; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int crc32 (int ,int ,int ) ;
 int sprintf (char*,char*,int,int,int,int,int,int,int,int,int) ;
 int strlen (int ) ;
 struct pcmcia_device* to_pcmcia_dev (struct device*) ;

__attribute__((used)) static ssize_t modalias_show(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct pcmcia_device *p_dev = to_pcmcia_dev(dev);
 int i;
 u32 hash[4] = { 0, 0, 0, 0};


 for (i = 0; i < 4; i++) {
  if (!p_dev->prod_id[i])
   continue;
  hash[i] = crc32(0, p_dev->prod_id[i],
    strlen(p_dev->prod_id[i]));
 }
 return sprintf(buf, "pcmcia:m%04Xc%04Xf%02Xfn%02Xpfn%02X"
    "pa%08Xpb%08Xpc%08Xpd%08X\n",
    p_dev->has_manf_id ? p_dev->manf_id : 0,
    p_dev->has_card_id ? p_dev->card_id : 0,
    p_dev->has_func_id ? p_dev->func_id : 0,
    p_dev->func, p_dev->device_no,
    hash[0], hash[1], hash[2], hash[3]);
}
