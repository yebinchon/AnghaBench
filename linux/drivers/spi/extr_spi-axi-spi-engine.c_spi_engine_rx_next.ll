; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-axi-spi-engine.c_spi_engine_rx_next.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-axi-spi-engine.c_spi_engine_rx_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_engine = type { i32*, i32, %struct.spi_transfer* }
%struct.spi_transfer = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_engine*)* @spi_engine_rx_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spi_engine_rx_next(%struct.spi_engine* %0) #0 {
  %2 = alloca %struct.spi_engine*, align 8
  %3 = alloca %struct.spi_transfer*, align 8
  store %struct.spi_engine* %0, %struct.spi_engine** %2, align 8
  %4 = load %struct.spi_engine*, %struct.spi_engine** %2, align 8
  %5 = getelementptr inbounds %struct.spi_engine, %struct.spi_engine* %4, i32 0, i32 2
  %6 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  store %struct.spi_transfer* %6, %struct.spi_transfer** %3, align 8
  br label %7

7:                                                ; preds = %19, %1
  %8 = load %struct.spi_engine*, %struct.spi_engine** %2, align 8
  %9 = call i32 @spi_engine_xfer_next(%struct.spi_engine* %8, %struct.spi_transfer** %3)
  br label %10

10:                                               ; preds = %7
  %11 = load %struct.spi_transfer*, %struct.spi_transfer** %3, align 8
  %12 = icmp ne %struct.spi_transfer* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = load %struct.spi_transfer*, %struct.spi_transfer** %3, align 8
  %15 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  %18 = xor i1 %17, true
  br label %19

19:                                               ; preds = %13, %10
  %20 = phi i1 [ false, %10 ], [ %18, %13 ]
  br i1 %20, label %7, label %21

21:                                               ; preds = %19
  %22 = load %struct.spi_transfer*, %struct.spi_transfer** %3, align 8
  %23 = load %struct.spi_engine*, %struct.spi_engine** %2, align 8
  %24 = getelementptr inbounds %struct.spi_engine, %struct.spi_engine* %23, i32 0, i32 2
  store %struct.spi_transfer* %22, %struct.spi_transfer** %24, align 8
  %25 = load %struct.spi_transfer*, %struct.spi_transfer** %3, align 8
  %26 = icmp ne %struct.spi_transfer* %25, null
  br i1 %26, label %27, label %38

27:                                               ; preds = %21
  %28 = load %struct.spi_transfer*, %struct.spi_transfer** %3, align 8
  %29 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.spi_engine*, %struct.spi_engine** %2, align 8
  %32 = getelementptr inbounds %struct.spi_engine, %struct.spi_engine* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load %struct.spi_transfer*, %struct.spi_transfer** %3, align 8
  %34 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.spi_engine*, %struct.spi_engine** %2, align 8
  %37 = getelementptr inbounds %struct.spi_engine, %struct.spi_engine* %36, i32 0, i32 0
  store i32* %35, i32** %37, align 8
  br label %41

38:                                               ; preds = %21
  %39 = load %struct.spi_engine*, %struct.spi_engine** %2, align 8
  %40 = getelementptr inbounds %struct.spi_engine, %struct.spi_engine* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  br label %41

41:                                               ; preds = %38, %27
  ret void
}

declare dso_local i32 @spi_engine_xfer_next(%struct.spi_engine*, %struct.spi_transfer**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
