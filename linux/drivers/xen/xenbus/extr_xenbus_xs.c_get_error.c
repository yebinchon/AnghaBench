
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int errnum; int errstring; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 int pr_warn (char*,char const*) ;
 scalar_t__ strcmp (char const*,int ) ;
 TYPE_1__* xsd_errors ;

__attribute__((used)) static int get_error(const char *errorstring)
{
 unsigned int i;

 for (i = 0; strcmp(errorstring, xsd_errors[i].errstring) != 0; i++) {
  if (i == ARRAY_SIZE(xsd_errors) - 1) {
   pr_warn("xen store gave: unknown error %s\n",
    errorstring);
   return EINVAL;
  }
 }
 return xsd_errors[i].errnum;
}
