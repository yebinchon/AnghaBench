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
struct Scsi_Host {int dummy; } ;

/* Variables and functions */
 int CH1 ; 
 int CLRSTCNT ; 
 scalar_t__ DATA_LEN ; 
 int /*<<< orphan*/  DMACNTRL0 ; 
 int DMAEN ; 
 int ENBUSFREE ; 
 int ENDMA ; 
 int ENPHASEMIS ; 
 int ENSCSIPERR ; 
 int ENSCSIRST ; 
 int RSTFIFO ; 
 int SCSIEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SIMODE0 ; 
 int /*<<< orphan*/  SIMODE1 ; 
 int /*<<< orphan*/  SXFRCTL0 ; 

__attribute__((used)) static void FUNC1(struct Scsi_Host *shpnt)
{
	FUNC0(DMACNTRL0, RSTFIFO);
	FUNC0(DMACNTRL0, RSTFIFO|ENDMA);

	FUNC0(SXFRCTL0, CH1|CLRSTCNT);
	FUNC0(SXFRCTL0, CH1|SCSIEN|DMAEN);

	FUNC0(SIMODE0, 0);
	FUNC0(SIMODE1, ENSCSIPERR | ENSCSIRST | ENPHASEMIS | ENBUSFREE);

	DATA_LEN=0;
}