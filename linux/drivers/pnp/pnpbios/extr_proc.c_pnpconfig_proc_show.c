
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct pnp_isa_config_struc {int isa_rd_data_port; int no_csns; int revision; } ;


 int EIO ;
 scalar_t__ pnp_bios_isapnp_config (struct pnp_isa_config_struc*) ;
 int seq_printf (struct seq_file*,char*,int ,int ,int ) ;

__attribute__((used)) static int pnpconfig_proc_show(struct seq_file *m, void *v)
{
 struct pnp_isa_config_struc pnps;

 if (pnp_bios_isapnp_config(&pnps))
  return -EIO;
 seq_printf(m, "structure_revision %d\n"
        "number_of_CSNs %d\n"
        "ISA_read_data_port 0x%x\n",
     pnps.revision, pnps.no_csns, pnps.isa_rd_data_port);
 return 0;
}
