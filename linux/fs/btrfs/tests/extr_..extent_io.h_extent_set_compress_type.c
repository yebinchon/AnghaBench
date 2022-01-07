
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXTENT_BIO_FLAG_SHIFT ;

__attribute__((used)) static inline void extent_set_compress_type(unsigned long *bio_flags,
         int compress_type)
{
 *bio_flags |= compress_type << EXTENT_BIO_FLAG_SHIFT;
}
