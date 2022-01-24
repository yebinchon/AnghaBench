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
 int /*<<< orphan*/  ENA ; 
 int /*<<< orphan*/  SCL ; 
 int /*<<< orphan*/  SDA ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(nsp32_hw_data *data)
{
	int val;

	/* read */
	FUNC1(data, ENA, 0);	/* input mode */
	FUNC1(data, SCL, 1);

	val = FUNC0(data, SDA);

	FUNC1(data, SCL, 0);
	FUNC1(data, ENA, 1);	/* output mode */

	return val;
}