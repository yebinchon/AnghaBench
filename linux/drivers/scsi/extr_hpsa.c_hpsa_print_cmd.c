
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct ctlr_info {TYPE_4__* pdev; } ;
struct TYPE_6__ {int * LunAddrBytes; } ;
struct TYPE_7__ {TYPE_2__ LUN; } ;
struct TYPE_5__ {int * CDB; } ;
struct CommandList {TYPE_3__ Header; TYPE_1__ Request; } ;
struct TYPE_8__ {int dev; } ;


 int dev_warn (int *,char*,char*,int const*,int const*) ;

__attribute__((used)) static void hpsa_print_cmd(struct ctlr_info *h, char *txt,
    struct CommandList *c)
{
 const u8 *cdb = c->Request.CDB;
 const u8 *lun = c->Header.LUN.LunAddrBytes;

 dev_warn(&h->pdev->dev, "%s: LUN:%8phN CDB:%16phN\n",
   txt, lun, cdb);
}
