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
typedef  void* u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct gb_connection {int dummy; } ;
struct gb_audio_set_pcm_request {void* sig_bits; void* channels; void* rate; void* format; int /*<<< orphan*/  data_cport; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  GB_AUDIO_TYPE_SET_PCM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct gb_connection*,int /*<<< orphan*/ ,struct gb_audio_set_pcm_request*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC3(struct gb_connection *connection, u16 data_cport,
			u32 format, u32 rate, u8 channels,
			u8 sig_bits)
{
	struct gb_audio_set_pcm_request req;

	req.data_cport = FUNC0(data_cport);
	req.format = FUNC1(format);
	req.rate = FUNC1(rate);
	req.channels = channels;
	req.sig_bits = sig_bits;

	return FUNC2(connection, GB_AUDIO_TYPE_SET_PCM,
				 &req, sizeof(req), NULL, 0);
}