
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct most_channel {scalar_t__ is_poisoned; } ;
struct mbo {scalar_t__ status; struct most_channel* context; } ;


 scalar_t__ MBO_E_CLOSE ;
 scalar_t__ MBO_E_INVAL ;
 int arm_mbo (struct mbo*) ;
 int pr_info (char*) ;
 int trash_mbo (struct mbo*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void most_write_completion(struct mbo *mbo)
{
 struct most_channel *c;

 c = mbo->context;
 if (mbo->status == MBO_E_INVAL)
  pr_info("WARN: Tx MBO status: invalid\n");
 if (unlikely(c->is_poisoned || (mbo->status == MBO_E_CLOSE)))
  trash_mbo(mbo);
 else
  arm_mbo(mbo);
}
