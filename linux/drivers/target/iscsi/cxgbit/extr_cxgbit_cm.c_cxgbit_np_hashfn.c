
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxgbit_np {int dummy; } ;


 int NP_INFO_HASH_SIZE ;

__attribute__((used)) static int cxgbit_np_hashfn(const struct cxgbit_np *cnp)
{
 return ((unsigned long)cnp >> 10) & (NP_INFO_HASH_SIZE - 1);
}
