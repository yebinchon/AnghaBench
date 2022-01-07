
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int substring_t ;


 int EINVAL ;
 scalar_t__ match_u64 (int *,int *) ;

__attribute__((used)) static int
__nvme_fc_parse_u64(substring_t *sstr, u64 *val)
{
 u64 token64;

 if (match_u64(sstr, &token64))
  return -EINVAL;
 *val = token64;

 return 0;
}
