
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIAG_STAT_X250 ;
 int __dia250 (void*,int) ;
 int diag_stat_inc (int ) ;

__attribute__((used)) static inline int dia250(void *iob, int cmd)
{
 diag_stat_inc(DIAG_STAT_X250);
 return __dia250(iob, cmd);
}
