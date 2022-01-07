
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_ATOMIC ;
 char* kmalloc (size_t,int ) ;

__attribute__((used)) static char *scsi_log_reserve_buffer(size_t *len)
{
 *len = 128;
 return kmalloc(*len, GFP_ATOMIC);
}
