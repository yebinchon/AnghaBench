; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_gbphy.c_gbphy_dev_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_gbphy.c_gbphy_dev_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.gbphy_driver = type { i32 (%struct.gbphy_device*, %struct.gbphy_device_id*)* }
%struct.gbphy_device = type opaque
%struct.gbphy_device_id = type opaque
%struct.gbphy_device.0 = type { i32 }
%struct.gbphy_device_id.1 = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@GB_GBPHY_AUTOSUSPEND_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @gbphy_dev_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gbphy_dev_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.gbphy_driver*, align 8
  %5 = alloca %struct.gbphy_device.0*, align 8
  %6 = alloca %struct.gbphy_device_id.1*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.gbphy_driver* @to_gbphy_driver(i32 %10)
  store %struct.gbphy_driver* %11, %struct.gbphy_driver** %4, align 8
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = call %struct.gbphy_device.0* @to_gbphy_dev(%struct.device* %12)
  store %struct.gbphy_device.0* %13, %struct.gbphy_device.0** %5, align 8
  %14 = load %struct.gbphy_device.0*, %struct.gbphy_device.0** %5, align 8
  %15 = load %struct.gbphy_driver*, %struct.gbphy_driver** %4, align 8
  %16 = call %struct.gbphy_device_id.1* @gbphy_dev_match_id(%struct.gbphy_device.0* %14, %struct.gbphy_driver* %15)
  store %struct.gbphy_device_id.1* %16, %struct.gbphy_device_id.1** %6, align 8
  %17 = load %struct.gbphy_device_id.1*, %struct.gbphy_device_id.1** %6, align 8
  %18 = icmp ne %struct.gbphy_device_id.1* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %68

22:                                               ; preds = %1
  %23 = load %struct.gbphy_device.0*, %struct.gbphy_device.0** %5, align 8
  %24 = getelementptr inbounds %struct.gbphy_device.0, %struct.gbphy_device.0* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @gb_pm_runtime_get_sync(i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %2, align 4
  br label %68

31:                                               ; preds = %22
  %32 = load %struct.device*, %struct.device** %3, align 8
  %33 = load i32, i32* @GB_GBPHY_AUTOSUSPEND_MS, align 4
  %34 = call i32 @pm_runtime_set_autosuspend_delay(%struct.device* %32, i32 %33)
  %35 = load %struct.device*, %struct.device** %3, align 8
  %36 = call i32 @pm_runtime_use_autosuspend(%struct.device* %35)
  %37 = load %struct.device*, %struct.device** %3, align 8
  %38 = call i32 @pm_runtime_get_noresume(%struct.device* %37)
  %39 = load %struct.device*, %struct.device** %3, align 8
  %40 = call i32 @pm_runtime_set_active(%struct.device* %39)
  %41 = load %struct.device*, %struct.device** %3, align 8
  %42 = call i32 @pm_runtime_enable(%struct.device* %41)
  %43 = load %struct.gbphy_driver*, %struct.gbphy_driver** %4, align 8
  %44 = getelementptr inbounds %struct.gbphy_driver, %struct.gbphy_driver* %43, i32 0, i32 0
  %45 = load i32 (%struct.gbphy_device*, %struct.gbphy_device_id*)*, i32 (%struct.gbphy_device*, %struct.gbphy_device_id*)** %44, align 8
  %46 = load %struct.gbphy_device.0*, %struct.gbphy_device.0** %5, align 8
  %47 = bitcast %struct.gbphy_device.0* %46 to %struct.gbphy_device*
  %48 = load %struct.gbphy_device_id.1*, %struct.gbphy_device_id.1** %6, align 8
  %49 = bitcast %struct.gbphy_device_id.1* %48 to %struct.gbphy_device_id*
  %50 = call i32 %45(%struct.gbphy_device* %47, %struct.gbphy_device_id* %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %31
  %54 = load %struct.device*, %struct.device** %3, align 8
  %55 = call i32 @pm_runtime_disable(%struct.device* %54)
  %56 = load %struct.device*, %struct.device** %3, align 8
  %57 = call i32 @pm_runtime_set_suspended(%struct.device* %56)
  %58 = load %struct.device*, %struct.device** %3, align 8
  %59 = call i32 @pm_runtime_put_noidle(%struct.device* %58)
  %60 = load %struct.device*, %struct.device** %3, align 8
  %61 = call i32 @pm_runtime_dont_use_autosuspend(%struct.device* %60)
  br label %62

62:                                               ; preds = %53, %31
  %63 = load %struct.gbphy_device.0*, %struct.gbphy_device.0** %5, align 8
  %64 = getelementptr inbounds %struct.gbphy_device.0, %struct.gbphy_device.0* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @gb_pm_runtime_put_autosuspend(i32 %65)
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %62, %29, %19
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local %struct.gbphy_driver* @to_gbphy_driver(i32) #1

declare dso_local %struct.gbphy_device.0* @to_gbphy_dev(%struct.device*) #1

declare dso_local %struct.gbphy_device_id.1* @gbphy_dev_match_id(%struct.gbphy_device.0*, %struct.gbphy_driver*) #1

declare dso_local i32 @gb_pm_runtime_get_sync(i32) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.device*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.device*) #1

declare dso_local i32 @pm_runtime_get_noresume(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.device*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_suspended(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_noidle(%struct.device*) #1

declare dso_local i32 @pm_runtime_dont_use_autosuspend(%struct.device*) #1

declare dso_local i32 @gb_pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
