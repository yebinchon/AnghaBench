
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int KERN_WARNING ;
 int ecryptfs_printk (int ,char*,size_t) ;

int ecryptfs_write_packet_length(char *dest, size_t size,
     size_t *packet_size_length)
{
 int rc = 0;

 if (size < 192) {
  dest[0] = size;
  (*packet_size_length) = 1;
 } else if (size < 65536) {
  dest[0] = (((size - 192) / 256) + 192);
  dest[1] = ((size - 192) % 256);
  (*packet_size_length) = 2;
 } else {

  rc = -EINVAL;
  ecryptfs_printk(KERN_WARNING,
    "Unsupported packet size: [%zd]\n", size);
 }
 return rc;
}
