
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp1760_qtd {size_t length; void* data_buffer; } ;


 size_t MAX_PAYLOAD_SIZE ;

__attribute__((used)) static int qtd_fill(struct isp1760_qtd *qtd, void *databuffer, size_t len)
{
 qtd->data_buffer = databuffer;

 if (len > MAX_PAYLOAD_SIZE)
  len = MAX_PAYLOAD_SIZE;
 qtd->length = len;

 return qtd->length;
}
