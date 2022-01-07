; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mxs.c_mxs_spi_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mxs.c_mxs_spi_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.spi_master = type { i32 }
%struct.mxs_spi = type { %struct.mxs_ssp }
%struct.mxs_ssp = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mxs_spi_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_spi_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.spi_master*, align 8
  %4 = alloca %struct.mxs_spi*, align 8
  %5 = alloca %struct.mxs_ssp*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.spi_master* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.spi_master* %7, %struct.spi_master** %3, align 8
  %8 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %9 = call %struct.mxs_spi* @spi_master_get_devdata(%struct.spi_master* %8)
  store %struct.mxs_spi* %9, %struct.mxs_spi** %4, align 8
  %10 = load %struct.mxs_spi*, %struct.mxs_spi** %4, align 8
  %11 = getelementptr inbounds %struct.mxs_spi, %struct.mxs_spi* %10, i32 0, i32 0
  store %struct.mxs_ssp* %11, %struct.mxs_ssp** %5, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = call i32 @pm_runtime_disable(i32* %13)
  %15 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call i32 @pm_runtime_status_suspended(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = call i32 @mxs_spi_runtime_suspend(i32* %21)
  br label %23

23:                                               ; preds = %19, %1
  %24 = load %struct.mxs_ssp*, %struct.mxs_ssp** %5, align 8
  %25 = getelementptr inbounds %struct.mxs_ssp, %struct.mxs_ssp* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dma_release_channel(i32 %26)
  ret i32 0
}

declare dso_local %struct.spi_master* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.mxs_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @pm_runtime_status_suspended(i32*) #1

declare dso_local i32 @mxs_spi_runtime_suspend(i32*) #1

declare dso_local i32 @dma_release_channel(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
