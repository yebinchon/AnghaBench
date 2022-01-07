
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fqd_sz ;

unsigned int qm_get_fqid_maxcnt(void)
{
 return fqd_sz / 64;
}
