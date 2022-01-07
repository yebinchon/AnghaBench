
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct esas2r_target {int dummy; } ;
struct esas2r_adapter {struct esas2r_target* targetdb; } ;



__attribute__((used)) static inline u16 esas2r_targ_get_id(struct esas2r_target *t,
         struct esas2r_adapter *a)
{
 return (u16)(uintptr_t)(t - a->targetdb);
}
