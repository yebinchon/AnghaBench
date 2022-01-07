; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-xilinx.c_xilinx_spi_find_buffer_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-xilinx.c_xilinx_spi_find_buffer_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xilinx_spi = type { i32 (i64)*, i64, i32 (i32, i64)* }

@XIPIF_V123B_RESET_MASK = common dso_local global i32 0, align 4
@XIPIF_V123B_RESETR_OFFSET = common dso_local global i64 0, align 8
@XSPI_TXD_OFFSET = common dso_local global i64 0, align 8
@XSPI_SR_OFFSET = common dso_local global i64 0, align 8
@XSPI_SR_TX_FULL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xilinx_spi*)* @xilinx_spi_find_buffer_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xilinx_spi_find_buffer_size(%struct.xilinx_spi* %0) #0 {
  %2 = alloca %struct.xilinx_spi*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.xilinx_spi* %0, %struct.xilinx_spi** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.xilinx_spi*, %struct.xilinx_spi** %2, align 8
  %6 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %5, i32 0, i32 2
  %7 = load i32 (i32, i64)*, i32 (i32, i64)** %6, align 8
  %8 = load i32, i32* @XIPIF_V123B_RESET_MASK, align 4
  %9 = load %struct.xilinx_spi*, %struct.xilinx_spi** %2, align 8
  %10 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @XIPIF_V123B_RESETR_OFFSET, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 %7(i32 %8, i64 %13)
  br label %15

15:                                               ; preds = %36, %1
  %16 = load %struct.xilinx_spi*, %struct.xilinx_spi** %2, align 8
  %17 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %16, i32 0, i32 2
  %18 = load i32 (i32, i64)*, i32 (i32, i64)** %17, align 8
  %19 = load %struct.xilinx_spi*, %struct.xilinx_spi** %2, align 8
  %20 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @XSPI_TXD_OFFSET, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 %18(i32 0, i64 %23)
  %25 = load %struct.xilinx_spi*, %struct.xilinx_spi** %2, align 8
  %26 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %25, i32 0, i32 0
  %27 = load i32 (i64)*, i32 (i64)** %26, align 8
  %28 = load %struct.xilinx_spi*, %struct.xilinx_spi** %2, align 8
  %29 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @XSPI_SR_OFFSET, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 %27(i64 %32)
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %15
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @XSPI_SR_TX_FULL_MASK, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  br i1 %41, label %15, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
