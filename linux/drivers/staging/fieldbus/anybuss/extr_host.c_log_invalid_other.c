
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct device {int dummy; } ;
struct anybus_mbox_hdr {int * extended; } ;


 int ARRAY_SIZE (int *) ;
 int be16_to_cpu (int ) ;
 int dev_err (struct device*,char*,int ) ;

__attribute__((used)) static void log_invalid_other(struct device *dev,
         struct anybus_mbox_hdr *hdr)
{
 size_t ext_offs = ARRAY_SIZE(hdr->extended) - 1;
 u16 code = be16_to_cpu(hdr->extended[ext_offs]);

 dev_err(dev, "   Invalid other: [0x%02X]", code);
}
