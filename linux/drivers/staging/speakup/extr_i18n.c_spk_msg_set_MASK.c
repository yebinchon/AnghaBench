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
typedef  int /*<<< orphan*/  ssize_t ;
typedef  enum msg_index_t { ____Placeholder_msg_index_t } msg_index_t ;
struct TYPE_2__ {int /*<<< orphan*/  spinlock; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MSG_FIRST_INDEX ; 
 int MSG_FORMATTED_END ; 
 int MSG_FORMATTED_START ; 
 int MSG_LAST_INDEX ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,size_t) ; 
 char** speakup_default_msgs ; 
 TYPE_1__ speakup_info ; 
 char** speakup_msgs ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

ssize_t FUNC6(enum msg_index_t index, char *text, size_t length)
{
	char *newstr = NULL;
	unsigned long flags;

	if ((index < MSG_FIRST_INDEX) || (index >= MSG_LAST_INDEX))
		return -EINVAL;

	newstr = FUNC2(length + 1, GFP_KERNEL);
	if (!newstr)
		return -ENOMEM;

	FUNC3(newstr, text, length);
	newstr[length] = '\0';
	if (index >= MSG_FORMATTED_START &&
	    index <= MSG_FORMATTED_END &&
	    !FUNC0(speakup_default_msgs[index], newstr)) {
		FUNC1(newstr);
		return -EINVAL;
	}
	FUNC4(&speakup_info.spinlock, flags);
	if (speakup_msgs[index] != speakup_default_msgs[index])
		FUNC1(speakup_msgs[index]);
	speakup_msgs[index] = newstr;
	FUNC5(&speakup_info.spinlock, flags);
	return 0;
}