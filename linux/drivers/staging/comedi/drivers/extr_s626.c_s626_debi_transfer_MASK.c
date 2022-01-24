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
struct comedi_device {int /*<<< orphan*/  class_dev; scalar_t__ mmio; } ;

/* Variables and functions */
 int /*<<< orphan*/  S626_MC2_UPLD_DEBI ; 
 int S626_PSR_DEBI_S ; 
 int /*<<< orphan*/  S626_P_MC2 ; 
 scalar_t__ S626_P_PSR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct comedi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct comedi_device *dev)
{
	static const int timeout = 10000;
	int i;

	/* Initiate upload of shadow RAM to DEBI control register */
	FUNC2(dev, S626_MC2_UPLD_DEBI, S626_P_MC2);

	/*
	 * Wait for completion of upload from shadow RAM to
	 * DEBI control register.
	 */
	for (i = 0; i < timeout; i++) {
		if (FUNC3(dev, S626_MC2_UPLD_DEBI, S626_P_MC2))
			break;
		FUNC4(1);
	}
	if (i == timeout)
		FUNC0(dev->class_dev,
			"Timeout while uploading to DEBI control register\n");

	/* Wait until DEBI transfer is done */
	for (i = 0; i < timeout; i++) {
		if (!(FUNC1(dev->mmio + S626_P_PSR) & S626_PSR_DEBI_S))
			break;
		FUNC4(1);
	}
	if (i == timeout)
		FUNC0(dev->class_dev, "DEBI transfer timeout\n");
}