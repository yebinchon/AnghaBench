
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w1_slave {struct w1_eprom_data* family_data; } ;
struct w1_eprom_data {size_t size; int (* read ) (struct w1_slave*,int ) ;int * eprom; } ;


 int EINVAL ;
 int OFF2PG (unsigned int) ;
 int memcpy (void*,int *,size_t) ;
 int stub1 (struct w1_slave*,int ) ;

__attribute__((used)) static int w1_nvmem_read(void *priv, unsigned int off, void *buf, size_t count)
{
 struct w1_slave *sl = priv;
 struct w1_eprom_data *data = sl->family_data;
 size_t eprom_size = data->size;
 int ret;
 int i;

 if (off > eprom_size)
  return -EINVAL;

 if ((off + count) > eprom_size)
  count = eprom_size - off;

 i = OFF2PG(off);
 do {
  ret = data->read(sl, i++);
  if (ret < 0)
   return ret;
 } while (i < OFF2PG(off + count));

 memcpy(buf, &data->eprom[off], count);
 return 0;
}
