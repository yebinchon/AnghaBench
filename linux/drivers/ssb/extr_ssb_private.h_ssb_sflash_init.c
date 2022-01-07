
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssb_chipcommon {int dummy; } ;


 int pr_err (char*) ;

__attribute__((used)) static inline int ssb_sflash_init(struct ssb_chipcommon *cc)
{
 pr_err("Serial flash not supported\n");
 return 0;
}
