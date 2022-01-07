; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rockchip.c_rockchip_spi_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rockchip.c_rockchip_spi_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.spi_master = type { i64, i64 }
%struct.rockchip_spi = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rockchip_spi_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_spi_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.spi_master*, align 8
  %4 = alloca %struct.rockchip_spi*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call i32 @platform_get_drvdata(%struct.platform_device* %5)
  %7 = call %struct.spi_master* @spi_master_get(i32 %6)
  store %struct.spi_master* %7, %struct.spi_master** %3, align 8
  %8 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %9 = call %struct.rockchip_spi* @spi_master_get_devdata(%struct.spi_master* %8)
  store %struct.rockchip_spi* %9, %struct.rockchip_spi** %4, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = call i32 @pm_runtime_get_sync(i32* %11)
  %13 = load %struct.rockchip_spi*, %struct.rockchip_spi** %4, align 8
  %14 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @clk_disable_unprepare(i32 %15)
  %17 = load %struct.rockchip_spi*, %struct.rockchip_spi** %4, align 8
  %18 = getelementptr inbounds %struct.rockchip_spi, %struct.rockchip_spi* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @clk_disable_unprepare(i32 %19)
  %21 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = call i32 @pm_runtime_put_noidle(i32* %22)
  %24 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = call i32 @pm_runtime_disable(i32* %25)
  %27 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = call i32 @pm_runtime_set_suspended(i32* %28)
  %30 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %31 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %1
  %35 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %36 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @dma_release_channel(i64 %37)
  br label %39

39:                                               ; preds = %34, %1
  %40 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %41 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %46 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @dma_release_channel(i64 %47)
  br label %49

49:                                               ; preds = %44, %39
  %50 = load %struct.spi_master*, %struct.spi_master** %3, align 8
  %51 = call i32 @spi_master_put(%struct.spi_master* %50)
  ret i32 0
}

declare dso_local %struct.spi_master* @spi_master_get(i32) #1

declare dso_local i32 @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.rockchip_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @pm_runtime_set_suspended(i32*) #1

declare dso_local i32 @dma_release_channel(i64) #1

declare dso_local i32 @spi_master_put(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
