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
struct gds_vector {int dummy; } ;
struct evbuf_header {int length; } ;

/* Variables and functions */
 int /*<<< orphan*/  GDS_ID_MDSMU ; 
 int /*<<< orphan*/  FUNC0 (struct gds_vector*) ; 
 struct gds_vector* FUNC1 (struct evbuf_header*,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct evbuf_header *evbuf)
{
	struct gds_vector *v;

	v = FUNC1(evbuf + 1, (void *) evbuf + evbuf->length,
				 GDS_ID_MDSMU);
	if (v)
		FUNC0(v);
}