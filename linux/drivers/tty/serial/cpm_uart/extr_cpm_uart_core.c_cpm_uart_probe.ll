; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/cpm_uart/extr_cpm_uart_core.c_cpm_uart_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/cpm_uart/extr_cpm_uart_core.c_cpm_uart_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_cpm_port = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_3__ }

@probe_index = common dso_local global i32 0, align 4
@cpm_uart_ports = common dso_local global %struct.uart_cpm_port* null, align 8
@UART_NR = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@cpm_reg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cpm_uart_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpm_uart_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uart_cpm_port*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load i32, i32* @probe_index, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* @probe_index, align 4
  store i32 %7, i32* %4, align 4
  %9 = load %struct.uart_cpm_port*, %struct.uart_cpm_port** @cpm_uart_ports, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.uart_cpm_port, %struct.uart_cpm_port* %9, i64 %11
  store %struct.uart_cpm_port* %12, %struct.uart_cpm_port** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.uart_cpm_port*, %struct.uart_cpm_port** %5, align 8
  %15 = getelementptr inbounds %struct.uart_cpm_port, %struct.uart_cpm_port* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @UART_NR, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %46

23:                                               ; preds = %1
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = load %struct.uart_cpm_port*, %struct.uart_cpm_port** %5, align 8
  %26 = call i32 @platform_set_drvdata(%struct.platform_device* %24, %struct.uart_cpm_port* %25)
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = load %struct.uart_cpm_port*, %struct.uart_cpm_port** %5, align 8
  %30 = getelementptr inbounds %struct.uart_cpm_port, %struct.uart_cpm_port* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  store %struct.TYPE_3__* %28, %struct.TYPE_3__** %31, align 8
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.uart_cpm_port*, %struct.uart_cpm_port** %5, align 8
  %37 = call i32 @cpm_uart_init_port(i32 %35, %struct.uart_cpm_port* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %23
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %2, align 4
  br label %46

42:                                               ; preds = %23
  %43 = load %struct.uart_cpm_port*, %struct.uart_cpm_port** %5, align 8
  %44 = getelementptr inbounds %struct.uart_cpm_port, %struct.uart_cpm_port* %43, i32 0, i32 0
  %45 = call i32 @uart_add_one_port(i32* @cpm_reg, %struct.TYPE_4__* %44)
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %42, %40, %20
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.uart_cpm_port*) #1

declare dso_local i32 @cpm_uart_init_port(i32, %struct.uart_cpm_port*) #1

declare dso_local i32 @uart_add_one_port(i32*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
