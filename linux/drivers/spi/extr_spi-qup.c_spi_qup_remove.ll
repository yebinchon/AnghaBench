; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-qup.c_spi_qup_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-qup.c_spi_qup_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.spi_master = type { i32 }
%struct.spi_qup = type { i32, i32 }

@QUP_STATE_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @spi_qup_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_qup_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.spi_master*, align 8
  %5 = alloca %struct.spi_qup*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call %struct.spi_master* @dev_get_drvdata(i32* %8)
  store %struct.spi_master* %9, %struct.spi_master** %4, align 8
  %10 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %11 = call %struct.spi_qup* @spi_master_get_devdata(%struct.spi_master* %10)
  store %struct.spi_qup* %11, %struct.spi_qup** %5, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = call i32 @pm_runtime_get_sync(i32* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %2, align 4
  br label %44

19:                                               ; preds = %1
  %20 = load %struct.spi_qup*, %struct.spi_qup** %5, align 8
  %21 = load i32, i32* @QUP_STATE_RESET, align 4
  %22 = call i32 @spi_qup_set_state(%struct.spi_qup* %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %2, align 4
  br label %44

27:                                               ; preds = %19
  %28 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %29 = call i32 @spi_qup_release_dma(%struct.spi_master* %28)
  %30 = load %struct.spi_qup*, %struct.spi_qup** %5, align 8
  %31 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @clk_disable_unprepare(i32 %32)
  %34 = load %struct.spi_qup*, %struct.spi_qup** %5, align 8
  %35 = getelementptr inbounds %struct.spi_qup, %struct.spi_qup* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @clk_disable_unprepare(i32 %36)
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = call i32 @pm_runtime_put_noidle(i32* %39)
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = call i32 @pm_runtime_disable(i32* %42)
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %27, %25, %17
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.spi_master* @dev_get_drvdata(i32*) #1

declare dso_local %struct.spi_qup* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @spi_qup_set_state(%struct.spi_qup*, i32) #1

declare dso_local i32 @spi_qup_release_dma(%struct.spi_master*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
