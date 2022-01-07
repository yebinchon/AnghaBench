; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_imx.c_imx_uart_probe_pdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_imx.c_imx_uart_probe_pdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_port = type { i32, %struct.imx_uart_data*, %struct.TYPE_3__ }
%struct.imx_uart_data = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.imxuart_platform_data = type { i32 }

@IMXUART_HAVE_RTSCTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imx_port*, %struct.platform_device*)* @imx_uart_probe_pdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx_uart_probe_pdata(%struct.imx_port* %0, %struct.platform_device* %1) #0 {
  %3 = alloca %struct.imx_port*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.imxuart_platform_data*, align 8
  store %struct.imx_port* %0, %struct.imx_port** %3, align 8
  store %struct.platform_device* %1, %struct.platform_device** %4, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 2
  %8 = call %struct.imxuart_platform_data* @dev_get_platdata(i32* %7)
  store %struct.imxuart_platform_data* %8, %struct.imxuart_platform_data** %5, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %13 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i32 %11, i32* %14, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.imx_uart_data*
  %21 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %22 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %21, i32 0, i32 1
  store %struct.imx_uart_data* %20, %struct.imx_uart_data** %22, align 8
  %23 = load %struct.imxuart_platform_data*, %struct.imxuart_platform_data** %5, align 8
  %24 = icmp ne %struct.imxuart_platform_data* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  br label %36

26:                                               ; preds = %2
  %27 = load %struct.imxuart_platform_data*, %struct.imxuart_platform_data** %5, align 8
  %28 = getelementptr inbounds %struct.imxuart_platform_data, %struct.imxuart_platform_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IMXUART_HAVE_RTSCTS, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %35 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  br label %36

36:                                               ; preds = %25, %33, %26
  ret void
}

declare dso_local %struct.imxuart_platform_data* @dev_get_platdata(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
