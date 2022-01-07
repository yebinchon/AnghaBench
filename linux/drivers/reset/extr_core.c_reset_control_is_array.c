
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reset_control {int array; } ;



__attribute__((used)) static inline bool reset_control_is_array(struct reset_control *rstc)
{
 return rstc->array;
}
