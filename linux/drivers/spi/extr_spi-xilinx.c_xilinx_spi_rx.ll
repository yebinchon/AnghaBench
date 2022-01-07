; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-xilinx.c_xilinx_spi_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-xilinx.c_xilinx_spi_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xilinx_spi = type { i32, i64, i64, i8* (i64)* }

@XSPI_RXD_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xilinx_spi*)* @xilinx_spi_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xilinx_spi_rx(%struct.xilinx_spi* %0) #0 {
  %2 = alloca %struct.xilinx_spi*, align 8
  %3 = alloca i8*, align 8
  store %struct.xilinx_spi* %0, %struct.xilinx_spi** %2, align 8
  %4 = load %struct.xilinx_spi*, %struct.xilinx_spi** %2, align 8
  %5 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %4, i32 0, i32 3
  %6 = load i8* (i64)*, i8* (i64)** %5, align 8
  %7 = load %struct.xilinx_spi*, %struct.xilinx_spi** %2, align 8
  %8 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @XSPI_RXD_OFFSET, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i8* %6(i64 %11)
  store i8* %12, i8** %3, align 8
  %13 = load %struct.xilinx_spi*, %struct.xilinx_spi** %2, align 8
  %14 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %49

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
  %23 = load i8*, i8** %3, align 8
  %24 = load %struct.xilinx_spi*, %struct.xilinx_spi** %2, align 8
  %25 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i8**
  store i8* %23, i8** %27, align 8
  br label %40

28:                                               ; preds = %18
  %29 = load i8*, i8** %3, align 8
  %30 = load %struct.xilinx_spi*, %struct.xilinx_spi** %2, align 8
  %31 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i8**
  store i8* %29, i8** %33, align 8
  br label %40

34:                                               ; preds = %18
  %35 = load i8*, i8** %3, align 8
  %36 = load %struct.xilinx_spi*, %struct.xilinx_spi** %2, align 8
  %37 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i8**
  store i8* %35, i8** %39, align 8
  br label %40

40:                                               ; preds = %18, %34, %28, %22
  %41 = load %struct.xilinx_spi*, %struct.xilinx_spi** %2, align 8
  %42 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = load %struct.xilinx_spi*, %struct.xilinx_spi** %2, align 8
  %46 = getelementptr inbounds %struct.xilinx_spi, %struct.xilinx_spi* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, %44
  store i64 %48, i64* %46, align 8
  br label %49

49:                                               ; preds = %40, %17
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
