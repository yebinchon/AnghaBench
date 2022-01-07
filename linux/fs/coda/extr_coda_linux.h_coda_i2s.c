
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {int c_fid; } ;


 TYPE_1__* ITOC (struct inode*) ;
 char* coda_f2s (int *) ;

__attribute__((used)) static __inline__ char *coda_i2s(struct inode *inode)
{
 return coda_f2s(&(ITOC(inode)->c_fid));
}
