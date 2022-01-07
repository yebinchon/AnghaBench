
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esp {int send_cmd_error; } ;



__attribute__((used)) static int mac_esp_dma_error(struct esp *esp)
{
 return esp->send_cmd_error;
}
