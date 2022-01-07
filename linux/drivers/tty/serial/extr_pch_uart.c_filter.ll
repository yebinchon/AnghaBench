; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pch_uart.c_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pch_uart.c_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i64, %struct.pch_dma_slave*, %struct.TYPE_2__* }
%struct.pch_dma_slave = type { i64, i64 }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, i8*)* @filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter(%struct.dma_chan* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dma_chan*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pch_dma_slave*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.pch_dma_slave*
  store %struct.pch_dma_slave* %8, %struct.pch_dma_slave** %6, align 8
  %9 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %10 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.pch_dma_slave*, %struct.pch_dma_slave** %6, align 8
  %13 = getelementptr inbounds %struct.pch_dma_slave, %struct.pch_dma_slave* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %11, %14
  br i1 %15, label %16, label %30

16:                                               ; preds = %2
  %17 = load %struct.pch_dma_slave*, %struct.pch_dma_slave** %6, align 8
  %18 = getelementptr inbounds %struct.pch_dma_slave, %struct.pch_dma_slave* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %21 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %19, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %16
  %27 = load %struct.pch_dma_slave*, %struct.pch_dma_slave** %6, align 8
  %28 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %29 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %28, i32 0, i32 1
  store %struct.pch_dma_slave* %27, %struct.pch_dma_slave** %29, align 8
  store i32 1, i32* %3, align 4
  br label %31

30:                                               ; preds = %16, %2
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %26
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
