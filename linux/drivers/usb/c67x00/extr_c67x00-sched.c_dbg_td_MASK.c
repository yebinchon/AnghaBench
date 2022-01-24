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
struct device {int dummy; } ;
struct c67x00_td {int /*<<< orphan*/  data; int /*<<< orphan*/  residue; int /*<<< orphan*/  retry_cnt; int /*<<< orphan*/  status; int /*<<< orphan*/  ctrl_reg; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  pid_ep; int /*<<< orphan*/  pipe; int /*<<< orphan*/  urb; int /*<<< orphan*/  td_addr; } ;
struct c67x00_hcd {int dummy; } ;

/* Variables and functions */
 struct device* FUNC0 (struct c67x00_hcd*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,char*,...) ; 
 char* FUNC2 (struct c67x00_td*) ; 
 int /*<<< orphan*/  FUNC3 (struct c67x00_td*) ; 
 int /*<<< orphan*/  FUNC4 (struct c67x00_td*) ; 
 int /*<<< orphan*/  FUNC5 (struct c67x00_td*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct c67x00_hcd *c67x00, struct c67x00_td *td, char *msg)
{
	struct device *dev = FUNC0(c67x00);

	FUNC1(dev, "### %s at 0x%04x\n", msg, td->td_addr);
	FUNC1(dev, "urb:      0x%p\n", td->urb);
	FUNC1(dev, "endpoint:   %4d\n", FUNC6(td->pipe));
	FUNC1(dev, "pipeout:    %4d\n", FUNC7(td->pipe));
	FUNC1(dev, "ly_base_addr: 0x%04x\n", FUNC3(td));
	FUNC1(dev, "port_length:  0x%04x\n", FUNC5(td));
	FUNC1(dev, "pid_ep:         0x%02x\n", td->pid_ep);
	FUNC1(dev, "dev_addr:       0x%02x\n", td->dev_addr);
	FUNC1(dev, "ctrl_reg:       0x%02x\n", td->ctrl_reg);
	FUNC1(dev, "status:         0x%02x\n", td->status);
	FUNC1(dev, "retry_cnt:      0x%02x\n", td->retry_cnt);
	FUNC1(dev, "residue:        0x%02x\n", td->residue);
	FUNC1(dev, "next_td_addr: 0x%04x\n", FUNC4(td));
	FUNC1(dev, "data: %*ph\n", FUNC2(td), td->data);
}