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
struct st_var_header {int /*<<< orphan*/  var_id; } ;
struct punc_var_t {int /*<<< orphan*/  value; } ;
struct kobject {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
struct kobj_attribute {TYPE_1__ attr; } ;
typedef  size_t ssize_t ;
struct TYPE_4__ {int /*<<< orphan*/  spinlock; } ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 TYPE_2__ speakup_info ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct punc_var_t* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 struct st_var_header* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (char const*) ; 

__attribute__((used)) static ssize_t FUNC8(struct kobject *kobj, struct kobj_attribute *attr,
			  const char *buf, size_t count)
{
	int x;
	struct st_var_header *p_header;
	struct punc_var_t *var;
	char punc_buf[100];
	unsigned long flags;

	x = FUNC7(buf);
	if (x < 1 || x > 99)
		return -EINVAL;

	p_header = FUNC6(attr->attr.name);
	if (!p_header) {
		FUNC1("p_header is null, attr->attr.name is %s\n",
			attr->attr.name);
		return -EINVAL;
	}

	var = FUNC4(p_header->var_id);
	if (!var) {
		FUNC1("var is null, p_header->var_id is %i\n",
			p_header->var_id);
		return -EINVAL;
	}

	FUNC0(punc_buf, buf, x);

	while (x && punc_buf[x - 1] == '\n')
		x--;
	punc_buf[x] = '\0';

	FUNC2(&speakup_info.spinlock, flags);

	if (*punc_buf == 'd' || *punc_buf == 'r')
		x = FUNC5(NULL, var->value, 3);
	else
		x = FUNC5(punc_buf, var->value, 3);

	FUNC3(&speakup_info.spinlock, flags);
	return count;
}