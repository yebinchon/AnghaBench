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
typedef  int u16 ;
struct r8a66597 {int max_root_hub; TYPE_1__* pdata; scalar_t__ irq_sense_low; } ;
struct TYPE_2__ {scalar_t__ endian; scalar_t__ vif; } ;

/* Variables and functions */
 int BEMP0 ; 
 int BEMPE ; 
 int /*<<< orphan*/  BEMPENB ; 
 int BIGEND ; 
 int BRDY0 ; 
 int BRDYE ; 
 int /*<<< orphan*/  BRDYENB ; 
 int /*<<< orphan*/  CFIFOSEL ; 
 int /*<<< orphan*/  D0FIFOSEL ; 
 int /*<<< orphan*/  D1FIFOSEL ; 
 int /*<<< orphan*/  INTENB0 ; 
 int /*<<< orphan*/  INTENB1 ; 
 int INTL ; 
 int LDRV ; 
 int NRDYE ; 
 int /*<<< orphan*/  PINCFG ; 
 int SACKE ; 
 int SIGNE ; 
 int /*<<< orphan*/  SOFCFG ; 
 int /*<<< orphan*/  SYSCFG0 ; 
 int TRNENSEL ; 
 int USBE ; 
 int /*<<< orphan*/  FUNC0 (struct r8a66597*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct r8a66597*) ; 
 int /*<<< orphan*/  FUNC2 (struct r8a66597*,int) ; 

__attribute__((used)) static int FUNC3(struct r8a66597 *r8a66597)
{
	int ret, port;
	u16 vif = r8a66597->pdata->vif ? LDRV : 0;
	u16 irq_sense = r8a66597->irq_sense_low ? INTL : 0;
	u16 endian = r8a66597->pdata->endian ? BIGEND : 0;

	ret = FUNC1(r8a66597);
	if (ret < 0)
		return ret;

	FUNC0(r8a66597, vif & LDRV, PINCFG);
	FUNC0(r8a66597, USBE, SYSCFG0);

	FUNC0(r8a66597, BEMPE | NRDYE | BRDYE, INTENB0);
	FUNC0(r8a66597, irq_sense & INTL, SOFCFG);
	FUNC0(r8a66597, BRDY0, BRDYENB);
	FUNC0(r8a66597, BEMP0, BEMPENB);

	FUNC0(r8a66597, endian & BIGEND, CFIFOSEL);
	FUNC0(r8a66597, endian & BIGEND, D0FIFOSEL);
	FUNC0(r8a66597, endian & BIGEND, D1FIFOSEL);
	FUNC0(r8a66597, TRNENSEL, SOFCFG);

	FUNC0(r8a66597, SIGNE | SACKE, INTENB1);

	for (port = 0; port < r8a66597->max_root_hub; port++)
		FUNC2(r8a66597, port);

	return 0;
}