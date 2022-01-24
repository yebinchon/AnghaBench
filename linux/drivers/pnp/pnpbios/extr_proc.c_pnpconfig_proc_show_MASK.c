#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct seq_file {int dummy; } ;
struct pnp_isa_config_struc {int /*<<< orphan*/  isa_rd_data_port; int /*<<< orphan*/  no_csns; int /*<<< orphan*/  revision; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (struct pnp_isa_config_struc*) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct seq_file *m, void *v)
{
	struct pnp_isa_config_struc pnps;

	if (FUNC0(&pnps))
		return -EIO;
	FUNC1(m, "structure_revision %d\n"
		      "number_of_CSNs %d\n"
		      "ISA_read_data_port 0x%x\n",
		   pnps.revision, pnps.no_csns, pnps.isa_rd_data_port);
	return 0;
}