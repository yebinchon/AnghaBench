; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-xilinx.c_xilinx_spi_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-xilinx.c_xilinx_spi_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xilinx_spi = type { i32 (i64)*, i32, i64, i32 (i32, i64)* }

@XIPIF_V123B_IISR_OFFSET = common dso_local global i64 0, align 8
@XSPI_INTR_TX_EMPTY = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @xilinx_spi_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xilinx_spi_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.xilinx_spi*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.xilinx_spi*
  store %struct.xilinx_spi* %9, %struct.xilinx_spi** %6, align 8
  %10 = load %struct.xilinx_spi*, %struct.xilinx_spi** %6, align 8
  %11 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %10, i32 0, i32 0
  %12 = load i32 (i64)*, i32 (i64)** %11, align 8
  %13 = load %struct.xilinx_spi*, %struct.xilinx_spi** %6, align 8
  %14 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @XIPIF_V123B_IISR_OFFSET, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 %12(i64 %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.xilinx_spi*, %struct.xilinx_spi** %6, align 8
  %20 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %19, i32 0, i32 3
  %21 = load i32 (i32, i64)*, i32 (i32, i64)** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.xilinx_spi*, %struct.xilinx_spi** %6, align 8
  %24 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @XIPIF_V123B_IISR_OFFSET, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 %21(i32 %22, i64 %27)
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @XSPI_INTR_TX_EMPTY, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %2
  %34 = load %struct.xilinx_spi*, %struct.xilinx_spi** %6, align 8
  %35 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %34, i32 0, i32 1
  %36 = call i32 @complete(i32* %35)
  %37 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %37, i32* %3, align 4
  br label %40

38:                                               ; preds = %2
  %39 = load i32, i32* @IRQ_NONE, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %38, %33
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
