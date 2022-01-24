#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {struct device* parent; } ;
struct iscsi_cls_conn {TYPE_1__ dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iscsi_cls_conn*,char*) ; 
 struct iscsi_cls_conn* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct iscsi_cls_conn*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 

__attribute__((used)) static void FUNC4(struct device *dev)
{
	struct iscsi_cls_conn *conn = FUNC1(dev);
	struct device *parent = conn->dev.parent;

	FUNC0(conn, "Releasing conn\n");
	FUNC2(conn);
	FUNC3(parent);
}