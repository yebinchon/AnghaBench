; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_meson_uart.c_meson_uart_probe_clocks_legacy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_meson_uart.c_meson_uart_probe_clocks_legacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.uart_port = type { i32 }
%struct.clk = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.uart_port*)* @meson_uart_probe_clocks_legacy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_uart_probe_clocks_legacy(%struct.platform_device* %0, %struct.uart_port* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.uart_port*, align 8
  %6 = alloca %struct.clk*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.uart_port* %1, %struct.uart_port** %5, align 8
  store %struct.clk* null, %struct.clk** %6, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call %struct.clk* @meson_uart_probe_clock(i32* %8, i32* null)
  store %struct.clk* %9, %struct.clk** %6, align 8
  %10 = load %struct.clk*, %struct.clk** %6, align 8
  %11 = call i64 @IS_ERR(%struct.clk* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.clk*, %struct.clk** %6, align 8
  %15 = call i32 @PTR_ERR(%struct.clk* %14)
  store i32 %15, i32* %3, align 4
  br label %21

16:                                               ; preds = %2
  %17 = load %struct.clk*, %struct.clk** %6, align 8
  %18 = call i32 @clk_get_rate(%struct.clk* %17)
  %19 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %20 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %16, %13
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local %struct.clk* @meson_uart_probe_clock(i32*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @clk_get_rate(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
