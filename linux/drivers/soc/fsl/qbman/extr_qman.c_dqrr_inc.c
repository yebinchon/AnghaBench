
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qm_dqrr_entry {int dummy; } ;


 struct qm_dqrr_entry const* dqrr_carryclear (struct qm_dqrr_entry const*) ;

__attribute__((used)) static const struct qm_dqrr_entry *dqrr_inc(const struct qm_dqrr_entry *e)
{
 return dqrr_carryclear(e + 1);
}
