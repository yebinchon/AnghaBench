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
struct tape_request {char* cpdata; scalar_t__ cpaddr; int /*<<< orphan*/  op; } ;
struct tape_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  ENOSYS ; 
 struct tape_request* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct tape_request*) ; 
 int /*<<< orphan*/  MODE_SET_CB ; 
 int /*<<< orphan*/  TO_CRYPT_ON ; 
 int /*<<< orphan*/  FUNC3 (struct tape_device*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 struct tape_request* FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,int,char*) ; 

__attribute__((used)) static struct tape_request *FUNC8(struct tape_device *device)
{
	struct tape_request *request;
	char *data;

	FUNC0(6, "tape_3592_enable_crypt\n");
	if (!FUNC3(device))
		return FUNC1(-ENOSYS);
	request = FUNC5(2, 72);
	if (FUNC2(request))
		return request;
	data = request->cpdata;
	FUNC4(data,0,72);

	data[0]       = 0x05;
	data[36 + 0]  = 0x03;
	data[36 + 1]  = 0x03;
	data[36 + 4]  = 0x40;
	data[36 + 6]  = 0x01;
	data[36 + 14] = 0x2f;
	data[36 + 18] = 0xc3;
	data[36 + 35] = 0x72;
	request->op = TO_CRYPT_ON;
	FUNC6(request->cpaddr, MODE_SET_CB, 36, data);
	FUNC7(request->cpaddr + 1, MODE_SET_CB, 36, data + 36);
	return request;
}