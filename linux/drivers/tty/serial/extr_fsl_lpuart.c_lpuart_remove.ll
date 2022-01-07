; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_fsl_lpuart.c_lpuart_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_fsl_lpuart.c_lpuart_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.lpuart_port = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@lpuart_reg = common dso_local global i32 0, align 4
@fsl_lpuart_ida = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @lpuart_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpuart_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.lpuart_port*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.lpuart_port* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.lpuart_port* %5, %struct.lpuart_port** %3, align 8
  %6 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %7 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %6, i32 0, i32 2
  %8 = call i32 @uart_remove_one_port(i32* @lpuart_reg, %struct.TYPE_2__* %7)
  %9 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %10 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @ida_simple_remove(i32* @fsl_lpuart_ida, i32 %12)
  %14 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %15 = call i32 @lpuart_disable_clks(%struct.lpuart_port* %14)
  %16 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %17 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %22 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @dma_release_channel(i64 %23)
  br label %25

25:                                               ; preds = %20, %1
  %26 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %27 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %32 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @dma_release_channel(i64 %33)
  br label %35

35:                                               ; preds = %30, %25
  ret i32 0
}

declare dso_local %struct.lpuart_port* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @uart_remove_one_port(i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @lpuart_disable_clks(%struct.lpuart_port*) #1

declare dso_local i32 @dma_release_channel(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
