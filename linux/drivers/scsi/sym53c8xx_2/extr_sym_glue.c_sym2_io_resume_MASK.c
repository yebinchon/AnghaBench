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
struct sym_data {scalar_t__ io_reset; } ;
struct pci_dev {int dummy; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 struct Scsi_Host* FUNC1 (struct pci_dev*) ; 
 struct sym_data* FUNC2 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct pci_dev *pdev)
{
	struct Scsi_Host *shost = FUNC1(pdev);
	struct sym_data *sym_data = FUNC2(shost);

	FUNC3(shost->host_lock);
	if (sym_data->io_reset)
		FUNC0(sym_data->io_reset);
	FUNC4(shost->host_lock);
}