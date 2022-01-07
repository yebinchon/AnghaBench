
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;


 int memcpy (void*,void*,size_t) ;

__attribute__((used)) static ssize_t
memcpy_copy_callback(
 void *context, void *dest,
 size_t offset, size_t maxsize)
{
 memcpy(dest + offset, context + offset, maxsize);
 return maxsize;
}
