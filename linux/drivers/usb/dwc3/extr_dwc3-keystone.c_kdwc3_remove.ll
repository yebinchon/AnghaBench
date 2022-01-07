; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-keystone.c_kdwc3_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-keystone.c_kdwc3_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.dwc3_keystone = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"ti,am654-dwc3\00", align 1
@kdwc3_remove_core = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @kdwc3_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kdwc3_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.dwc3_keystone*, align 8
  %4 = alloca %struct.device_node*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.dwc3_keystone* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.dwc3_keystone* %6, %struct.dwc3_keystone** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.device_node*, %struct.device_node** %9, align 8
  store %struct.device_node* %10, %struct.device_node** %4, align 8
  %11 = load %struct.device_node*, %struct.device_node** %4, align 8
  %12 = call i32 @of_device_is_compatible(%struct.device_node* %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load %struct.dwc3_keystone*, %struct.dwc3_keystone** %3, align 8
  %16 = call i32 @kdwc3_disable_irqs(%struct.dwc3_keystone* %15)
  br label %17

17:                                               ; preds = %14, %1
  %18 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = load i32, i32* @kdwc3_remove_core, align 4
  %21 = call i32 @device_for_each_child(%struct.TYPE_2__* %19, i32* null, i32 %20)
  %22 = load %struct.dwc3_keystone*, %struct.dwc3_keystone** %3, align 8
  %23 = getelementptr inbounds %struct.dwc3_keystone, %struct.dwc3_keystone* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @pm_runtime_put_sync(i32 %24)
  %26 = load %struct.dwc3_keystone*, %struct.dwc3_keystone** %3, align 8
  %27 = getelementptr inbounds %struct.dwc3_keystone, %struct.dwc3_keystone* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @pm_runtime_disable(i32 %28)
  %30 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %31 = call i32 @platform_set_drvdata(%struct.platform_device* %30, i32* null)
  ret i32 0
}

declare dso_local %struct.dwc3_keystone* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i32 @kdwc3_disable_irqs(%struct.dwc3_keystone*) #1

declare dso_local i32 @device_for_each_child(%struct.TYPE_2__*, i32*, i32) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

declare dso_local i32 @pm_runtime_disable(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
