
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbip_header_ret_unlink {int status; } ;


 int be32_to_cpus (int *) ;
 int cpu_to_be32s (int *) ;

__attribute__((used)) static void correct_endian_ret_unlink(struct usbip_header_ret_unlink *pdu,
          int send)
{
 if (send)
  cpu_to_be32s(&pdu->status);
 else
  be32_to_cpus(&pdu->status);
}
