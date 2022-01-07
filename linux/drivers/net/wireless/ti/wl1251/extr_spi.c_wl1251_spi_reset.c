
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_transfer {int len; struct spi_transfer* tx_buf; } ;
typedef struct spi_transfer u8 ;
typedef int t ;
struct wl1251 {int dummy; } ;
struct spi_message {int dummy; } ;


 int DEBUG_SPI ;
 int GFP_KERNEL ;
 int WSPI_INIT_CMD_LEN ;
 int kfree (struct spi_transfer*) ;
 struct spi_transfer* kzalloc (int,int ) ;
 int memset (struct spi_transfer*,int,int) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (int ,struct spi_message*) ;
 int wl1251_dump (int ,char*,struct spi_transfer*,int) ;
 int wl1251_error (char*) ;
 int wl_to_spi (struct wl1251*) ;

__attribute__((used)) static void wl1251_spi_reset(struct wl1251 *wl)
{
 u8 *cmd;
 struct spi_transfer t;
 struct spi_message m;

 cmd = kzalloc(WSPI_INIT_CMD_LEN, GFP_KERNEL);
 if (!cmd) {
  wl1251_error("could not allocate cmd for spi reset");
  return;
 }

 memset(&t, 0, sizeof(t));
 spi_message_init(&m);

 memset(cmd, 0xff, WSPI_INIT_CMD_LEN);

 t.tx_buf = cmd;
 t.len = WSPI_INIT_CMD_LEN;
 spi_message_add_tail(&t, &m);

 spi_sync(wl_to_spi(wl), &m);

 wl1251_dump(DEBUG_SPI, "spi reset -> ", cmd, WSPI_INIT_CMD_LEN);

 kfree(cmd);
}
