; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_driver.c_usb_uevent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_driver.c_usb_uevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.kobj_uevent_env = type { i32 }
%struct.usb_device = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }
%struct.usb_interface = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"usb %s: already deleted?\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"usb %s: bus removed?\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"PRODUCT=%x/%x/%x\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"TYPE=%d/%d/%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.kobj_uevent_env*)* @usb_uevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_uevent(%struct.device* %0, %struct.kobj_uevent_env* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.kobj_uevent_env*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.usb_interface*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.kobj_uevent_env* %1, %struct.kobj_uevent_env** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call i64 @is_usb_device(%struct.device* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.usb_device* @to_usb_device(%struct.device* %12)
  store %struct.usb_device* %13, %struct.usb_device** %6, align 8
  br label %25

14:                                               ; preds = %2
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call i64 @is_usb_interface(%struct.device* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = call %struct.usb_interface* @to_usb_interface(%struct.device* %19)
  store %struct.usb_interface* %20, %struct.usb_interface** %7, align 8
  %21 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %22 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %21)
  store %struct.usb_device* %22, %struct.usb_device** %6, align 8
  br label %24

23:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %89

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %24, %11
  %26 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %27 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = call i32 @dev_name(%struct.device* %31)
  %33 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %89

36:                                               ; preds = %25
  %37 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %38 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %36
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = call i32 @dev_name(%struct.device* %42)
  %44 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %89

47:                                               ; preds = %36
  %48 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %49 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %50 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @le16_to_cpu(i32 %52)
  %54 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %55 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @le16_to_cpu(i32 %57)
  %59 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %60 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @le16_to_cpu(i32 %62)
  %64 = call i64 @add_uevent_var(%struct.kobj_uevent_env* %48, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %53, i32 %58, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %47
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %89

69:                                               ; preds = %47
  %70 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %71 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %72 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %76 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %80 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i64 @add_uevent_var(%struct.kobj_uevent_env* %70, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %74, i32 %78, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %69
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %89

88:                                               ; preds = %69
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %88, %85, %66, %41, %30, %23
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i64 @is_usb_device(%struct.device*) #1

declare dso_local %struct.usb_device* @to_usb_device(%struct.device*) #1

declare dso_local i64 @is_usb_interface(%struct.device*) #1

declare dso_local %struct.usb_interface* @to_usb_interface(%struct.device*) #1

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i64 @add_uevent_var(%struct.kobj_uevent_env*, i8*, i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
