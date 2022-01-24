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
typedef  size_t u8 ;
struct calling_interface_token {int value; int /*<<< orphan*/  location; } ;
struct calling_interface_buffer {int* output; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CLASS_TOKEN_READ ; 
 int EINVAL ; 
 int /*<<< orphan*/  SELECT_TOKEN_STD ; 
 int /*<<< orphan*/  FUNC1 (struct calling_interface_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct calling_interface_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct calling_interface_token* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * kbd_tokens ; 

__attribute__((used)) static int FUNC4(u8 bit)
{
	struct calling_interface_buffer buffer;
	struct calling_interface_token *token;
	int ret;
	int val;

	if (bit >= FUNC0(kbd_tokens))
		return -EINVAL;

	token = FUNC3(kbd_tokens[bit]);
	if (!token)
		return -EINVAL;

	FUNC1(&buffer, token->location, 0, 0, 0);
	ret = FUNC2(&buffer, CLASS_TOKEN_READ, SELECT_TOKEN_STD);
	val = buffer.output[1];

	if (ret)
		return ret;

	return (val == token->value);
}