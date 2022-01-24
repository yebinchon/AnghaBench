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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {void* len; void* type; } ;
struct qlink_tlv_ie_set {int /*<<< orphan*/  ie_data; scalar_t__ flags; int /*<<< orphan*/  type; TYPE_1__ hdr; } ;

/* Variables and functions */
 size_t QTN_TLV_ID_IE_SET ; 
 void* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int) ; 

__attribute__((used)) static void FUNC3(struct sk_buff *cmd_skb, u8 frame_type,
				    const u8 *buf, size_t len)
{
	struct qlink_tlv_ie_set *tlv;

	tlv = (struct qlink_tlv_ie_set *)FUNC2(cmd_skb, sizeof(*tlv) + len);
	tlv->hdr.type = FUNC0(QTN_TLV_ID_IE_SET);
	tlv->hdr.len = FUNC0(len + sizeof(*tlv) - sizeof(tlv->hdr));
	tlv->type = frame_type;
	tlv->flags = 0;

	if (len && buf)
		FUNC1(tlv->ie_data, buf, len);
}