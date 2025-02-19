
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
typedef int t ;
struct wl1251 {size_t buffer_cmd; } ;
struct spi_transfer {size_t* tx_buf; int len; } ;
struct spi_message {int dummy; } ;


 int DEBUG_SPI ;
 int WSPI_CMD_BYTE_ADDR ;
 size_t WSPI_CMD_BYTE_LENGTH ;
 size_t WSPI_CMD_BYTE_LENGTH_OFFSET ;
 size_t WSPI_CMD_WRITE ;
 int memset (struct spi_transfer*,int ,int) ;
 int spi_message_add_tail (struct spi_transfer*,struct spi_message*) ;
 int spi_message_init (struct spi_message*) ;
 int spi_sync (int ,struct spi_message*) ;
 int wl1251_dump (int ,char*,void*,size_t) ;
 int wl_to_spi (struct wl1251*) ;

__attribute__((used)) static void wl1251_spi_write(struct wl1251 *wl, int addr, void *buf,
        size_t len)
{
 struct spi_transfer t[2];
 struct spi_message m;
 u32 *cmd;

 cmd = &wl->buffer_cmd;

 *cmd = 0;
 *cmd |= WSPI_CMD_WRITE;
 *cmd |= (len << WSPI_CMD_BYTE_LENGTH_OFFSET) & WSPI_CMD_BYTE_LENGTH;
 *cmd |= addr & WSPI_CMD_BYTE_ADDR;

 spi_message_init(&m);
 memset(t, 0, sizeof(t));

 t[0].tx_buf = cmd;
 t[0].len = sizeof(*cmd);
 spi_message_add_tail(&t[0], &m);

 t[1].tx_buf = buf;
 t[1].len = len;
 spi_message_add_tail(&t[1], &m);

 spi_sync(wl_to_spi(wl), &m);

 wl1251_dump(DEBUG_SPI, "spi_write cmd -> ", cmd, sizeof(*cmd));
 wl1251_dump(DEBUG_SPI, "spi_write buf -> ", buf, len);
}
