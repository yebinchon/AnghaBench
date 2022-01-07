; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-omap2-mcspi.c_omap2_mcspi_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-omap2-mcspi.c_omap2_mcspi_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i64, i32, i32, i32, %struct.omap2_mcspi_cs*, i32 }
%struct.omap2_mcspi_cs = type { i32, i64, i64, i64, i64, i64 }
%struct.omap2_mcspi = type { i32, i64, i64, %struct.omap2_mcspi_dma*, %struct.omap2_mcspi_regs }
%struct.omap2_mcspi_dma = type { i32, i32 }
%struct.omap2_mcspi_regs = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"failed to request gpio\0A\00", align 1
@SPI_CS_HIGH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"not using DMA for McSPI (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @omap2_mcspi_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap2_mcspi_setup(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.omap2_mcspi*, align 8
  %6 = alloca %struct.omap2_mcspi_regs*, align 8
  %7 = alloca %struct.omap2_mcspi_dma*, align 8
  %8 = alloca %struct.omap2_mcspi_cs*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %9 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %10 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.omap2_mcspi* @spi_master_get_devdata(i32 %11)
  store %struct.omap2_mcspi* %12, %struct.omap2_mcspi** %5, align 8
  %13 = load %struct.omap2_mcspi*, %struct.omap2_mcspi** %5, align 8
  %14 = getelementptr inbounds %struct.omap2_mcspi, %struct.omap2_mcspi* %13, i32 0, i32 4
  store %struct.omap2_mcspi_regs* %14, %struct.omap2_mcspi_regs** %6, align 8
  %15 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %16 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %15, i32 0, i32 4
  %17 = load %struct.omap2_mcspi_cs*, %struct.omap2_mcspi_cs** %16, align 8
  store %struct.omap2_mcspi_cs* %17, %struct.omap2_mcspi_cs** %8, align 8
  %18 = load %struct.omap2_mcspi*, %struct.omap2_mcspi** %5, align 8
  %19 = getelementptr inbounds %struct.omap2_mcspi, %struct.omap2_mcspi* %18, i32 0, i32 3
  %20 = load %struct.omap2_mcspi_dma*, %struct.omap2_mcspi_dma** %19, align 8
  %21 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %22 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.omap2_mcspi_dma, %struct.omap2_mcspi_dma* %20, i64 %23
  store %struct.omap2_mcspi_dma* %24, %struct.omap2_mcspi_dma** %7, align 8
  %25 = load %struct.omap2_mcspi_cs*, %struct.omap2_mcspi_cs** %8, align 8
  %26 = icmp ne %struct.omap2_mcspi_cs* %25, null
  br i1 %26, label %104, label %27

27:                                               ; preds = %1
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.omap2_mcspi_cs* @kzalloc(i32 48, i32 %28)
  store %struct.omap2_mcspi_cs* %29, %struct.omap2_mcspi_cs** %8, align 8
  %30 = load %struct.omap2_mcspi_cs*, %struct.omap2_mcspi_cs** %8, align 8
  %31 = icmp ne %struct.omap2_mcspi_cs* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %150

35:                                               ; preds = %27
  %36 = load %struct.omap2_mcspi*, %struct.omap2_mcspi** %5, align 8
  %37 = getelementptr inbounds %struct.omap2_mcspi, %struct.omap2_mcspi* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %40 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = mul i64 %41, 20
  %43 = add i64 %38, %42
  %44 = load %struct.omap2_mcspi_cs*, %struct.omap2_mcspi_cs** %8, align 8
  %45 = getelementptr inbounds %struct.omap2_mcspi_cs, %struct.omap2_mcspi_cs* %44, i32 0, i32 5
  store i64 %43, i64* %45, align 8
  %46 = load %struct.omap2_mcspi*, %struct.omap2_mcspi** %5, align 8
  %47 = getelementptr inbounds %struct.omap2_mcspi, %struct.omap2_mcspi* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %50 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = mul i64 %51, 20
  %53 = add i64 %48, %52
  %54 = load %struct.omap2_mcspi_cs*, %struct.omap2_mcspi_cs** %8, align 8
  %55 = getelementptr inbounds %struct.omap2_mcspi_cs, %struct.omap2_mcspi_cs* %54, i32 0, i32 4
  store i64 %53, i64* %55, align 8
  %56 = load %struct.omap2_mcspi_cs*, %struct.omap2_mcspi_cs** %8, align 8
  %57 = getelementptr inbounds %struct.omap2_mcspi_cs, %struct.omap2_mcspi_cs* %56, i32 0, i32 3
  store i64 0, i64* %57, align 8
  %58 = load %struct.omap2_mcspi_cs*, %struct.omap2_mcspi_cs** %8, align 8
  %59 = getelementptr inbounds %struct.omap2_mcspi_cs, %struct.omap2_mcspi_cs* %58, i32 0, i32 2
  store i64 0, i64* %59, align 8
  %60 = load %struct.omap2_mcspi_cs*, %struct.omap2_mcspi_cs** %8, align 8
  %61 = getelementptr inbounds %struct.omap2_mcspi_cs, %struct.omap2_mcspi_cs* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  %62 = load %struct.omap2_mcspi_cs*, %struct.omap2_mcspi_cs** %8, align 8
  %63 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %64 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %63, i32 0, i32 4
  store %struct.omap2_mcspi_cs* %62, %struct.omap2_mcspi_cs** %64, align 8
  %65 = load %struct.omap2_mcspi_cs*, %struct.omap2_mcspi_cs** %8, align 8
  %66 = getelementptr inbounds %struct.omap2_mcspi_cs, %struct.omap2_mcspi_cs* %65, i32 0, i32 0
  %67 = load %struct.omap2_mcspi_regs*, %struct.omap2_mcspi_regs** %6, align 8
  %68 = getelementptr inbounds %struct.omap2_mcspi_regs, %struct.omap2_mcspi_regs* %67, i32 0, i32 0
  %69 = call i32 @list_add_tail(i32* %66, i32* %68)
  %70 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %71 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @gpio_is_valid(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %103

75:                                               ; preds = %35
  %76 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %77 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %80 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %79, i32 0, i32 2
  %81 = call i32 @dev_name(i32* %80)
  %82 = call i32 @gpio_request(i32 %78, i32 %81)
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %4, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %75
  %86 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %87 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %86, i32 0, i32 2
  %88 = call i32 @dev_err(i32* %87, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %89 = load i32, i32* %4, align 4
  store i32 %89, i32* %2, align 4
  br label %150

90:                                               ; preds = %75
  %91 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %92 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %95 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @SPI_CS_HIGH, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  %100 = xor i1 %99, true
  %101 = zext i1 %100 to i32
  %102 = call i32 @gpio_direction_output(i32 %93, i32 %101)
  br label %103

103:                                              ; preds = %90, %35
  br label %104

104:                                              ; preds = %103, %1
  %105 = load %struct.omap2_mcspi_dma*, %struct.omap2_mcspi_dma** %7, align 8
  %106 = getelementptr inbounds %struct.omap2_mcspi_dma, %struct.omap2_mcspi_dma* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %104
  %110 = load %struct.omap2_mcspi_dma*, %struct.omap2_mcspi_dma** %7, align 8
  %111 = getelementptr inbounds %struct.omap2_mcspi_dma, %struct.omap2_mcspi_dma* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %125, label %114

114:                                              ; preds = %109, %104
  %115 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %116 = call i32 @omap2_mcspi_request_dma(%struct.spi_device* %115)
  store i32 %116, i32* %4, align 4
  %117 = load i32, i32* %4, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %114
  %120 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %121 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %120, i32 0, i32 2
  %122 = load i32, i32* %4, align 4
  %123 = call i32 @dev_warn(i32* %121, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %122)
  br label %124

124:                                              ; preds = %119, %114
  br label %125

125:                                              ; preds = %124, %109
  %126 = load %struct.omap2_mcspi*, %struct.omap2_mcspi** %5, align 8
  %127 = getelementptr inbounds %struct.omap2_mcspi, %struct.omap2_mcspi* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @pm_runtime_get_sync(i32 %128)
  store i32 %129, i32* %4, align 4
  %130 = load i32, i32* %4, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %125
  %133 = load %struct.omap2_mcspi*, %struct.omap2_mcspi** %5, align 8
  %134 = getelementptr inbounds %struct.omap2_mcspi, %struct.omap2_mcspi* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @pm_runtime_put_noidle(i32 %135)
  %137 = load i32, i32* %4, align 4
  store i32 %137, i32* %2, align 4
  br label %150

138:                                              ; preds = %125
  %139 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %140 = call i32 @omap2_mcspi_setup_transfer(%struct.spi_device* %139, i32* null)
  store i32 %140, i32* %4, align 4
  %141 = load %struct.omap2_mcspi*, %struct.omap2_mcspi** %5, align 8
  %142 = getelementptr inbounds %struct.omap2_mcspi, %struct.omap2_mcspi* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @pm_runtime_mark_last_busy(i32 %143)
  %145 = load %struct.omap2_mcspi*, %struct.omap2_mcspi** %5, align 8
  %146 = getelementptr inbounds %struct.omap2_mcspi, %struct.omap2_mcspi* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @pm_runtime_put_autosuspend(i32 %147)
  %149 = load i32, i32* %4, align 4
  store i32 %149, i32* %2, align 4
  br label %150

150:                                              ; preds = %138, %132, %85, %32
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local %struct.omap2_mcspi* @spi_master_get_devdata(i32) #1

declare dso_local %struct.omap2_mcspi_cs* @kzalloc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_request(i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @omap2_mcspi_request_dma(%struct.spi_device*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

declare dso_local i32 @omap2_mcspi_setup_transfer(%struct.spi_device*, i32*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
