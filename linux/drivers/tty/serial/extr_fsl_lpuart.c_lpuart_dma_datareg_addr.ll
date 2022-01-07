; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_fsl_lpuart.c_lpuart_dma_datareg_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_fsl_lpuart.c_lpuart_dma_datareg_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpuart_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@UARTDATA = common dso_local global i64 0, align 8
@UARTDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.lpuart_port*)* @lpuart_dma_datareg_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @lpuart_dma_datareg_addr(%struct.lpuart_port* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.lpuart_port*, align 8
  store %struct.lpuart_port* %0, %struct.lpuart_port** %3, align 8
  %4 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %5 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %24 [
    i32 129, label %8
    i32 128, label %15
  ]

8:                                                ; preds = %1
  %9 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %10 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @UARTDATA, align 8
  %14 = add nsw i64 %12, %13
  store i64 %14, i64* %2, align 8
  br label %31

15:                                               ; preds = %1
  %16 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %17 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @UARTDATA, align 8
  %21 = add nsw i64 %19, %20
  %22 = add i64 %21, 4
  %23 = sub i64 %22, 1
  store i64 %23, i64* %2, align 8
  br label %31

24:                                               ; preds = %1
  %25 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %26 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @UARTDR, align 8
  %30 = add nsw i64 %28, %29
  store i64 %30, i64* %2, align 8
  br label %31

31:                                               ; preds = %24, %15, %8
  %32 = load i64, i64* %2, align 8
  ret i64 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
