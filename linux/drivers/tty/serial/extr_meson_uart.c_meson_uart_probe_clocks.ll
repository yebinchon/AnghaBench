; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_meson_uart.c_meson_uart_probe_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_meson_uart.c_meson_uart_probe_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.uart_port = type { i32 }
%struct.clk = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"xtal\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"baud\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.uart_port*)* @meson_uart_probe_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_uart_probe_clocks(%struct.platform_device* %0, %struct.uart_port* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.uart_port*, align 8
  %6 = alloca %struct.clk*, align 8
  %7 = alloca %struct.clk*, align 8
  %8 = alloca %struct.clk*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.uart_port* %1, %struct.uart_port** %5, align 8
  store %struct.clk* null, %struct.clk** %6, align 8
  store %struct.clk* null, %struct.clk** %7, align 8
  store %struct.clk* null, %struct.clk** %8, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call %struct.clk* @meson_uart_probe_clock(i32* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.clk* %11, %struct.clk** %7, align 8
  %12 = load %struct.clk*, %struct.clk** %7, align 8
  %13 = call i64 @IS_ERR(%struct.clk* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.clk*, %struct.clk** %7, align 8
  %17 = call i32 @PTR_ERR(%struct.clk* %16)
  store i32 %17, i32* %3, align 4
  br label %43

18:                                               ; preds = %2
  %19 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = call %struct.clk* @meson_uart_probe_clock(i32* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store %struct.clk* %21, %struct.clk** %6, align 8
  %22 = load %struct.clk*, %struct.clk** %6, align 8
  %23 = call i64 @IS_ERR(%struct.clk* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load %struct.clk*, %struct.clk** %6, align 8
  %27 = call i32 @PTR_ERR(%struct.clk* %26)
  store i32 %27, i32* %3, align 4
  br label %43

28:                                               ; preds = %18
  %29 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = call %struct.clk* @meson_uart_probe_clock(i32* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store %struct.clk* %31, %struct.clk** %8, align 8
  %32 = load %struct.clk*, %struct.clk** %8, align 8
  %33 = call i64 @IS_ERR(%struct.clk* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load %struct.clk*, %struct.clk** %8, align 8
  %37 = call i32 @PTR_ERR(%struct.clk* %36)
  store i32 %37, i32* %3, align 4
  br label %43

38:                                               ; preds = %28
  %39 = load %struct.clk*, %struct.clk** %8, align 8
  %40 = call i32 @clk_get_rate(%struct.clk* %39)
  %41 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %42 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %38, %35, %25, %15
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.clk* @meson_uart_probe_clock(i32*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @clk_get_rate(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
