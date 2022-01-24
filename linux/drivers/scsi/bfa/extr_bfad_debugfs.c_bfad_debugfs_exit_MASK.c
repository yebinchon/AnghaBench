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
struct bfad_s {int /*<<< orphan*/ ** bfad_dentry_files; } ;
struct bfad_port_s {int /*<<< orphan*/ * port_debugfs_root; struct bfad_s* bfad; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bfa_debugfs_port_count ; 
 int /*<<< orphan*/ * bfa_debugfs_root ; 
 int /*<<< orphan*/  bfad_debugfs_files ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

inline void
FUNC4(struct bfad_port_s *port)
{
	struct bfad_s *bfad = port->bfad;
	int i;

	for (i = 0; i < FUNC0(bfad_debugfs_files); i++) {
		if (bfad->bfad_dentry_files[i]) {
			FUNC3(bfad->bfad_dentry_files[i]);
			bfad->bfad_dentry_files[i] = NULL;
		}
	}

	/* Remove the pci_dev debugfs directory for the port */
	if (port->port_debugfs_root) {
		FUNC3(port->port_debugfs_root);
		port->port_debugfs_root = NULL;
		FUNC1(&bfa_debugfs_port_count);
	}

	/* Remove the BFA debugfs root directory */
	if (FUNC2(&bfa_debugfs_port_count) == 0) {
		FUNC3(bfa_debugfs_root);
		bfa_debugfs_root = NULL;
	}
}