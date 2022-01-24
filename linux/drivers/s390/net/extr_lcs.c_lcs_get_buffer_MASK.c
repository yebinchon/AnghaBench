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
struct lcs_channel {int /*<<< orphan*/  ccwdev; } ;
struct lcs_buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*) ; 
 struct lcs_buffer* FUNC1 (struct lcs_channel*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  trace ; 

__attribute__((used)) static struct lcs_buffer *
FUNC5(struct lcs_channel *channel)
{
	struct lcs_buffer *buffer;
	unsigned long flags;

	FUNC0(5, trace, "getbuff");
	FUNC3(FUNC2(channel->ccwdev), flags);
	buffer = FUNC1(channel);
	FUNC4(FUNC2(channel->ccwdev), flags);
	return buffer;
}