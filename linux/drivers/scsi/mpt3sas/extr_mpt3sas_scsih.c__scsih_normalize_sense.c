
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sense_info {char skey; char asc; char ascq; } ;



__attribute__((used)) static void
_scsih_normalize_sense(char *sense_buffer, struct sense_info *data)
{
 if ((sense_buffer[0] & 0x7F) >= 0x72) {

  data->skey = sense_buffer[1] & 0x0F;
  data->asc = sense_buffer[2];
  data->ascq = sense_buffer[3];
 } else {

  data->skey = sense_buffer[2] & 0x0F;
  data->asc = sense_buffer[12];
  data->ascq = sense_buffer[13];
 }
}
