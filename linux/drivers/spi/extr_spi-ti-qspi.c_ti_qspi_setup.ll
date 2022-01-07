; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-ti-qspi.c_ti_qspi_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-ti-qspi.c_ti_qspi_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.ti_qspi = type { i32, i32, i32, %struct.ti_qspi_regs }
%struct.ti_qspi_regs = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"master busy doing other transfers\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"spi max frequency not defined\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"clock divider < 0, using /1 divider\0A\00", align 1
@QSPI_CLK_DIV_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"clock divider >%d , using /%d divider\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"hz: %d, clock divider %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"pm_runtime_get_sync() failed\0A\00", align 1
@QSPI_SPI_CLOCK_CNTRL_REG = common dso_local global i32 0, align 4
@QSPI_CLK_EN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"pm_runtime_put_autosuspend() failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ti_qspi_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_qspi_setup(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.ti_qspi*, align 8
  %5 = alloca %struct.ti_qspi_regs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %11 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %12 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = call %struct.ti_qspi* @spi_master_get_devdata(%struct.TYPE_2__* %13)
  store %struct.ti_qspi* %14, %struct.ti_qspi** %4, align 8
  %15 = load %struct.ti_qspi*, %struct.ti_qspi** %4, align 8
  %16 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %15, i32 0, i32 3
  store %struct.ti_qspi_regs* %16, %struct.ti_qspi_regs** %5, align 8
  store i32 0, i32* %6, align 4
  %17 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %18 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %1
  %24 = load %struct.ti_qspi*, %struct.ti_qspi** %4, align 8
  %25 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i32, i8*, ...) @dev_dbg(i32 %26, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %136

30:                                               ; preds = %1
  %31 = load %struct.ti_qspi*, %struct.ti_qspi** %4, align 8
  %32 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %30
  %36 = load %struct.ti_qspi*, %struct.ti_qspi** %4, align 8
  %37 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %136

42:                                               ; preds = %30
  %43 = load %struct.ti_qspi*, %struct.ti_qspi** %4, align 8
  %44 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @clk_get_rate(i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.ti_qspi*, %struct.ti_qspi** %4, align 8
  %49 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @DIV_ROUND_UP(i32 %47, i32 %50)
  %52 = sub nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %42
  %56 = load %struct.ti_qspi*, %struct.ti_qspi** %4, align 8
  %57 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i32, i8*, ...) @dev_dbg(i32 %58, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %136

62:                                               ; preds = %42
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @QSPI_CLK_DIV_MAX, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %62
  %67 = load %struct.ti_qspi*, %struct.ti_qspi** %4, align 8
  %68 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @QSPI_CLK_DIV_MAX, align 4
  %71 = load i32, i32* @QSPI_CLK_DIV_MAX, align 4
  %72 = add nsw i32 %71, 1
  %73 = call i32 (i32, i8*, ...) @dev_dbg(i32 %69, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %70, i32 %72)
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %136

76:                                               ; preds = %62
  %77 = load %struct.ti_qspi*, %struct.ti_qspi** %4, align 8
  %78 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ti_qspi*, %struct.ti_qspi** %4, align 8
  %81 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %6, align 4
  %84 = call i32 (i32, i8*, ...) @dev_dbg(i32 %79, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %82, i32 %83)
  %85 = load %struct.ti_qspi*, %struct.ti_qspi** %4, align 8
  %86 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @pm_runtime_get_sync(i32 %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %76
  %92 = load %struct.ti_qspi*, %struct.ti_qspi** %4, align 8
  %93 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @dev_err(i32 %94, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %96 = load i32, i32* %7, align 4
  store i32 %96, i32* %2, align 4
  br label %136

97:                                               ; preds = %76
  %98 = load %struct.ti_qspi*, %struct.ti_qspi** %4, align 8
  %99 = load i32, i32* @QSPI_SPI_CLOCK_CNTRL_REG, align 4
  %100 = call i32 @ti_qspi_read(%struct.ti_qspi* %98, i32 %99)
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* @QSPI_CLK_EN, align 4
  %102 = xor i32 %101, -1
  %103 = load i32, i32* %8, align 4
  %104 = and i32 %103, %102
  store i32 %104, i32* %8, align 4
  %105 = load %struct.ti_qspi*, %struct.ti_qspi** %4, align 8
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* @QSPI_SPI_CLOCK_CNTRL_REG, align 4
  %108 = call i32 @ti_qspi_write(%struct.ti_qspi* %105, i32 %106, i32 %107)
  %109 = load i32, i32* @QSPI_CLK_EN, align 4
  %110 = load i32, i32* %6, align 4
  %111 = or i32 %109, %110
  store i32 %111, i32* %10, align 4
  %112 = load %struct.ti_qspi*, %struct.ti_qspi** %4, align 8
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* @QSPI_SPI_CLOCK_CNTRL_REG, align 4
  %115 = call i32 @ti_qspi_write(%struct.ti_qspi* %112, i32 %113, i32 %114)
  %116 = load i32, i32* %10, align 4
  %117 = load %struct.ti_qspi_regs*, %struct.ti_qspi_regs** %5, align 8
  %118 = getelementptr inbounds %struct.ti_qspi_regs, %struct.ti_qspi_regs* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 4
  %119 = load %struct.ti_qspi*, %struct.ti_qspi** %4, align 8
  %120 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @pm_runtime_mark_last_busy(i32 %121)
  %123 = load %struct.ti_qspi*, %struct.ti_qspi** %4, align 8
  %124 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @pm_runtime_put_autosuspend(i32 %125)
  store i32 %126, i32* %7, align 4
  %127 = load i32, i32* %7, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %97
  %130 = load %struct.ti_qspi*, %struct.ti_qspi** %4, align 8
  %131 = getelementptr inbounds %struct.ti_qspi, %struct.ti_qspi* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @dev_err(i32 %132, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  %134 = load i32, i32* %7, align 4
  store i32 %134, i32* %2, align 4
  br label %136

135:                                              ; preds = %97
  store i32 0, i32* %2, align 4
  br label %136

136:                                              ; preds = %135, %129, %91, %66, %55, %35, %23
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local %struct.ti_qspi* @spi_master_get_devdata(%struct.TYPE_2__*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @ti_qspi_read(%struct.ti_qspi*, i32) #1

declare dso_local i32 @ti_qspi_write(%struct.ti_qspi*, i32, i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
