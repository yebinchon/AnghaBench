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
struct ahc_softc {TYPE_1__* platform_data; } ;
struct TYPE_2__ {int qfrozen; int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALL_CHANNELS ; 
 int /*<<< orphan*/  CAM_LUN_WILDCARD ; 
 int /*<<< orphan*/  CAM_REQUEUE_REQ ; 
 int /*<<< orphan*/  CAM_TARGET_WILDCARD ; 
 int /*<<< orphan*/  ROLE_INITIATOR ; 
 int /*<<< orphan*/  SCB_LIST_NULL ; 
 int /*<<< orphan*/  FUNC0 (struct ahc_softc*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (struct ahc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ahc_softc*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct ahc_softc *ahc)
{
	unsigned long s;

	FUNC0(ahc, &s);
	ahc->platform_data->qfrozen++;
	if (ahc->platform_data->qfrozen == 1) {
		FUNC3(ahc->platform_data->host);

		/* XXX What about Twin channels? */
		FUNC1(ahc, CAM_TARGET_WILDCARD, ALL_CHANNELS,
					CAM_LUN_WILDCARD, SCB_LIST_NULL,
					ROLE_INITIATOR, CAM_REQUEUE_REQ);
	}
	FUNC2(ahc, &s);
}