
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {unsigned int major_id; unsigned int pack_id; unsigned int pack_mask; char const* name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* soc_packages ;
 unsigned int socinfo_to_major (int ) ;
 unsigned int socinfo_to_pack (int ) ;

__attribute__((used)) static const char *socinfo_to_package_id(u32 socinfo)
{
 unsigned int pack = socinfo_to_pack(socinfo);
 unsigned int major = socinfo_to_major(socinfo);
 int i;

 for (i = 0 ; i < ARRAY_SIZE(soc_packages) ; ++i) {
  if (soc_packages[i].major_id == major &&
      soc_packages[i].pack_id ==
    (pack & soc_packages[i].pack_mask))
   return soc_packages[i].name;
 }

 return "Unknown";
}
