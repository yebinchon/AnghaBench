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
struct tcpci_data {int dummy; } ;
struct tcpci {int dummy; } ;
struct rt1711h_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RT1711H_RTCTRL8 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC1 (struct rt1711h_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rt1711h_chip* FUNC2 (struct tcpci_data*) ; 

__attribute__((used)) static int FUNC3(struct tcpci *tcpci, struct tcpci_data *tdata,
			     bool enable)
{
	struct rt1711h_chip *chip = FUNC2(tdata);

	return FUNC1(chip, RT1711H_RTCTRL8,
			      FUNC0(0, 1, !enable, 2));
}