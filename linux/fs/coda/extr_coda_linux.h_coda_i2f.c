
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct CodaFid {int dummy; } ;
struct TYPE_2__ {struct CodaFid c_fid; } ;


 TYPE_1__* ITOC (struct inode*) ;

__attribute__((used)) static __inline__ struct CodaFid *coda_i2f(struct inode *inode)
{
 return &(ITOC(inode)->c_fid);
}
