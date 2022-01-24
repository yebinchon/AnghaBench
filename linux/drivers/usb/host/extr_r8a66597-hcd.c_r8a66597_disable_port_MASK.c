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
typedef  int u16 ;
struct r8a66597 {int dummy; } ;

/* Variables and functions */
 int DCFM ; 
 int DRPD ; 
 int EDGESTS ; 
 int HSE ; 
 int /*<<< orphan*/  SOFCFG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct r8a66597*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct r8a66597*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct r8a66597*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct r8a66597*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct r8a66597 *r8a66597, int port)
{
	u16 val, tmp;

	FUNC6(r8a66597, 0, FUNC0(port));
	FUNC6(r8a66597, 0, FUNC1(port));

	FUNC4(r8a66597, port, 0);

	do {
		tmp = FUNC5(r8a66597, SOFCFG) & EDGESTS;
		FUNC7(640);
	} while (tmp == EDGESTS);

	val = port ? DRPD : DCFM | DRPD;
	FUNC3(r8a66597, val, FUNC2(port));
	FUNC3(r8a66597, HSE, FUNC2(port));
}