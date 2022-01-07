
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct fotg210_hcd {TYPE_1__* caps; } ;
struct TYPE_2__ {int hcc_params; } ;


 scalar_t__ HCC_CANPARK (int ) ;
 scalar_t__ HCC_PGM_FRAMELISTLEN (int ) ;
 int fotg210_dbg (struct fotg210_hcd*,char*,char*,int ,char*,char*) ;
 int fotg210_readl (struct fotg210_hcd*,int *) ;

__attribute__((used)) static void dbg_hcc_params(struct fotg210_hcd *fotg210, char *label)
{
 u32 params = fotg210_readl(fotg210, &fotg210->caps->hcc_params);

 fotg210_dbg(fotg210, "%s hcc_params %04x uframes %s%s\n", label,
   params,
   HCC_PGM_FRAMELISTLEN(params) ? "256/512/1024" : "1024",
   HCC_CANPARK(params) ? " park" : "");
}
