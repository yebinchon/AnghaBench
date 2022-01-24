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
struct zfcp_qdio_req {int sbale_curr; } ;
struct zfcp_qdio {int max_sbale_per_sbal; } ;
struct qdio_buffer_element {int dummy; } ;

/* Variables and functions */
 struct qdio_buffer_element* FUNC0 (struct zfcp_qdio*,struct zfcp_qdio_req*) ; 
 struct qdio_buffer_element* FUNC1 (struct zfcp_qdio*,struct zfcp_qdio_req*) ; 

__attribute__((used)) static struct qdio_buffer_element *
FUNC2(struct zfcp_qdio *qdio, struct zfcp_qdio_req *q_req)
{
	if (q_req->sbale_curr == qdio->max_sbale_per_sbal - 1)
		return FUNC0(qdio, q_req);
	q_req->sbale_curr++;
	return FUNC1(qdio, q_req);
}