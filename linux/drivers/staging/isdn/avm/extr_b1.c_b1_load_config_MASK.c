#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {unsigned char* data; int len; scalar_t__ user; } ;
typedef  TYPE_1__ capiloaddatapart ;
struct TYPE_6__ {unsigned int port; } ;
typedef  TYPE_2__ avmcard ;

/* Variables and functions */
 int EFAULT ; 
 int FWBUF_SIZE ; 
 unsigned char SEND_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int) ; 
 scalar_t__ FUNC2 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char*,int) ; 

int FUNC4(avmcard *card, capiloaddatapart *config)
{
	unsigned char buf[FWBUF_SIZE];
	unsigned char *dp;
	unsigned int base = card->port;
	int i, j, left;

	dp = config->data;
	left = config->len;
	if (left) {
		FUNC0(base, SEND_CONFIG);
		FUNC1(base, 1);
		FUNC0(base, SEND_CONFIG);
		FUNC1(base, left);
	}
	while (left > FWBUF_SIZE) {
		if (config->user) {
			if (FUNC2(buf, dp, FWBUF_SIZE))
				return -EFAULT;
		} else {
			FUNC3(buf, dp, FWBUF_SIZE);
		}
		for (i = 0; i < FWBUF_SIZE; ) {
			FUNC0(base, SEND_CONFIG);
			for (j = 0; j < 4; j++) {
				FUNC0(base, buf[i++]);
			}
		}
		left -= FWBUF_SIZE;
		dp += FWBUF_SIZE;
	}
	if (left) {
		if (config->user) {
			if (FUNC2(buf, dp, left))
				return -EFAULT;
		} else {
			FUNC3(buf, dp, left);
		}
		for (i = 0; i < left; ) {
			FUNC0(base, SEND_CONFIG);
			for (j = 0; j < 4; j++) {
				if (i < left)
					FUNC0(base, buf[i++]);
				else
					FUNC0(base, 0);
			}
		}
	}
	return 0;
}