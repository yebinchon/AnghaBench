
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CodaFid {int dummy; } ;


 scalar_t__ memcmp (struct CodaFid*,struct CodaFid*,int) ;

__attribute__((used)) static inline int coda_fideq(struct CodaFid *fid1, struct CodaFid *fid2)
{
 return memcmp(fid1, fid2, sizeof(*fid1)) == 0;
}
