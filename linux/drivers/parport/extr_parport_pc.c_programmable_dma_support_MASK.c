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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct parport*) ; 
 int /*<<< orphan*/  FUNC1 (struct parport*) ; 
 int /*<<< orphan*/  ECR_CNF ; 
 int /*<<< orphan*/  FUNC2 (struct parport*,unsigned char) ; 
 int PARPORT_DMA_NONE ; 
 int /*<<< orphan*/  FUNC3 (struct parport*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct parport *p)
{
	unsigned char oecr = FUNC4(FUNC1(p));
	int dma;

	FUNC3(p, ECR_CNF);

	dma = FUNC4(FUNC0(p)) & 0x07;
	/* 000: Indicates jumpered 8-bit DMA if read-only.
	   100: Indicates jumpered 16-bit DMA if read-only. */
	if ((dma & 0x03) == 0)
		dma = PARPORT_DMA_NONE;

	FUNC2(p, oecr);
	return dma;
}