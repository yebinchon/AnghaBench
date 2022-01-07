
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;


 size_t ARRAY_SIZE (char**) ;
 char** raid_levels ;

__attribute__((used)) static char *pqi_raid_level_to_string(u8 raid_level)
{
 if (raid_level < ARRAY_SIZE(raid_levels))
  return raid_levels[raid_level];

 return "RAID UNKNOWN";
}
