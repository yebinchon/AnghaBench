; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_txx9.c_serial_txx9_unregister_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial_txx9.c_serial_txx9_unregister_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_txx9_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32*, i64, i64, i32, i64 }

@serial_txx9_ports = common dso_local global %struct.uart_txx9_port* null, align 8
@serial_txx9_mutex = common dso_local global i32 0, align 4
@serial_txx9_reg = common dso_local global i32 0, align 4
@PORT_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @serial_txx9_unregister_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial_txx9_unregister_port(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_txx9_port*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** @serial_txx9_ports, align 8
  %5 = load i32, i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %4, i64 %6
  store %struct.uart_txx9_port* %7, %struct.uart_txx9_port** %3, align 8
  %8 = call i32 @mutex_lock(i32* @serial_txx9_mutex)
  %9 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %10 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %9, i32 0, i32 0
  %11 = call i32 @uart_remove_one_port(i32* @serial_txx9_reg, %struct.TYPE_2__* %10)
  %12 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %13 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 5
  store i64 0, i64* %14, align 8
  %15 = load i32, i32* @PORT_UNKNOWN, align 4
  %16 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %17 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 4
  store i32 %15, i32* %18, align 8
  %19 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %20 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  store i64 0, i64* %21, align 8
  %22 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %23 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  store i64 0, i64* %24, align 8
  %25 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %26 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i32* null, i32** %27, align 8
  %28 = load %struct.uart_txx9_port*, %struct.uart_txx9_port** %3, align 8
  %29 = getelementptr inbounds %struct.uart_txx9_port, %struct.uart_txx9_port* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32* null, i32** %30, align 8
  %31 = call i32 @mutex_unlock(i32* @serial_txx9_mutex)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @uart_remove_one_port(i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
