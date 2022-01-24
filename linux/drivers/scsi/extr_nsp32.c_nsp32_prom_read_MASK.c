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
typedef  int /*<<< orphan*/  nsp32_hw_data ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(nsp32_hw_data *data, int romaddr)
{
	int i, val;

	/* start condition */
	FUNC1(data);

	/* device address */
	FUNC3(data, 1);	/* 1 */
	FUNC3(data, 0);	/* 0 */
	FUNC3(data, 1);	/* 1 */
	FUNC3(data, 0);	/* 0 */
	FUNC3(data, 0);	/* A2: 0 (GND) */
	FUNC3(data, 0);	/* A1: 0 (GND) */
	FUNC3(data, 0);	/* A0: 0 (GND) */

	/* R/W: W for dummy write */
	FUNC3(data, 0);

	/* ack */
	FUNC3(data, 0);

	/* word address */
	for (i = 7; i >= 0; i--) {
		FUNC3(data, ((romaddr >> i) & 1));
	}

	/* ack */
	FUNC3(data, 0);

	/* start condition */
	FUNC1(data);

	/* device address */
	FUNC3(data, 1);	/* 1 */
	FUNC3(data, 0);	/* 0 */
	FUNC3(data, 1);	/* 1 */
	FUNC3(data, 0);	/* 0 */
	FUNC3(data, 0);	/* A2: 0 (GND) */
	FUNC3(data, 0);	/* A1: 0 (GND) */
	FUNC3(data, 0);	/* A0: 0 (GND) */

	/* R/W: R */
	FUNC3(data, 1);

	/* ack */
	FUNC3(data, 0);

	/* data... */
	val = 0;
	for (i = 7; i >= 0; i--) {
		val += (FUNC0(data) << i);
	}
	
	/* no ack */
	FUNC3(data, 1);

	/* stop condition */
	FUNC2(data);

	return val;
}