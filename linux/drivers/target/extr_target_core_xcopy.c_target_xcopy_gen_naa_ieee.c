
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_device {int dummy; } ;


 int spc_parse_naa_6h_vendor_specific (struct se_device*,unsigned char*) ;

__attribute__((used)) static int target_xcopy_gen_naa_ieee(struct se_device *dev, unsigned char *buf)
{
 int off = 0;

 buf[off++] = (0x6 << 4);
 buf[off++] = 0x01;
 buf[off++] = 0x40;
 buf[off] = (0x5 << 4);

 spc_parse_naa_6h_vendor_specific(dev, &buf[off]);
 return 0;
}
