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
struct pqi_raid_error_info {int /*<<< orphan*/  data_in_transferred; int /*<<< orphan*/  sense_data_length; int /*<<< orphan*/  data; } ;
struct TYPE_3__ {unsigned int payload_len; int /*<<< orphan*/  sg_cnt; int /*<<< orphan*/  sg_list; } ;
struct bsg_job {TYPE_1__ reply_payload; int /*<<< orphan*/  reply; int /*<<< orphan*/  reply_len; } ;
struct TYPE_4__ {int /*<<< orphan*/  response_length; int /*<<< orphan*/  response; } ;
struct bmic_csmi_smp_passthru_buffer {TYPE_2__ parameters; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC5(
	struct bmic_csmi_smp_passthru_buffer *smp_buf, struct bsg_job *job,
	struct pqi_raid_error_info *error_info)
{
	FUNC4(job->reply_payload.sg_list,
		job->reply_payload.sg_cnt, &smp_buf->parameters.response,
		FUNC2(smp_buf->parameters.response_length));

	job->reply_len = FUNC1(error_info->sense_data_length);
	FUNC3(job->reply, error_info->data,
			FUNC1(error_info->sense_data_length));

	return job->reply_payload.payload_len -
		FUNC0(&error_info->data_in_transferred);
}