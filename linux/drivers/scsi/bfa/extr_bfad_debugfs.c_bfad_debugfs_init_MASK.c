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
struct bfad_s {char* pci_name; int /*<<< orphan*/ * bfad_dentry_files; } ;
struct bfad_port_s {void* port_debugfs_root; struct bfad_s* bfad; } ;
struct bfad_debugfs_entry {int /*<<< orphan*/  fops; int /*<<< orphan*/  mode; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int FUNC0 (struct bfad_debugfs_entry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bfa_debugfs_enable ; 
 int /*<<< orphan*/  bfa_debugfs_port_count ; 
 int /*<<< orphan*/ * bfa_debugfs_root ; 
 struct bfad_debugfs_entry* bfad_debugfs_files ; 
 void* FUNC3 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,struct bfad_port_s*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char*) ; 

inline void
FUNC6(struct bfad_port_s *port)
{
	struct bfad_s *bfad = port->bfad;
	const struct bfad_debugfs_entry *file;
	char name[64];
	int i;

	if (!bfa_debugfs_enable)
		return;

	/* Setup the BFA debugfs root directory*/
	if (!bfa_debugfs_root) {
		bfa_debugfs_root = FUNC3("bfa", NULL);
		FUNC2(&bfa_debugfs_port_count, 0);
	}

	/* Setup the pci_dev debugfs directory for the port */
	FUNC5(name, sizeof(name), "pci_dev:%s", bfad->pci_name);
	if (!port->port_debugfs_root) {
		port->port_debugfs_root =
			FUNC3(name, bfa_debugfs_root);

		FUNC1(&bfa_debugfs_port_count);

		for (i = 0; i < FUNC0(bfad_debugfs_files); i++) {
			file = &bfad_debugfs_files[i];
			bfad->bfad_dentry_files[i] =
					FUNC4(file->name,
							file->mode,
							port->port_debugfs_root,
							port,
							file->fops);
		}
	}

	return;
}