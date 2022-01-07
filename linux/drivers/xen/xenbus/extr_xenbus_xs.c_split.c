
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 char** ERR_PTR (int ) ;
 int GFP_NOIO ;
 int __GFP_HIGH ;
 unsigned int count_strings (char*,unsigned int) ;
 int kfree (char*) ;
 char** kmalloc (unsigned int,int) ;
 int memcpy (char**,char*,unsigned int) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static char **split(char *strings, unsigned int len, unsigned int *num)
{
 char *p, **ret;


 *num = count_strings(strings, len);


 ret = kmalloc(*num * sizeof(char *) + len, GFP_NOIO | __GFP_HIGH);
 if (!ret) {
  kfree(strings);
  return ERR_PTR(-ENOMEM);
 }
 memcpy(&ret[*num], strings, len);
 kfree(strings);

 strings = (char *)&ret[*num];
 for (p = strings, *num = 0; p < strings + len; p += strlen(p) + 1)
  ret[(*num)++] = p;

 return ret;
}
