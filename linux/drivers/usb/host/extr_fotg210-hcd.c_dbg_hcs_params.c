
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct fotg210_hcd {TYPE_1__* caps; } ;
struct TYPE_2__ {int hcs_params; } ;


 int HCS_N_PORTS (int ) ;
 int fotg210_dbg (struct fotg210_hcd*,char*,char*,int ,int ) ;
 int fotg210_readl (struct fotg210_hcd*,int *) ;

__attribute__((used)) static void dbg_hcs_params(struct fotg210_hcd *fotg210, char *label)
{
 u32 params = fotg210_readl(fotg210, &fotg210->caps->hcs_params);

 fotg210_dbg(fotg210, "%s hcs_params 0x%x ports=%d\n", label, params,
   HCS_N_PORTS(params));
}
