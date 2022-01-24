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
typedef  int /*<<< orphan*/  u32 ;
struct asd_ocm_dir {char* sig; scalar_t__ major; int num_de; } ;
struct asd_ha_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int FUNC2 (struct asd_ha_struct*,struct asd_ocm_dir*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct asd_ha_struct *asd_ha,
			    struct asd_ocm_dir *dir, u32 offs)
{
	int err = FUNC2(asd_ha, dir, offs, sizeof(*dir));
	if (err) {
		FUNC0("couldn't read ocm segment\n");
		return err;
	}

	if (dir->sig[0] != 'M' || dir->sig[1] != 'O') {
		FUNC0("no valid dir signature(%c%c) at start of OCM\n",
			    dir->sig[0], dir->sig[1]);
		return -ENOENT;
	}
	if (dir->major != 0) {
		FUNC1("unsupported major version of ocm dir:0x%x\n",
			   dir->major);
		return -ENOENT;
	}
	dir->num_de &= 0xf;
	return 0;
}