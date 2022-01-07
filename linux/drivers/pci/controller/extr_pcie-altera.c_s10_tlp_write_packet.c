
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct altera_pcie {int dummy; } ;


 int RP_TX_EOP ;
 int RP_TX_SOP ;
 int s10_tlp_write_tx (struct altera_pcie*,int ,int ) ;

__attribute__((used)) static void s10_tlp_write_packet(struct altera_pcie *pcie, u32 *headers,
     u32 data, bool dummy)
{
 s10_tlp_write_tx(pcie, headers[0], RP_TX_SOP);
 s10_tlp_write_tx(pcie, headers[1], 0);
 s10_tlp_write_tx(pcie, headers[2], 0);
 s10_tlp_write_tx(pcie, data, RP_TX_EOP);
}
