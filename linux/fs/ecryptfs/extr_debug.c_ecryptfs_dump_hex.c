
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DUMP_PREFIX_OFFSET ;
 int KERN_DEBUG ;
 int ecryptfs_verbosity ;
 int print_hex_dump (int ,char*,int ,int,int,char*,int,int) ;

void ecryptfs_dump_hex(char *data, int bytes)
{
 if (ecryptfs_verbosity < 1)
  return;

 print_hex_dump(KERN_DEBUG, "ecryptfs: ", DUMP_PREFIX_OFFSET, 16, 1,
         data, bytes, 0);
}
