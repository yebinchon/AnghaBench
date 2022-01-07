; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_spi.c_wilc_spi_read_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_spi.c_wilc_spi_read_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc = type { %struct.wilc_spi*, i32 }
%struct.wilc_spi = type { i32, i64 }
%struct.spi_device = type { i32 }

@IRG_FLAGS_OFFSET = common dso_local global i32 0, align 4
@WILC_SPI_REG_BASE = common dso_local global i64 0, align 8
@WILC_VMM_TO_HOST_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed read WILC_VMM_TO_HOST_SIZE ...\0A\00", align 1
@IRQ_DMA_WD_CNT_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Unexpected interrupt(2):j=%d,tmp=%x,mask=%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wilc*, i32*)* @wilc_spi_read_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wilc_spi_read_int(%struct.wilc* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wilc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca %struct.wilc_spi*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.wilc* %0, %struct.wilc** %4, align 8
  store i32* %1, i32** %5, align 8
  %16 = load %struct.wilc*, %struct.wilc** %4, align 8
  %17 = getelementptr inbounds %struct.wilc, %struct.wilc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.spi_device* @to_spi_device(i32 %18)
  store %struct.spi_device* %19, %struct.spi_device** %6, align 8
  %20 = load %struct.wilc*, %struct.wilc** %4, align 8
  %21 = getelementptr inbounds %struct.wilc, %struct.wilc* %20, i32 0, i32 0
  %22 = load %struct.wilc_spi*, %struct.wilc_spi** %21, align 8
  store %struct.wilc_spi* %22, %struct.wilc_spi** %7, align 8
  %23 = load i32, i32* @IRG_FLAGS_OFFSET, align 4
  %24 = add nsw i32 %23, 5
  store i32 %24, i32* %15, align 4
  %25 = load %struct.wilc_spi*, %struct.wilc_spi** %7, align 8
  %26 = getelementptr inbounds %struct.wilc_spi, %struct.wilc_spi* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %2
  %30 = load %struct.wilc*, %struct.wilc** %4, align 8
  %31 = load i64, i64* @WILC_SPI_REG_BASE, align 8
  %32 = sub nsw i64 59456, %31
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @spi_internal_read(%struct.wilc* %30, i64 %32, i32* %33)
  store i32 %34, i32* %3, align 4
  br label %107

35:                                               ; preds = %2
  %36 = load %struct.wilc*, %struct.wilc** %4, align 8
  %37 = load i32, i32* @WILC_VMM_TO_HOST_SIZE, align 4
  %38 = call i32 @wilc_spi_read_reg(%struct.wilc* %36, i32 %37, i32* %10)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %35
  %42 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %43 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %42, i32 0, i32 0
  %44 = call i32 (i32*, i8*, ...) @dev_err(i32* %43, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %3, align 4
  br label %107

46:                                               ; preds = %35
  %47 = load i32, i32* %10, align 4
  %48 = ashr i32 %47, 2
  %49 = load i32, i32* @IRQ_DMA_WD_CNT_MASK, align 4
  %50 = and i32 %48, %49
  store i32 %50, i32* %9, align 4
  store i32 0, i32* %12, align 4
  br label %51

51:                                               ; preds = %100, %46
  %52 = load %struct.wilc*, %struct.wilc** %4, align 8
  %53 = call i32 @wilc_spi_read_reg(%struct.wilc* %52, i32 6800, i32* %14)
  %54 = load i32, i32* %14, align 4
  %55 = ashr i32 %54, 27
  %56 = load i32, i32* @IRG_FLAGS_OFFSET, align 4
  %57 = shl i32 %55, %56
  %58 = load i32, i32* %9, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %9, align 4
  %60 = load %struct.wilc_spi*, %struct.wilc_spi** %7, align 8
  %61 = getelementptr inbounds %struct.wilc_spi, %struct.wilc_spi* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp sgt i32 %62, 5
  br i1 %63, label %64, label %74

64:                                               ; preds = %51
  %65 = load %struct.wilc*, %struct.wilc** %4, align 8
  %66 = call i32 @wilc_spi_read_reg(%struct.wilc* %65, i32 6804, i32* %14)
  %67 = load i32, i32* %14, align 4
  %68 = ashr i32 %67, 0
  %69 = and i32 %68, 7
  %70 = load i32, i32* %15, align 4
  %71 = shl i32 %69, %70
  %72 = load i32, i32* %9, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %64, %51
  %75 = load %struct.wilc_spi*, %struct.wilc_spi** %7, align 8
  %76 = getelementptr inbounds %struct.wilc_spi, %struct.wilc_spi* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = zext i32 %77 to i64
  %79 = shl i64 1, %78
  %80 = sub i64 %79, 1
  %81 = xor i64 %80, -1
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @IRG_FLAGS_OFFSET, align 4
  %85 = ashr i32 %83, %84
  %86 = load i32, i32* %13, align 4
  %87 = and i32 %85, %86
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %74
  %91 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %92 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %91, i32 0, i32 0
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %13, align 4
  %96 = call i32 (i32*, i8*, ...) @dev_err(i32* %92, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %93, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %90, %74
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %12, align 4
  br label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %11, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %51, label %103

103:                                              ; preds = %100
  %104 = load i32, i32* %9, align 4
  %105 = load i32*, i32** %5, align 8
  store i32 %104, i32* %105, align 4
  %106 = load i32, i32* %8, align 4
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %103, %41, %29
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local %struct.spi_device* @to_spi_device(i32) #1

declare dso_local i32 @spi_internal_read(%struct.wilc*, i64, i32*) #1

declare dso_local i32 @wilc_spi_read_reg(%struct.wilc*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
