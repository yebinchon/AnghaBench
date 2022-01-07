
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edc {int timestart; } ;


 int jiffies ;

__attribute__((used)) static inline
void edc_init(struct edc *edc)
{
 edc->timestart = jiffies;
}
