
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct idal_buffer* idal_buf; } ;
struct tape_device {TYPE_1__ char_data; } ;
struct idal_buffer {size_t size; } ;


 int DBF_EVENT (int,char*,size_t,size_t) ;
 int EINVAL ;
 int ENOMEM ;
 scalar_t__ IS_ERR (struct idal_buffer*) ;
 size_t MAX_BLOCKSIZE ;
 struct idal_buffer* idal_buffer_alloc (size_t,int ) ;
 int idal_buffer_free (struct idal_buffer*) ;

__attribute__((used)) static int
tapechar_check_idalbuffer(struct tape_device *device, size_t block_size)
{
 struct idal_buffer *new;

 if (device->char_data.idal_buf != ((void*)0) &&
     device->char_data.idal_buf->size == block_size)
  return 0;

 if (block_size > MAX_BLOCKSIZE) {
  DBF_EVENT(3, "Invalid blocksize (%zd > %d)\n",
   block_size, MAX_BLOCKSIZE);
  return -EINVAL;
 }


 new = idal_buffer_alloc(block_size, 0);
 if (IS_ERR(new))
  return -ENOMEM;

 if (device->char_data.idal_buf != ((void*)0))
  idal_buffer_free(device->char_data.idal_buf);

 device->char_data.idal_buf = new;

 return 0;
}
