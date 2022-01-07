
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int configured ;
 int kgdb_unregister_io_module (int *) ;
 scalar_t__ kgdb_unregister_nmi_console () ;
 int kgdboc_io_ops ;
 int kgdboc_unregister_kbd () ;

__attribute__((used)) static void cleanup_kgdboc(void)
{
 if (kgdb_unregister_nmi_console())
  return;
 kgdboc_unregister_kbd();
 if (configured == 1)
  kgdb_unregister_io_module(&kgdboc_io_ops);
}
