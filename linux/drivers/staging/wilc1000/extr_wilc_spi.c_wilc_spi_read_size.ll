; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_spi.c_wilc_spi_read_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_spi.c_wilc_spi_read_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc = type { %struct.wilc_spi*, i32 }
%struct.wilc_spi = type { i64 }
%struct.spi_device = type { i32 }

@WILC_SPI_REG_BASE = common dso_local global i64 0, align 8
@IRQ_DMA_WD_CNT_MASK = common dso_local global i32 0, align 4
@WILC_VMM_TO_HOST_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed read WILC_VMM_TO_HOST_SIZE ...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wilc*, i32*)* @wilc_spi_read_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wilc_spi_read_size(%struct.wilc* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wilc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca %struct.wilc_spi*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.wilc* %0, %struct.wilc** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.wilc*, %struct.wilc** %4, align 8
  %12 = getelementptr inbounds %struct.wilc, %struct.wilc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.spi_device* @to_spi_device(i32 %13)
  store %struct.spi_device* %14, %struct.spi_device** %6, align 8
  %15 = load %struct.wilc*, %struct.wilc** %4, align 8
  %16 = getelementptr inbounds %struct.wilc, %struct.wilc* %15, i32 0, i32 0
  %17 = load %struct.wilc_spi*, %struct.wilc_spi** %16, align 8
  store %struct.wilc_spi* %17, %struct.wilc_spi** %7, align 8
  %18 = load %struct.wilc_spi*, %struct.wilc_spi** %7, align 8
  %19 = getelementptr inbounds %struct.wilc_spi, %struct.wilc_spi* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %2
  %23 = load %struct.wilc*, %struct.wilc** %4, align 8
  %24 = load i64, i64* @WILC_SPI_REG_BASE, align 8
  %25 = sub nsw i64 59456, %24
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @spi_internal_read(%struct.wilc* %23, i64 %25, i32* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IRQ_DMA_WD_CNT_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load i32*, i32** %5, align 8
  store i32 %31, i32* %32, align 4
  br label %51

33:                                               ; preds = %2
  %34 = load %struct.wilc*, %struct.wilc** %4, align 8
  %35 = load i32, i32* @WILC_VMM_TO_HOST_SIZE, align 4
  %36 = call i32 @wilc_spi_read_reg(%struct.wilc* %34, i32 %35, i32* %10)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %33
  %40 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %41 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %40, i32 0, i32 0
  %42 = call i32 @dev_err(i32* %41, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %3, align 4
  br label %53

44:                                               ; preds = %33
  %45 = load i32, i32* %10, align 4
  %46 = ashr i32 %45, 2
  %47 = load i32, i32* @IRQ_DMA_WD_CNT_MASK, align 4
  %48 = and i32 %46, %47
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32*, i32** %5, align 8
  store i32 %49, i32* %50, align 4
  br label %51

51:                                               ; preds = %44, %22
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %51, %39
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.spi_device* @to_spi_device(i32) #1

declare dso_local i32 @spi_internal_read(%struct.wilc*, i64, i32*) #1

declare dso_local i32 @wilc_spi_read_reg(%struct.wilc*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
