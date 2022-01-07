
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
struct bus_id_priv {int status; } ;
typedef int ssize_t ;


 int BUSID_SIZE ;
 int EINVAL ;
 int ENODEV ;
 int STUB_BUSID_OTHER ;
 int del_match_busid (char*) ;
 int do_rebind (char*,struct bus_id_priv*) ;
 struct bus_id_priv* get_busid_priv (char const*) ;
 int put_busid_priv (struct bus_id_priv*) ;
 int strnlen (char const*,int) ;

__attribute__((used)) static ssize_t rebind_store(struct device_driver *dev, const char *buf,
     size_t count)
{
 int ret;
 int len;
 struct bus_id_priv *bid;


 len = strnlen(buf, BUSID_SIZE);

 if (!(len < BUSID_SIZE))
  return -EINVAL;

 bid = get_busid_priv(buf);
 if (!bid)
  return -ENODEV;


 bid->status = STUB_BUSID_OTHER;

 put_busid_priv(bid);

 ret = do_rebind((char *) buf, bid);
 if (ret < 0)
  return ret;


 del_match_busid((char *) buf);

 return count;
}
