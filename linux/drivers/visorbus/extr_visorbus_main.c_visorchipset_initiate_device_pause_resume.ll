; ModuleID = '/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorbus_main.c_visorchipset_initiate_device_pause_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorbus_main.c_visorchipset_initiate_device_pause_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.visor_device = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.visor_driver = type { i32 (%struct.visor_device.0*, i32)*, i32 (%struct.visor_device.1*, i32)* }
%struct.visor_device.0 = type opaque
%struct.visor_device.1 = type opaque

@EBUSY = common dso_local global i32 0, align 4
@pause_state_change_complete = common dso_local global i32 0, align 4
@resume_state_change_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.visor_device*, i32)* @visorchipset_initiate_device_pause_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @visorchipset_initiate_device_pause_resume(%struct.visor_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.visor_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.visor_driver*, align 8
  store %struct.visor_device* %0, %struct.visor_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.visor_device*, %struct.visor_device** %4, align 8
  %9 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %59

14:                                               ; preds = %2
  %15 = load %struct.visor_device*, %struct.visor_device** %4, align 8
  %16 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load %struct.visor_device*, %struct.visor_device** %4, align 8
  %21 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19, %14
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %59

27:                                               ; preds = %19
  %28 = load %struct.visor_device*, %struct.visor_device** %4, align 8
  %29 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.visor_driver* @to_visor_driver(i32 %31)
  store %struct.visor_driver* %32, %struct.visor_driver** %7, align 8
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %27
  %36 = load %struct.visor_device*, %struct.visor_device** %4, align 8
  %37 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  %38 = load %struct.visor_driver*, %struct.visor_driver** %7, align 8
  %39 = getelementptr inbounds %struct.visor_driver, %struct.visor_driver* %38, i32 0, i32 0
  %40 = load i32 (%struct.visor_device.0*, i32)*, i32 (%struct.visor_device.0*, i32)** %39, align 8
  %41 = load %struct.visor_device*, %struct.visor_device** %4, align 8
  %42 = bitcast %struct.visor_device* %41 to %struct.visor_device.0*
  %43 = load i32, i32* @pause_state_change_complete, align 4
  %44 = call i32 %40(%struct.visor_device.0* %42, i32 %43)
  store i32 %44, i32* %6, align 4
  br label %57

45:                                               ; preds = %27
  %46 = load %struct.visor_device*, %struct.visor_device** %4, align 8
  %47 = call i32 @publish_vbus_dev_info(%struct.visor_device* %46)
  %48 = load %struct.visor_device*, %struct.visor_device** %4, align 8
  %49 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %48, i32 0, i32 1
  store i32 1, i32* %49, align 4
  %50 = load %struct.visor_driver*, %struct.visor_driver** %7, align 8
  %51 = getelementptr inbounds %struct.visor_driver, %struct.visor_driver* %50, i32 0, i32 1
  %52 = load i32 (%struct.visor_device.1*, i32)*, i32 (%struct.visor_device.1*, i32)** %51, align 8
  %53 = load %struct.visor_device*, %struct.visor_device** %4, align 8
  %54 = bitcast %struct.visor_device* %53 to %struct.visor_device.1*
  %55 = load i32, i32* @resume_state_change_complete, align 4
  %56 = call i32 %52(%struct.visor_device.1* %54, i32 %55)
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %45, %35
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %57, %24, %13
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.visor_driver* @to_visor_driver(i32) #1

declare dso_local i32 @publish_vbus_dev_info(%struct.visor_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
