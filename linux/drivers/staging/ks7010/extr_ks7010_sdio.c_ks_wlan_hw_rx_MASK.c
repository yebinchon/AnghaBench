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
typedef  void* u16 ;
struct rx_device_buffer {void* size; int /*<<< orphan*/ * data; } ;
struct TYPE_4__ {int /*<<< orphan*/  confirm_wait; } ;
struct TYPE_3__ {size_t qtail; struct rx_device_buffer* rx_dev_buff; } ;
struct ks_wlan_private {int /*<<< orphan*/  rx_bh_task; TYPE_2__ psstatus; int /*<<< orphan*/  net_dev; TYPE_1__ rx_dev; } ;
struct hostif_hdr {int /*<<< orphan*/  event; int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int /*<<< orphan*/  DATA_WINDOW ; 
 int /*<<< orphan*/  DUMP_PREFIX_OFFSET ; 
 int /*<<< orphan*/  READ_STATUS_REG ; 
 int /*<<< orphan*/  REG_STATUS_IDLE ; 
 int RX_DEVICE_BUFF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct ks_wlan_private*) ; 
 scalar_t__ FUNC4 (void*) ; 
 int FUNC5 (struct ks_wlan_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ks_wlan_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC11 (struct ks_wlan_private*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(struct ks_wlan_private *priv, size_t size)
{
	int ret;
	struct rx_device_buffer *rx_buffer;
	struct hostif_hdr *hdr;
	u16 event = 0;

	/* receive data */
	if (FUNC11(priv) >= (RX_DEVICE_BUFF_SIZE - 1)) {
		FUNC9(priv->net_dev, "rx buffer overflow\n");
		return;
	}
	rx_buffer = &priv->rx_dev.rx_dev_buff[priv->rx_dev.qtail];

	ret = FUNC5(priv, DATA_WINDOW, &rx_buffer->data[0],
			       FUNC2(size));
	if (ret)
		return;

	/* length check */
	if (size > 2046 || size == 0) {
#ifdef DEBUG
		print_hex_dump_bytes("INVALID DATA dump: ",
				     DUMP_PREFIX_OFFSET,
				     rx_buffer->data, 32);
#endif
		ret = FUNC6(priv, READ_STATUS_REG, REG_STATUS_IDLE);
		if (ret)
			FUNC9(priv->net_dev, "write READ_STATUS_REG\n");

		/* length check fail */
		return;
	}

	hdr = (struct hostif_hdr *)&rx_buffer->data[0];
	rx_buffer->size = FUNC7(hdr->size) + sizeof(hdr->size);
	event = FUNC7(hdr->event);
	FUNC3(priv);

	ret = FUNC6(priv, READ_STATUS_REG, REG_STATUS_IDLE);
	if (ret)
		FUNC9(priv->net_dev, "write READ_STATUS_REG\n");

	if (FUNC1(&priv->psstatus.confirm_wait) && FUNC4(event)) {
		FUNC8(priv->net_dev, "IS_HIF_CONF true !!\n");
		FUNC0(&priv->psstatus.confirm_wait);
	}

	FUNC12(&priv->rx_bh_task);
}