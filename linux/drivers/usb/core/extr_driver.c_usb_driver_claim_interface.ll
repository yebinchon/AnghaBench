; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_driver.c_usb_driver_claim_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_driver.c_usb_driver_claim_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_driver = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.usb_interface = type { i32, i64, i64, i32, %struct.device }
%struct.device = type { i32* }

@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@USB_INTERFACE_BOUND = common dso_local global i32 0, align 4
@USB_INTERFACE_UNBOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_driver_claim_interface(%struct.usb_driver* %0, %struct.usb_interface* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_driver*, align 8
  %6 = alloca %struct.usb_interface*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  store %struct.usb_driver* %0, %struct.usb_driver** %5, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %11 = icmp ne %struct.usb_interface* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %91

15:                                               ; preds = %3
  %16 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %17 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %16, i32 0, i32 4
  store %struct.device* %17, %struct.device** %8, align 8
  %18 = load %struct.device*, %struct.device** %8, align 8
  %19 = getelementptr inbounds %struct.device, %struct.device* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %91

25:                                               ; preds = %15
  %26 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %27 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %91

33:                                               ; preds = %25
  %34 = load %struct.usb_driver*, %struct.usb_driver** %5, align 8
  %35 = getelementptr inbounds %struct.usb_driver, %struct.usb_driver* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load %struct.device*, %struct.device** %8, align 8
  %38 = getelementptr inbounds %struct.device, %struct.device* %37, i32 0, i32 0
  store i32* %36, i32** %38, align 8
  %39 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @usb_set_intfdata(%struct.usb_interface* %39, i8* %40)
  %42 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %43 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %42, i32 0, i32 2
  store i64 0, i64* %43, align 8
  %44 = load i32, i32* @USB_INTERFACE_BOUND, align 4
  %45 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %46 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.device*, %struct.device** %8, align 8
  %48 = call i32 @pm_suspend_ignore_children(%struct.device* %47, i32 0)
  %49 = load %struct.usb_driver*, %struct.usb_driver** %5, align 8
  %50 = getelementptr inbounds %struct.usb_driver, %struct.usb_driver* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %33
  %54 = load %struct.device*, %struct.device** %8, align 8
  %55 = call i32 @pm_runtime_enable(%struct.device* %54)
  br label %59

56:                                               ; preds = %33
  %57 = load %struct.device*, %struct.device** %8, align 8
  %58 = call i32 @pm_runtime_set_active(%struct.device* %57)
  br label %59

59:                                               ; preds = %56, %53
  %60 = load %struct.device*, %struct.device** %8, align 8
  %61 = call i64 @device_is_registered(%struct.device* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load %struct.device*, %struct.device** %8, align 8
  %65 = call i32 @device_bind_driver(%struct.device* %64)
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %63, %59
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %89

69:                                               ; preds = %66
  %70 = load %struct.device*, %struct.device** %8, align 8
  %71 = getelementptr inbounds %struct.device, %struct.device* %70, i32 0, i32 0
  store i32* null, i32** %71, align 8
  %72 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %73 = call i32 @usb_set_intfdata(%struct.usb_interface* %72, i8* null)
  %74 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %75 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %74, i32 0, i32 1
  store i64 0, i64* %75, align 8
  %76 = load i32, i32* @USB_INTERFACE_UNBOUND, align 4
  %77 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %78 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.usb_driver*, %struct.usb_driver** %5, align 8
  %80 = getelementptr inbounds %struct.usb_driver, %struct.usb_driver* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %69
  %84 = load %struct.device*, %struct.device** %8, align 8
  %85 = call i32 @pm_runtime_disable(%struct.device* %84)
  br label %86

86:                                               ; preds = %83, %69
  %87 = load %struct.device*, %struct.device** %8, align 8
  %88 = call i32 @pm_runtime_set_suspended(%struct.device* %87)
  br label %89

89:                                               ; preds = %86, %66
  %90 = load i32, i32* %9, align 4
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %89, %30, %22, %12
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i8*) #1

declare dso_local i32 @pm_suspend_ignore_children(%struct.device*, i32) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.device*) #1

declare dso_local i64 @device_is_registered(%struct.device*) #1

declare dso_local i32 @device_bind_driver(%struct.device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_suspended(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
