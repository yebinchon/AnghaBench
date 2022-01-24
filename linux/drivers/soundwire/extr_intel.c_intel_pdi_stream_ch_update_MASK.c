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
struct sdw_intel {int dummy; } ;
struct sdw_cdns_streams {int /*<<< orphan*/  num_ch_out; int /*<<< orphan*/  num_out; int /*<<< orphan*/  out; int /*<<< orphan*/  num_ch_in; int /*<<< orphan*/  num_in; int /*<<< orphan*/  in; int /*<<< orphan*/  num_ch_bd; int /*<<< orphan*/  num_bd; int /*<<< orphan*/  bd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sdw_intel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC1(struct sdw_intel *sdw,
				      struct sdw_cdns_streams *stream, bool pcm)
{
	FUNC0(sdw, stream->bd, stream->num_bd,
				&stream->num_ch_bd, pcm);

	FUNC0(sdw, stream->in, stream->num_in,
				&stream->num_ch_in, pcm);

	FUNC0(sdw, stream->out, stream->num_out,
				&stream->num_ch_out, pcm);

	return 0;
}