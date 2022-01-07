
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;
struct alias_prop {int id; scalar_t__* stem; int alias; int link; struct device_node* np; } ;


 int aliases_lookup ;
 int list_add_tail (int *,int *) ;
 int pr_debug (char*,int ,scalar_t__*,int,struct device_node*) ;
 int strncpy (scalar_t__*,char const*,int) ;

__attribute__((used)) static void of_alias_add(struct alias_prop *ap, struct device_node *np,
    int id, const char *stem, int stem_len)
{
 ap->np = np;
 ap->id = id;
 strncpy(ap->stem, stem, stem_len);
 ap->stem[stem_len] = 0;
 list_add_tail(&ap->link, &aliases_lookup);
 pr_debug("adding DT alias:%s: stem=%s id=%i node=%pOF\n",
   ap->alias, ap->stem, ap->id, np);
}
