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
struct kobject {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
struct kobj_attribute {TYPE_1__ attr; } ;
typedef  int ssize_t ;
struct TYPE_4__ {int /*<<< orphan*/  spinlock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALPHA ; 
 int /*<<< orphan*/  A_CAP ; 
 int /*<<< orphan*/  A_PUNC ; 
 int /*<<< orphan*/  B_CAPSYM ; 
 int /*<<< orphan*/  B_CTL ; 
 int /*<<< orphan*/  B_SYM ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NUM ; 
 size_t PAGE_SIZE ; 
 int /*<<< orphan*/  PUNC ; 
 int /*<<< orphan*/  WDLM ; 
 int FUNC1 (char*,size_t,char*,int,char*) ; 
 TYPE_2__ speakup_info ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 char** spk_characters ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC5(struct kobject *kobj,
				  struct kobj_attribute *attr, char *buf)
{
	int i;
	int len = 0;
	char *cp;
	char *buf_pointer = buf;
	size_t bufsize = PAGE_SIZE;
	unsigned long flags;

	FUNC2(&speakup_info.spinlock, flags);
	*buf_pointer = '\0';
	for (i = 0; i < 256; i++) {
		if (bufsize <= 1)
			break;
		if (FUNC4("characters", attr->attr.name) == 0) {
			len = FUNC1(buf_pointer, bufsize, "%d\t%s\n",
					i, spk_characters[i]);
		} else {	/* show chartab entry */
			if (FUNC0(i, B_CTL))
				cp = "B_CTL";
			else if (FUNC0(i, WDLM))
				cp = "WDLM";
			else if (FUNC0(i, A_PUNC))
				cp = "A_PUNC";
			else if (FUNC0(i, PUNC))
				cp = "PUNC";
			else if (FUNC0(i, NUM))
				cp = "NUM";
			else if (FUNC0(i, A_CAP))
				cp = "A_CAP";
			else if (FUNC0(i, ALPHA))
				cp = "ALPHA";
			else if (FUNC0(i, B_CAPSYM))
				cp = "B_CAPSYM";
			else if (FUNC0(i, B_SYM))
				cp = "B_SYM";
			else
				cp = "0";
			len =
			    FUNC1(buf_pointer, bufsize, "%d\t%s\n", i, cp);
		}
		bufsize -= len;
		buf_pointer += len;
	}
	FUNC3(&speakup_info.spinlock, flags);
	return buf_pointer - buf;
}