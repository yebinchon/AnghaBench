
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;



 char const* kasprintf (int ,char*,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static const char *meson_mx_socinfo_revision(unsigned int major_ver,
          unsigned int misc_ver,
          unsigned int metal_rev)
{
 unsigned int minor_ver;

 switch (major_ver) {
 case 130:
  minor_ver = 0xa;
  break;

 case 129:
  if (metal_rev == 0x11111112)
   major_ver = 0x1d;

  if (metal_rev == 0x11111111 || metal_rev == 0x11111112)
   minor_ver = 0xa;
  else if (metal_rev == 0x11111113)
   minor_ver = 0xb;
  else if (metal_rev == 0x11111133)
   minor_ver = 0xc;
  else
   minor_ver = 0xd;

  break;

 case 128:
  if (metal_rev == 0x11111111)
   minor_ver = 0xa;
  else
   minor_ver = 0xb;

  break;

 default:
  minor_ver = 0x0;
  break;
 }

 return kasprintf(GFP_KERNEL, "Rev%X (%x - 0:%X)", minor_ver, major_ver,
    misc_ver);
}
