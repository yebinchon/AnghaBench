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
struct tb_service {int /*<<< orphan*/  key; } ;
struct tb_property {int /*<<< orphan*/  key; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tb_service* FUNC1 (struct device*) ; 

__attribute__((used)) static int FUNC2(struct device *dev, void *data)
{
	const struct tb_property *p = data;
	struct tb_service *svc;

	svc = FUNC1(dev);
	if (!svc)
		return 0;

	return !FUNC0(svc->key, p->key);
}