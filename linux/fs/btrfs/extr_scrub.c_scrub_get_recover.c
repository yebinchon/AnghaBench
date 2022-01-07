
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scrub_recover {int refs; } ;


 int refcount_inc (int *) ;

__attribute__((used)) static inline void scrub_get_recover(struct scrub_recover *recover)
{
 refcount_inc(&recover->refs);
}
