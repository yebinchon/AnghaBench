
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_ATOMIC ;
 char* kasprintf (int ,char*,char*,char const*) ;
 int kfree (char*) ;
 char* kstrdup (char const*,int ) ;

__attribute__((used)) static void target_append_str(char **str, const char *txt)
{
 char *prev = *str;

 *str = *str ? kasprintf(GFP_ATOMIC, "%s,%s", *str, txt) :
  kstrdup(txt, GFP_ATOMIC);
 kfree(prev);
}
