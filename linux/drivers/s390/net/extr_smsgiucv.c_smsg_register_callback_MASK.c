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
struct smsg_callback {char const* prefix; void (* callback ) (char const*,char*) ;int /*<<< orphan*/  list; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct smsg_callback* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  smsg_list ; 
 int /*<<< orphan*/  smsg_list_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

int FUNC5(const char *prefix,
			   void (*callback)(const char *from, char *str))
{
	struct smsg_callback *cb;

	cb = FUNC0(sizeof(struct smsg_callback), GFP_KERNEL);
	if (!cb)
		return -ENOMEM;
	cb->prefix = prefix;
	cb->len = FUNC4(prefix);
	cb->callback = callback;
	FUNC2(&smsg_list_lock);
	FUNC1(&cb->list, &smsg_list);
	FUNC3(&smsg_list_lock);
	return 0;
}