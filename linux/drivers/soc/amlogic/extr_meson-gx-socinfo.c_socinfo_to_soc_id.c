
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {unsigned int id; char const* name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* soc_ids ;
 unsigned int socinfo_to_major (int ) ;

__attribute__((used)) static const char *socinfo_to_soc_id(u32 socinfo)
{
 unsigned int id = socinfo_to_major(socinfo);
 int i;

 for (i = 0 ; i < ARRAY_SIZE(soc_ids) ; ++i) {
  if (soc_ids[i].id == id)
   return soc_ids[i].name;
 }

 return "Unknown";
}
