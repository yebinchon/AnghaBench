
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gemini_pmx {int nconfs; struct gemini_pin_conf* confs; } ;
struct gemini_pin_conf {unsigned int pin; } ;



__attribute__((used)) static const struct gemini_pin_conf *gemini_get_pin_conf(struct gemini_pmx *pmx,
        unsigned int pin)
{
 const struct gemini_pin_conf *retconf;
 int i;

 for (i = 0; i < pmx->nconfs; i++) {
  retconf = &pmx->confs[i];
  if (retconf->pin == pin)
   return retconf;
 }
 return ((void*)0);
}
