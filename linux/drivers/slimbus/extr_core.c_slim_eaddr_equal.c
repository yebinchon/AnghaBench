
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slim_eaddr {scalar_t__ manf_id; scalar_t__ prod_code; scalar_t__ dev_index; scalar_t__ instance; } ;



__attribute__((used)) static bool slim_eaddr_equal(struct slim_eaddr *a, struct slim_eaddr *b)
{
 return (a->manf_id == b->manf_id &&
  a->prod_code == b->prod_code &&
  a->dev_index == b->dev_index &&
  a->instance == b->instance);
}
