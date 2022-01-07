; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-dspi.c_dspi_rx_dma_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-dspi.c_dspi_rx_dma_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_dspi = type { %struct.fsl_dspi_dma*, i64 }
%struct.fsl_dspi_dma = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @dspi_rx_dma_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dspi_rx_dma_callback(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.fsl_dspi*, align 8
  %4 = alloca %struct.fsl_dspi_dma*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.fsl_dspi*
  store %struct.fsl_dspi* %7, %struct.fsl_dspi** %3, align 8
  %8 = load %struct.fsl_dspi*, %struct.fsl_dspi** %3, align 8
  %9 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %8, i32 0, i32 0
  %10 = load %struct.fsl_dspi_dma*, %struct.fsl_dspi_dma** %9, align 8
  store %struct.fsl_dspi_dma* %10, %struct.fsl_dspi_dma** %4, align 8
  %11 = load %struct.fsl_dspi*, %struct.fsl_dspi** %3, align 8
  %12 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %34, %15
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.fsl_dspi_dma*, %struct.fsl_dspi_dma** %4, align 8
  %19 = getelementptr inbounds %struct.fsl_dspi_dma, %struct.fsl_dspi_dma* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %16
  %23 = load %struct.fsl_dspi*, %struct.fsl_dspi** %3, align 8
  %24 = load %struct.fsl_dspi*, %struct.fsl_dspi** %3, align 8
  %25 = getelementptr inbounds %struct.fsl_dspi, %struct.fsl_dspi* %24, i32 0, i32 0
  %26 = load %struct.fsl_dspi_dma*, %struct.fsl_dspi_dma** %25, align 8
  %27 = getelementptr inbounds %struct.fsl_dspi_dma, %struct.fsl_dspi_dma* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dspi_push_rx(%struct.fsl_dspi* %23, i32 %32)
  br label %34

34:                                               ; preds = %22
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %16

37:                                               ; preds = %16
  br label %38

38:                                               ; preds = %37, %1
  %39 = load %struct.fsl_dspi_dma*, %struct.fsl_dspi_dma** %4, align 8
  %40 = getelementptr inbounds %struct.fsl_dspi_dma, %struct.fsl_dspi_dma* %39, i32 0, i32 1
  %41 = call i32 @complete(i32* %40)
  ret void
}

declare dso_local i32 @dspi_push_rx(%struct.fsl_dspi*, i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
