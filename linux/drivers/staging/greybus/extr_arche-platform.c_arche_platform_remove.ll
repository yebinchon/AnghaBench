; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_arche-platform.c_arche_platform_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_arche-platform.c_arche_platform_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.arche_platform_drvdata = type { i32, i32 }

@dev_attr_state = common dso_local global i32 0, align 4
@arche_remove_child = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to control hub device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @arche_platform_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arche_platform_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.arche_platform_drvdata*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.arche_platform_drvdata* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.arche_platform_drvdata* %5, %struct.arche_platform_drvdata** %3, align 8
  %6 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %3, align 8
  %7 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %6, i32 0, i32 1
  %8 = call i32 @unregister_pm_notifier(i32* %7)
  %9 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call i32 @device_remove_file(i32* %10, i32* @dev_attr_state)
  %12 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* @arche_remove_child, align 4
  %15 = call i32 @device_for_each_child(i32* %13, i32* null, i32 %14)
  %16 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %3, align 8
  %17 = call i32 @arche_platform_poweroff_seq(%struct.arche_platform_drvdata* %16)
  %18 = call i64 @usb3613_hub_mode_ctrl(i32 0)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.arche_platform_drvdata*, %struct.arche_platform_drvdata** %3, align 8
  %22 = getelementptr inbounds %struct.arche_platform_drvdata, %struct.arche_platform_drvdata* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dev_warn(i32 %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %20, %1
  ret i32 0
}

declare dso_local %struct.arche_platform_drvdata* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @unregister_pm_notifier(i32*) #1

declare dso_local i32 @device_remove_file(i32*, i32*) #1

declare dso_local i32 @device_for_each_child(i32*, i32*, i32) #1

declare dso_local i32 @arche_platform_poweroff_seq(%struct.arche_platform_drvdata*) #1

declare dso_local i64 @usb3613_hub_mode_ctrl(i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
