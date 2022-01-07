
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
typedef size_t ssize_t ;
typedef int busid ;


 int BUSID_SIZE ;
 size_t EINVAL ;
 size_t ENODEV ;
 size_t ENOMEM ;
 scalar_t__ add_match_busid (char*) ;
 scalar_t__ del_match_busid (char*) ;
 int pr_debug (char*,char*) ;
 int strlcpy (char*,char const*,int) ;
 int strncmp (char const*,char*,int) ;

__attribute__((used)) static ssize_t match_busid_store(struct device_driver *dev, const char *buf,
     size_t count)
{
 int len;
 char busid[BUSID_SIZE];

 if (count < 5)
  return -EINVAL;


 len = strlcpy(busid, buf + 4, BUSID_SIZE);
 if (sizeof(busid) <= len)
  return -EINVAL;

 if (!strncmp(buf, "add ", 4)) {
  if (add_match_busid(busid) < 0)
   return -ENOMEM;

  pr_debug("add busid %s\n", busid);
  return count;
 }

 if (!strncmp(buf, "del ", 4)) {
  if (del_match_busid(busid) < 0)
   return -ENODEV;

  pr_debug("del busid %s\n", busid);
  return count;
 }

 return -EINVAL;
}
