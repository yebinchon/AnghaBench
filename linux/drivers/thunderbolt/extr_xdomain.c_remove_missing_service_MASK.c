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
struct tb_xdomain {int /*<<< orphan*/  properties; } ;
struct tb_service {int /*<<< orphan*/  key; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TB_PROPERTY_TYPE_DIRECTORY ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tb_service* FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct device *dev, void *data)
{
	struct tb_xdomain *xd = data;
	struct tb_service *svc;

	svc = FUNC2(dev);
	if (!svc)
		return 0;

	if (!FUNC1(xd->properties, svc->key,
			      TB_PROPERTY_TYPE_DIRECTORY))
		FUNC0(dev);

	return 0;
}