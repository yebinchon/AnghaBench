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
struct inbuf_t {unsigned char* data; int head; int /*<<< orphan*/  cs; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_LOCKCMD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char*,unsigned int) ; 

__attribute__((used)) static unsigned FUNC2(unsigned numbytes, struct inbuf_t *inbuf)
{
	unsigned char *src = inbuf->data + inbuf->head;

	FUNC0(DEBUG_LOCKCMD, "received response", numbytes, src);
	FUNC1(inbuf->cs, src, numbytes);
	return numbytes;
}