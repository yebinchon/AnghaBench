
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* KERN_CRIT ;
 char const* KERN_DEBUG ;
 char const* KERN_INFO ;
 char const* KERN_WARNING ;

__attribute__((used)) static const char *translate_esas2r_event_level_to_kernel(const long level)
{
 switch (level) {
 case 132:
  return KERN_CRIT;

 case 128:
  return KERN_WARNING;

 case 130:
  return KERN_INFO;

 case 131:
 case 129:
 default:
  return KERN_DEBUG;
 }
}
