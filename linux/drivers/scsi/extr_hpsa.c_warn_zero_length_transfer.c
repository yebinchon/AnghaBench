
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ctlr_info {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_warn (int *,char*,char const*,int,int *) ;

__attribute__((used)) static inline void warn_zero_length_transfer(struct ctlr_info *h,
      u8 *cdb, int cdb_len,
      const char *func)
{
 dev_warn(&h->pdev->dev,
   "%s: Blocking zero-length request: CDB:%*phN\n",
   func, cdb_len, cdb);
}
