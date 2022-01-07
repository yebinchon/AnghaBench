
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct pn544_i2c_phy {int i2c_dev; } ;
struct pn544_i2c_fw_secure_frame {int data; int be_datalen; int cmd; } ;


 int EIO ;
 int PN544_FW_CMD_SECURE_CHUNK_WRITE ;
 int PN544_FW_I2C_MAX_PAYLOAD ;
 int PN544_FW_SECURE_CHUNK_WRITE_DATA_MAX_LEN ;
 int i2c_master_send (int ,int *,int) ;
 int memcpy (int ,int const*,int) ;
 int put_unaligned_be16 (int,int *) ;

__attribute__((used)) static int pn544_hci_i2c_fw_secure_write_frame_cmd(struct pn544_i2c_phy *phy,
     const u8 *data, u16 datalen)
{
 u8 buf[PN544_FW_I2C_MAX_PAYLOAD];
 struct pn544_i2c_fw_secure_frame *chunk;
 int chunklen;
 int r;

 if (datalen > PN544_FW_SECURE_CHUNK_WRITE_DATA_MAX_LEN)
  datalen = PN544_FW_SECURE_CHUNK_WRITE_DATA_MAX_LEN;

 chunk = (struct pn544_i2c_fw_secure_frame *) buf;

 chunk->cmd = PN544_FW_CMD_SECURE_CHUNK_WRITE;

 put_unaligned_be16(datalen, &chunk->be_datalen);

 memcpy(chunk->data, data, datalen);

 chunklen = sizeof(chunk->cmd) + sizeof(chunk->be_datalen) + datalen;

 r = i2c_master_send(phy->i2c_dev, buf, chunklen);

 if (r == chunklen)
  return datalen;
 else if (r < 0)
  return r;
 else
  return -EIO;

}
