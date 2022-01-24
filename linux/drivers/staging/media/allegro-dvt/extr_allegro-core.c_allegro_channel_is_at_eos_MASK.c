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
struct TYPE_2__ {int /*<<< orphan*/  m2m_ctx; } ;
struct allegro_channel {TYPE_1__ fh; } ;

/* Variables and functions */
#define  ALLEGRO_STATE_DRAIN 130 
#define  ALLEGRO_STATE_STOPPED 129 
#define  ALLEGRO_STATE_WAIT_FOR_BUFFER 128 
 int FUNC0 (struct allegro_channel*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(struct allegro_channel *channel)
{
	bool is_at_eos = false;

	switch (FUNC0(channel)) {
	case ALLEGRO_STATE_STOPPED:
		is_at_eos = true;
		break;
	case ALLEGRO_STATE_DRAIN:
	case ALLEGRO_STATE_WAIT_FOR_BUFFER:
		if (FUNC1(channel->fh.m2m_ctx) == 0)
			is_at_eos = true;
		break;
	default:
		break;
	}

	return is_at_eos;
}