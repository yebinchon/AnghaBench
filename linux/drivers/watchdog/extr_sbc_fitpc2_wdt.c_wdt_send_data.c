
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COMMAND_PORT ;
 int DATA_PORT ;
 int msleep (int) ;
 int outb (unsigned char,int ) ;

__attribute__((used)) static void wdt_send_data(unsigned char command, unsigned char data)
{
 outb(data, DATA_PORT);
 msleep(200);
 outb(command, COMMAND_PORT);
 msleep(100);
}
