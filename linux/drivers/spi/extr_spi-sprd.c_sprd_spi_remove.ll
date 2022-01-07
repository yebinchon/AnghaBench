; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sprd.c_sprd_spi_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sprd.c_sprd_spi_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.spi_controller = type { i32 }
%struct.sprd_spi = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [33 x i8] c"failed to resume SPI controller\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sprd_spi_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_spi_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.spi_controller*, align 8
  %5 = alloca %struct.sprd_spi*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = call %struct.spi_controller* @platform_get_drvdata(%struct.platform_device* %7)
  store %struct.spi_controller* %8, %struct.spi_controller** %4, align 8
  %9 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %10 = call %struct.sprd_spi* @spi_controller_get_devdata(%struct.spi_controller* %9)
  store %struct.sprd_spi* %10, %struct.sprd_spi** %5, align 8
  %11 = load %struct.sprd_spi*, %struct.sprd_spi** %5, align 8
  %12 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @pm_runtime_get_sync(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.sprd_spi*, %struct.sprd_spi** %5, align 8
  %19 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %2, align 4
  br label %45

23:                                               ; preds = %1
  %24 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %25 = call i32 @spi_controller_suspend(%struct.spi_controller* %24)
  %26 = load %struct.sprd_spi*, %struct.sprd_spi** %5, align 8
  %27 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load %struct.sprd_spi*, %struct.sprd_spi** %5, align 8
  %33 = call i32 @sprd_spi_dma_release(%struct.sprd_spi* %32)
  br label %34

34:                                               ; preds = %31, %23
  %35 = load %struct.sprd_spi*, %struct.sprd_spi** %5, align 8
  %36 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @clk_disable_unprepare(i32 %37)
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = call i32 @pm_runtime_put_noidle(i32* %40)
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = call i32 @pm_runtime_disable(i32* %43)
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %34, %17
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.spi_controller* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.sprd_spi* @spi_controller_get_devdata(%struct.spi_controller*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @spi_controller_suspend(%struct.spi_controller*) #1

declare dso_local i32 @sprd_spi_dma_release(%struct.sprd_spi*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
