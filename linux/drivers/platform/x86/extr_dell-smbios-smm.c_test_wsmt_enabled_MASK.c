#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct calling_interface_token {int /*<<< orphan*/  location; } ;
struct calling_interface_buffer {int dummy; } ;
struct TYPE_4__ {int* output; int /*<<< orphan*/ * input; int /*<<< orphan*/  cmd_select; int /*<<< orphan*/  cmd_class; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLASS_TOKEN_READ ; 
 int /*<<< orphan*/  SELECT_TOKEN_STD ; 
 int /*<<< orphan*/  WSMT_EN_TOKEN ; 
 TYPE_1__* buffer ; 
 struct calling_interface_token* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool FUNC3(void)
{
	struct calling_interface_token *wsmt;

	/* if token doesn't exist, SMM will work */
	wsmt = FUNC0(WSMT_EN_TOKEN);
	if (!wsmt)
		return false;

	/* If token exists, try to access over SMM but set a dummy return.
	 * - If WSMT disabled it will be overwritten by SMM
	 * - If WSMT enabled then dummy value will remain
	 */
	buffer->cmd_class = CLASS_TOKEN_READ;
	buffer->cmd_select = SELECT_TOKEN_STD;
	FUNC2(buffer, 0, sizeof(struct calling_interface_buffer));
	buffer->input[0] = wsmt->location;
	buffer->output[0] = 99;
	FUNC1(buffer);
	if (buffer->output[0] == 99)
		return true;

	return false;
}