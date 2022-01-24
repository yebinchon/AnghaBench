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
struct parport {int dummy; } ;
struct ax_drvdata {int /*<<< orphan*/  spp_spr; } ;

/* Variables and functions */
 unsigned int AX_SPR_ACK ; 
 unsigned int AX_SPR_BUSY ; 
 unsigned int AX_SPR_ERR ; 
 unsigned int AX_SPR_PE ; 
 unsigned int AX_SPR_SLCT ; 
 unsigned int PARPORT_STATUS_ACK ; 
 unsigned int PARPORT_STATUS_BUSY ; 
 unsigned int PARPORT_STATUS_ERROR ; 
 unsigned int PARPORT_STATUS_PAPEROUT ; 
 unsigned int PARPORT_STATUS_SELECT ; 
 struct ax_drvdata* FUNC0 (struct parport*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned char
FUNC2(struct parport *p)
{
	struct ax_drvdata *dd = FUNC0(p);
	unsigned int status = FUNC1(dd->spp_spr);
	unsigned int ret = 0;

	if (status & AX_SPR_BUSY)
		ret |= PARPORT_STATUS_BUSY;

	if (status & AX_SPR_ACK)
		ret |= PARPORT_STATUS_ACK;

	if (status & AX_SPR_ERR)
		ret |= PARPORT_STATUS_ERROR;

	if (status & AX_SPR_SLCT)
		ret |= PARPORT_STATUS_SELECT;

	if (status & AX_SPR_PE)
		ret |= PARPORT_STATUS_PAPEROUT;

	return ret;
}