#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct expansion_card {int dummy; } ;
struct Scsi_Host {int /*<<< orphan*/  irq; scalar_t__ hostdata; } ;
struct TYPE_6__ {int /*<<< orphan*/  issue; int /*<<< orphan*/  disconnected; } ;
struct TYPE_5__ {int /*<<< orphan*/  msgs; } ;
struct TYPE_7__ {scalar_t__ base; scalar_t__ fast; TYPE_2__ queues; TYPE_1__ scsi; } ;
typedef  TYPE_3__ AS_Host ;

/* Variables and functions */
 scalar_t__ PAGE_REG ; 
 struct Scsi_Host* FUNC0 (struct expansion_card*) ; 
 int /*<<< orphan*/  FUNC1 (struct expansion_card*) ; 
 int /*<<< orphan*/  FUNC2 (struct expansion_card*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct expansion_card*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC8 (struct Scsi_Host*) ; 
 int /*<<< orphan*/  FUNC9 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC10(struct expansion_card *ec)
{
	struct Scsi_Host *host = FUNC0(ec);
	AS_Host *ashost = (AS_Host *)host->hostdata;

	FUNC2(ec, NULL);
	FUNC8(host);

	/*
	 * Put card into RESET state
	 */
	FUNC9(0x80, ashost->fast + PAGE_REG);

	FUNC4(host->irq, ashost);

	FUNC5(&ashost->scsi.msgs);
	FUNC6(&ashost->queues.disconnected);
	FUNC6(&ashost->queues.issue);
	FUNC3(ec, ashost->fast);
	FUNC3(ec, ashost->base);
	FUNC7(host);
	FUNC1(ec);
}