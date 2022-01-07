
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct nvmf_ctrl_options {unsigned int mask; } ;
struct TYPE_3__ {unsigned int token; int pattern; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 TYPE_1__* opt_tokens ;
 int pr_warn (char*,int ) ;

__attribute__((used)) static int nvmf_check_required_opts(struct nvmf_ctrl_options *opts,
  unsigned int required_opts)
{
 if ((opts->mask & required_opts) != required_opts) {
  int i;

  for (i = 0; i < ARRAY_SIZE(opt_tokens); i++) {
   if ((opt_tokens[i].token & required_opts) &&
       !(opt_tokens[i].token & opts->mask)) {
    pr_warn("missing parameter '%s'\n",
     opt_tokens[i].pattern);
   }
  }

  return -EINVAL;
 }

 return 0;
}
