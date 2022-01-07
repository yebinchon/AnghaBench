
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct aspeed_sig_expr aspeed_sig_expr ;
struct aspeed_pin_desc {struct aspeed_sig_expr*** prios; } ;


 int GFP_KERNEL ;
 int kfree (char*) ;
 char* krealloc (char*,size_t,int ) ;
 int strcat (char*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static char *get_defined_attribute(const struct aspeed_pin_desc *pdesc,
       const char *(*get)(
        const struct aspeed_sig_expr *))
{
 char *found = ((void*)0);
 size_t len = 0;
 const struct aspeed_sig_expr ***prios, **funcs, *expr;

 prios = pdesc->prios;

 while ((funcs = *prios)) {
  while ((expr = *funcs)) {
   const char *str = get(expr);
   size_t delta = strlen(str) + 2;
   char *expanded;

   expanded = krealloc(found, len + delta + 1, GFP_KERNEL);
   if (!expanded) {
    kfree(found);
    return expanded;
   }

   found = expanded;
   found[len] = '\0';
   len += delta;

   strcat(found, str);
   strcat(found, ", ");

   funcs++;
  }
  prios++;
 }

 if (len < 2) {
  kfree(found);
  return ((void*)0);
 }

 found[len - 2] = '\0';

 return found;
}
