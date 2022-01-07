
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ __le16 ;


 int EINVAL ;
 scalar_t__ const cpu_to_le16 (int) ;

__attribute__((used)) static int moxa_check_fw(const void *ptr)
{
 const __le16 *lptr = ptr;

 if (*lptr != cpu_to_le16(0x7980))
  return -EINVAL;

 return 0;
}
