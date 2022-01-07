
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cros_ec_device {int dummy; } ;
struct TYPE_2__ {int (* read ) (scalar_t__,int,char*) ;} ;


 scalar_t__ EC_LPC_ADDR_MEMMAP ;
 unsigned int EC_MEMMAP_SIZE ;
 int EINVAL ;
 TYPE_1__ cros_ec_lpc_ops ;
 int stub1 (scalar_t__,unsigned int,char*) ;
 int stub2 (scalar_t__,int,char*) ;

__attribute__((used)) static int cros_ec_lpc_readmem(struct cros_ec_device *ec, unsigned int offset,
          unsigned int bytes, void *dest)
{
 int i = offset;
 char *s = dest;
 int cnt = 0;

 if (offset >= EC_MEMMAP_SIZE - bytes)
  return -EINVAL;


 if (bytes) {
  cros_ec_lpc_ops.read(EC_LPC_ADDR_MEMMAP + offset, bytes, s);
  return bytes;
 }


 for (; i < EC_MEMMAP_SIZE; i++, s++) {
  cros_ec_lpc_ops.read(EC_LPC_ADDR_MEMMAP + i, 1, s);
  cnt++;
  if (!*s)
   break;
 }

 return cnt;
}
