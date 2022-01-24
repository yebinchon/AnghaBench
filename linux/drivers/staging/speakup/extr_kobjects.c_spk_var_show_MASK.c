#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int value; } ;
struct TYPE_7__ {TYPE_2__ n; } ;
struct var_t {TYPE_3__ u; } ;
struct st_var_header {int var_type; char* name; scalar_t__ p_val; scalar_t__ data; } ;
struct kobject {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
struct kobj_attribute {TYPE_1__ attr; } ;
typedef  int ssize_t ;
struct TYPE_8__ {int /*<<< orphan*/  spinlock; } ;

/* Variables and functions */
 int EINVAL ; 
#define  VAR_NUM 130 
#define  VAR_STRING 129 
#define  VAR_TIME 128 
 TYPE_4__ speakup_info ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 struct st_var_header* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,char*,...) ; 

ssize_t FUNC4(struct kobject *kobj, struct kobj_attribute *attr,
		     char *buf)
{
	int rv = 0;
	struct st_var_header *param;
	struct var_t *var;
	char *cp1;
	char *cp;
	char ch;
	unsigned long flags;

	param = FUNC2(attr->attr.name);
	if (!param)
		return -EINVAL;

	FUNC0(&speakup_info.spinlock, flags);
	var = (struct var_t *)param->data;
	switch (param->var_type) {
	case VAR_NUM:
	case VAR_TIME:
		if (var)
			rv = FUNC3(buf, "%i\n", var->u.n.value);
		else
			rv = FUNC3(buf, "0\n");
		break;
	case VAR_STRING:
		if (var) {
			cp1 = buf;
			*cp1++ = '"';
			for (cp = (char *)param->p_val; (ch = *cp); cp++) {
				if (ch >= ' ' && ch < '~')
					*cp1++ = ch;
				else
					cp1 += FUNC3(cp1, "\\x%02x", ch);
			}
			*cp1++ = '"';
			*cp1++ = '\n';
			*cp1 = '\0';
			rv = cp1 - buf;
		} else {
			rv = FUNC3(buf, "\"\"\n");
		}
		break;
	default:
		rv = FUNC3(buf, "Bad parameter  %s, type %i\n",
			     param->name, param->var_type);
		break;
	}
	FUNC1(&speakup_info.spinlock, flags);
	return rv;
}