
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;



 char const* kstrdup_const (char const*,int ) ;

__attribute__((used)) static const char *meson_mx_socinfo_soc_id(unsigned int major_ver,
        unsigned int metal_rev)
{
 const char *soc_id;

 switch (major_ver) {
 case 130:
  soc_id = "Meson6 (AML8726-MX)";
  break;

 case 129:
  if (metal_rev == 0x11111112)
   soc_id = "Meson8m2 (S812)";
  else
   soc_id = "Meson8 (S802)";

  break;

 case 128:
  soc_id = "Meson8b (S805)";
  break;

 default:
  soc_id = "Unknown";
  break;
 }

 return kstrdup_const(soc_id, GFP_KERNEL);
}
