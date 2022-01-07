; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1343.c_ds1343_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1343.c_ds1343_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i64 }
%struct.ds1343_priv = type { i32, i32 }

@RTC_AF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ds1343_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1343_remove(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca %struct.ds1343_priv*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %4 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %5 = call %struct.ds1343_priv* @spi_get_drvdata(%struct.spi_device* %4)
  store %struct.ds1343_priv* %5, %struct.ds1343_priv** %3, align 8
  %6 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %7 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %36

10:                                               ; preds = %1
  %11 = load %struct.ds1343_priv*, %struct.ds1343_priv** %3, align 8
  %12 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load i32, i32* @RTC_AF, align 4
  %15 = xor i32 %14, -1
  %16 = load %struct.ds1343_priv*, %struct.ds1343_priv** %3, align 8
  %17 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load %struct.ds1343_priv*, %struct.ds1343_priv** %3, align 8
  %21 = getelementptr inbounds %struct.ds1343_priv, %struct.ds1343_priv* %20, i32 0, i32 0
  %22 = call i32 @mutex_unlock(i32* %21)
  %23 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %24 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %23, i32 0, i32 0
  %25 = call i32 @dev_pm_clear_wake_irq(i32* %24)
  %26 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %27 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %26, i32 0, i32 0
  %28 = call i32 @device_init_wakeup(i32* %27, i32 0)
  %29 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %30 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %29, i32 0, i32 0
  %31 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %32 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.ds1343_priv*, %struct.ds1343_priv** %3, align 8
  %35 = call i32 @devm_free_irq(i32* %30, i64 %33, %struct.ds1343_priv* %34)
  br label %36

36:                                               ; preds = %10, %1
  %37 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %38 = call i32 @spi_set_drvdata(%struct.spi_device* %37, i32* null)
  %39 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %40 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %39, i32 0, i32 0
  %41 = call i32 @ds1343_sysfs_unregister(i32* %40)
  ret i32 0
}

declare dso_local %struct.ds1343_priv* @spi_get_drvdata(%struct.spi_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_pm_clear_wake_irq(i32*) #1

declare dso_local i32 @device_init_wakeup(i32*, i32) #1

declare dso_local i32 @devm_free_irq(i32*, i64, %struct.ds1343_priv*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, i32*) #1

declare dso_local i32 @ds1343_sysfs_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
