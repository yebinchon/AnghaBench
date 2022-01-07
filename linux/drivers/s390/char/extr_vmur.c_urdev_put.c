
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urdev {int ref_count; } ;


 scalar_t__ refcount_dec_and_test (int *) ;
 int urdev_free (struct urdev*) ;

__attribute__((used)) static void urdev_put(struct urdev *urd)
{
 if (refcount_dec_and_test(&urd->ref_count))
  urdev_free(urd);
}
