; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_omap-serial.c_serial_omap_config_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_omap-serial.c_serial_omap_config_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_omap_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"serial_omap_config_port+%d\0A\00", align 1
@PORT_OMAP = common dso_local global i32 0, align 4
@UPF_SOFT_FLOW = common dso_local global i32 0, align 4
@UPF_HARD_FLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32)* @serial_omap_config_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial_omap_config_port(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uart_omap_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %7 = call %struct.uart_omap_port* @to_uart_omap_port(%struct.uart_port* %6)
  store %struct.uart_omap_port* %7, %struct.uart_omap_port** %5, align 8
  %8 = load %struct.uart_omap_port*, %struct.uart_omap_port** %5, align 8
  %9 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.uart_omap_port*, %struct.uart_omap_port** %5, align 8
  %13 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @dev_dbg(i32 %11, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @PORT_OMAP, align 4
  %18 = load %struct.uart_omap_port*, %struct.uart_omap_port** %5, align 8
  %19 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* @UPF_SOFT_FLOW, align 4
  %22 = load i32, i32* @UPF_HARD_FLOW, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.uart_omap_port*, %struct.uart_omap_port** %5, align 8
  %25 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %23
  store i32 %28, i32* %26, align 4
  ret void
}

declare dso_local %struct.uart_omap_port* @to_uart_omap_port(%struct.uart_port*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
