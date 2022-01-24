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
struct tb_property {int type; int /*<<< orphan*/  list; int /*<<< orphan*/  key; } ;
typedef  enum tb_property_type { ____Placeholder_tb_property_type } tb_property_type ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct tb_property* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static struct tb_property *
FUNC3(const char *key, enum tb_property_type type)
{
	struct tb_property *property;

	property = FUNC1(sizeof(*property), GFP_KERNEL);
	if (!property)
		return NULL;

	FUNC2(property->key, key);
	property->type = type;
	FUNC0(&property->list);

	return property;
}