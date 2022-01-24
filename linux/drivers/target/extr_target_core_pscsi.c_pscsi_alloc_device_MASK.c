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
struct se_hba {int dummy; } ;
struct se_device {int dummy; } ;
struct pscsi_dev_virt {struct se_device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct pscsi_dev_virt* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct pscsi_dev_virt*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static struct se_device *FUNC3(struct se_hba *hba,
		const char *name)
{
	struct pscsi_dev_virt *pdv;

	pdv = FUNC0(sizeof(struct pscsi_dev_virt), GFP_KERNEL);
	if (!pdv) {
		FUNC2("Unable to allocate memory for struct pscsi_dev_virt\n");
		return NULL;
	}

	FUNC1("PSCSI: Allocated pdv: %p for %s\n", pdv, name);
	return &pdv->dev;
}