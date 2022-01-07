; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-xilinx.c_xilinx_spi_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-xilinx.c_xilinx_spi_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xilinx_spi = type { i32, i64, i64, i32 (i64, i64)* }

@XSPI_TXD_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xilinx_spi*)* @xilinx_spi_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xilinx_spi_tx(%struct.xilinx_spi* %0) #0 {
  %2 = alloca %struct.xilinx_spi*, align 8
  %3 = alloca i64, align 8
  store %struct.xilinx_spi* %0, %struct.xilinx_spi** %2, align 8
  store i64 0, i64* %3, align 8
  %4 = load %struct.xilinx_spi*, %struct.xilinx_spi** %2, align 8
  %5 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %1
  %9 = load %struct.xilinx_spi*, %struct.xilinx_spi** %2, align 8
  %10 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %9, i32 0, i32 3
  %11 = load i32 (i64, i64)*, i32 (i64, i64)** %10, align 8
  %12 = load %struct.xilinx_spi*, %struct.xilinx_spi** %2, align 8
  %13 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @XSPI_TXD_OFFSET, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 %11(i64 0, i64 %16)
  br label %59

18:                                               ; preds = %1
  %19 = load %struct.xilinx_spi*, %struct.xilinx_spi** %2, align 8
  %20 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %40 [
    i32 1, label %22
    i32 2, label %28
    i32 4, label %34
  ]

22:                                               ; preds = %18
  %23 = load %struct.xilinx_spi*, %struct.xilinx_spi** %2, align 8
  %24 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i64*
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %3, align 8
  br label %40

28:                                               ; preds = %18
  %29 = load %struct.xilinx_spi*, %struct.xilinx_spi** %2, align 8
  %30 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i64*
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %3, align 8
  br label %40

34:                                               ; preds = %18
  %35 = load %struct.xilinx_spi*, %struct.xilinx_spi** %2, align 8
  %36 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i64*
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %3, align 8
  br label %40

40:                                               ; preds = %18, %34, %28, %22
  %41 = load %struct.xilinx_spi*, %struct.xilinx_spi** %2, align 8
  %42 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %41, i32 0, i32 3
  %43 = load i32 (i64, i64)*, i32 (i64, i64)** %42, align 8
  %44 = load i64, i64* %3, align 8
  %45 = load %struct.xilinx_spi*, %struct.xilinx_spi** %2, align 8
  %46 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @XSPI_TXD_OFFSET, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 %43(i64 %44, i64 %49)
  %51 = load %struct.xilinx_spi*, %struct.xilinx_spi** %2, align 8
  %52 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = load %struct.xilinx_spi*, %struct.xilinx_spi** %2, align 8
  %56 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, %54
  store i64 %58, i64* %56, align 8
  br label %59

59:                                               ; preds = %40, %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
