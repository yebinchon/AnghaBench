#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pcmcia_device {int /*<<< orphan*/ * priv; } ;
struct TYPE_2__ {int stop; } ;
typedef  TYPE_1__ scsi_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  NSP_DEBUG_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pcmcia_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,struct pcmcia_device*) ; 

__attribute__((used)) static void FUNC3(struct pcmcia_device *link)
{
	FUNC2(NSP_DEBUG_INIT, "in, link=0x%p", link);

	((scsi_info_t *)link->priv)->stop = 1;
	FUNC1(link);

	FUNC0(link->priv);
	link->priv = NULL;
}