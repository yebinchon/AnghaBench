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
typedef  scalar_t__ u8 ;
struct ec_host_request {int data_len; scalar_t__ checksum; scalar_t__ reserved; int /*<<< orphan*/  command_version; int /*<<< orphan*/  command; scalar_t__ struct_version; } ;
struct cros_ec_device {scalar_t__ proto_version; int dout_size; scalar_t__* dout; } ;
struct cros_ec_command {int outsize; scalar_t__* data; int /*<<< orphan*/  version; int /*<<< orphan*/  command; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ EC_HOST_REQUEST_VERSION ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,scalar_t__*,int) ; 

__attribute__((used)) static int FUNC2(struct cros_ec_device *ec_dev,
			  struct cros_ec_command *msg)
{
	struct ec_host_request *request;
	u8 *out;
	int i;
	u8 csum = 0;

	FUNC0(ec_dev->proto_version != EC_HOST_REQUEST_VERSION);
	FUNC0(msg->outsize + sizeof(*request) > ec_dev->dout_size);

	out = ec_dev->dout;
	request = (struct ec_host_request *)out;
	request->struct_version = EC_HOST_REQUEST_VERSION;
	request->checksum = 0;
	request->command = msg->command;
	request->command_version = msg->version;
	request->reserved = 0;
	request->data_len = msg->outsize;

	for (i = 0; i < sizeof(*request); i++)
		csum += out[i];

	/* Copy data and update checksum */
	FUNC1(out + sizeof(*request), msg->data, msg->outsize);
	for (i = 0; i < msg->outsize; i++)
		csum += msg->data[i];

	request->checksum = -csum;

	return sizeof(*request) + msg->outsize;
}