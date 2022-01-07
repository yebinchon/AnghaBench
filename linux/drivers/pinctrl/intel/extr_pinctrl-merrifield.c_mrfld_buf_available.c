
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrfld_pinctrl {int dummy; } ;
struct mrfld_family {int protected; } ;


 struct mrfld_family* mrfld_get_family (struct mrfld_pinctrl*,unsigned int) ;

__attribute__((used)) static bool mrfld_buf_available(struct mrfld_pinctrl *mp, unsigned int pin)
{
 const struct mrfld_family *family;

 family = mrfld_get_family(mp, pin);
 if (!family)
  return 0;

 return !family->protected;
}
