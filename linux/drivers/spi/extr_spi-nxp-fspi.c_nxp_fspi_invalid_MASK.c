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
typedef  int u32 ;
struct nxp_fspi {scalar_t__ iobase; } ;

/* Variables and functions */
 scalar_t__ FSPI_MCR0 ; 
 int FSPI_MCR0_SWRST ; 
 int /*<<< orphan*/  POLL_TOUT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct nxp_fspi*,scalar_t__) ; 
 int FUNC2 (struct nxp_fspi*,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nxp_fspi*,int,scalar_t__) ; 

__attribute__((used)) static inline void FUNC4(struct nxp_fspi *f)
{
	u32 reg;
	int ret;

	reg = FUNC1(f, f->iobase + FSPI_MCR0);
	FUNC3(f, reg | FSPI_MCR0_SWRST, f->iobase + FSPI_MCR0);

	/* w1c register, wait unit clear */
	ret = FUNC2(f, f->iobase + FSPI_MCR0,
				   FSPI_MCR0_SWRST, 0, POLL_TOUT, false);
	FUNC0(ret);
}