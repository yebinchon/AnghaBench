
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 char* ERR_PTR (int ) ;
 int GFP_NOIO ;
 int __GFP_HIGH ;
 char* kasprintf (int,char*,char const*,...) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static char *join(const char *dir, const char *name)
{
 char *buffer;

 if (strlen(name) == 0)
  buffer = kasprintf(GFP_NOIO | __GFP_HIGH, "%s", dir);
 else
  buffer = kasprintf(GFP_NOIO | __GFP_HIGH, "%s/%s", dir, name);
 return (!buffer) ? ERR_PTR(-ENOMEM) : buffer;
}
