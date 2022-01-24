#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct c67x00_lcp_int_data {int /*<<< orphan*/ * regs; } ;
struct TYPE_3__ {int /*<<< orphan*/  mutex; } ;
struct TYPE_4__ {TYPE_1__ lcp; } ;
struct c67x00_device {TYPE_2__ hpi; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMM_EXEC_INT ; 
 int /*<<< orphan*/  COMM_INT_NUM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int COMM_REGS ; 
 int /*<<< orphan*/  FUNC1 (struct c67x00_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct c67x00_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct c67x00_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct c67x00_device *dev, u16 nr,
				struct c67x00_lcp_int_data *data)
{
	int i, rc;

	FUNC4(&dev->hpi.lcp.mutex);
	FUNC2(dev, COMM_INT_NUM, nr);
	for (i = 0; i < COMM_REGS; i++)
		FUNC2(dev, FUNC0(i), data->regs[i]);
	FUNC1(dev, COMM_EXEC_INT);
	rc = FUNC3(dev);
	FUNC5(&dev->hpi.lcp.mutex);

	return rc;
}