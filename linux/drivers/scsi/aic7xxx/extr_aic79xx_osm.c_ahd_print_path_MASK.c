#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct scb {int dummy; } ;
struct ahd_softc {TYPE_2__* platform_data; } ;
struct TYPE_4__ {TYPE_1__* host; } ;
struct TYPE_3__ {int /*<<< orphan*/  host_no; } ;

/* Variables and functions */
 char FUNC0 (struct ahd_softc*,struct scb*) ; 
 int FUNC1 (struct scb*) ; 
 int FUNC2 (struct ahd_softc*,struct scb*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char,int,int) ; 

void
FUNC4(struct ahd_softc *ahd, struct scb *scb)
{
	FUNC3("(scsi%d:%c:%d:%d): ",
	       ahd->platform_data->host->host_no,
	       scb != NULL ? FUNC0(ahd, scb) : 'X',
	       scb != NULL ? FUNC2(ahd, scb) : -1,
	       scb != NULL ? FUNC1(scb) : -1);
}