#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct max310x_port {int /*<<< orphan*/  clk; TYPE_2__* p; TYPE_1__* devtype; } ;
struct device {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  line; } ;
struct TYPE_6__ {TYPE_3__ port; int /*<<< orphan*/  rs_work; int /*<<< orphan*/  md_work; int /*<<< orphan*/  tx_work; } ;
struct TYPE_5__ {int nr; int /*<<< orphan*/  (* power ) (TYPE_3__*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct max310x_port* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  max310x_lines ; 
 int /*<<< orphan*/  max310x_uart ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_3__*) ; 

__attribute__((used)) static int FUNC6(struct device *dev)
{
	struct max310x_port *s = FUNC3(dev);
	int i;

	for (i = 0; i < s->devtype->nr; i++) {
		FUNC0(&s->p[i].tx_work);
		FUNC0(&s->p[i].md_work);
		FUNC0(&s->p[i].rs_work);
		FUNC5(&max310x_uart, &s->p[i].port);
		FUNC1(s->p[i].port.line, max310x_lines);
		s->devtype->power(&s->p[i].port, 0);
	}

	FUNC2(s->clk);

	return 0;
}