
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum rproc_crash_type { ____Placeholder_rproc_crash_type } rproc_crash_type ;


 int ARRAY_SIZE (char const**) ;
 char const** rproc_crash_names ;

__attribute__((used)) static const char *rproc_crash_to_string(enum rproc_crash_type type)
{
 if (type < ARRAY_SIZE(rproc_crash_names))
  return rproc_crash_names[type];
 return "unknown";
}
