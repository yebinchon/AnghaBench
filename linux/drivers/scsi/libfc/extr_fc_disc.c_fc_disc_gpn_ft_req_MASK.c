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
struct fc_ns_gid_ft {int dummy; } ;
struct TYPE_2__ {scalar_t__ (* elsct_send ) (struct fc_lport*,int /*<<< orphan*/ ,struct fc_frame*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fc_disc*,int) ;} ;
struct fc_lport {int r_a_tov; TYPE_1__ tt; } ;
struct fc_frame {int dummy; } ;
struct fc_disc {int pending; scalar_t__ seq_count; scalar_t__ buf_len; scalar_t__ requested; int /*<<< orphan*/  disc_mutex; } ;
struct fc_ct_hdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FC_NS_GPN_FT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct fc_disc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fc_disc_gpn_ft_resp ; 
 struct fc_lport* FUNC2 (struct fc_disc*) ; 
 struct fc_frame* FUNC3 (struct fc_lport*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct fc_lport*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct fc_lport*,int /*<<< orphan*/ ,struct fc_frame*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fc_disc*,int) ; 

__attribute__((used)) static void FUNC7(struct fc_disc *disc)
{
	struct fc_frame *fp;
	struct fc_lport *lport = FUNC2(disc);

	FUNC5(&disc->disc_mutex);

	FUNC0(!FUNC4(lport));

	disc->pending = 1;
	disc->requested = 0;

	disc->buf_len = 0;
	disc->seq_count = 0;
	fp = FUNC3(lport,
			    sizeof(struct fc_ct_hdr) +
			    sizeof(struct fc_ns_gid_ft));
	if (!fp)
		goto err;

	if (lport->tt.elsct_send(lport, 0, fp,
				 FC_NS_GPN_FT,
				 fc_disc_gpn_ft_resp,
				 disc, 3 * lport->r_a_tov))
		return;
err:
	FUNC1(disc, NULL);
}