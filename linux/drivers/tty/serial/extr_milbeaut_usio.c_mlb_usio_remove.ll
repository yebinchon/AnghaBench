; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_milbeaut_usio.c_mlb_usio_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_milbeaut_usio.c_mlb_usio_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { %struct.clk* }
%struct.clk = type { i32 }
%struct.platform_device = type { i64 }

@mlb_usio_ports = common dso_local global %struct.uart_port* null, align 8
@mlb_usio_uart_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mlb_usio_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlb_usio_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.clk*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** @mlb_usio_ports, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %5, i64 %8
  store %struct.uart_port* %9, %struct.uart_port** %3, align 8
  %10 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %11 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %10, i32 0, i32 0
  %12 = load %struct.clk*, %struct.clk** %11, align 8
  store %struct.clk* %12, %struct.clk** %4, align 8
  %13 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %14 = call i32 @uart_remove_one_port(i32* @mlb_usio_uart_driver, %struct.uart_port* %13)
  %15 = load %struct.clk*, %struct.clk** %4, align 8
  %16 = call i32 @clk_disable_unprepare(%struct.clk* %15)
  ret i32 0
}

declare dso_local i32 @uart_remove_one_port(i32*, %struct.uart_port*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
