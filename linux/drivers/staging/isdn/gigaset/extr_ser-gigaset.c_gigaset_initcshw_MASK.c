#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  release; } ;
struct TYPE_6__ {TYPE_1__ dev; int /*<<< orphan*/  id; int /*<<< orphan*/  name; } ;
struct ser_cardstate {TYPE_3__ dev; } ;
struct TYPE_5__ {struct ser_cardstate* ser; } ;
struct cardstate {int /*<<< orphan*/  write_tasklet; TYPE_2__ hw; int /*<<< orphan*/  minor_index; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GIGASET_MODULENAME ; 
 int /*<<< orphan*/  gigaset_device_release ; 
 int /*<<< orphan*/  gigaset_modem_fill ; 
 int /*<<< orphan*/  FUNC0 (struct ser_cardstate*) ; 
 struct ser_cardstate* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct cardstate *cs)
{
	int rc;
	struct ser_cardstate *scs;

	scs = FUNC1(sizeof(struct ser_cardstate), GFP_KERNEL);
	if (!scs) {
		FUNC3("out of memory\n");
		return -ENOMEM;
	}
	cs->hw.ser = scs;

	cs->hw.ser->dev.name = GIGASET_MODULENAME;
	cs->hw.ser->dev.id = cs->minor_index;
	cs->hw.ser->dev.dev.release = gigaset_device_release;
	rc = FUNC2(&cs->hw.ser->dev);
	if (rc != 0) {
		FUNC3("error %d registering platform device\n", rc);
		FUNC0(cs->hw.ser);
		cs->hw.ser = NULL;
		return rc;
	}

	FUNC4(&cs->write_tasklet,
		     gigaset_modem_fill, (unsigned long) cs);
	return 0;
}