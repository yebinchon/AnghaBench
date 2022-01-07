
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;


 size_t EIO ;

__attribute__((used)) static ssize_t
copy_message_data(
 ssize_t (*copy_callback)(void *context, void *dest,
     size_t offset, size_t maxsize),
 void *context,
 void *dest,
 size_t size)
{
 size_t pos = 0;

 while (pos < size) {
  ssize_t callback_result;
  size_t max_bytes = size - pos;

  callback_result =
   copy_callback(context, dest + pos,
          pos, max_bytes);

  if (callback_result < 0)
   return callback_result;

  if (!callback_result)
   return -EIO;

  if (callback_result > max_bytes)
   return -EIO;

  pos += callback_result;
 }

 return size;
}
