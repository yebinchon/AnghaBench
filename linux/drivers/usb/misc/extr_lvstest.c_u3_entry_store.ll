; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_lvstest.c_u3_entry_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_lvstest.c_u3_entry_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.usb_interface = type { i32 }
%struct.usb_device = type { i32 }
%struct.lvs_rh = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"failed to create lvs device\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@USB_PORT_FEAT_SUSPEND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"can't issue U3 entry %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @u3_entry_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @u3_entry_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.usb_interface*, align 8
  %11 = alloca %struct.usb_device*, align 8
  %12 = alloca %struct.lvs_rh*, align 8
  %13 = alloca %struct.usb_device*, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.usb_interface* @to_usb_interface(%struct.device* %15)
  store %struct.usb_interface* %16, %struct.usb_interface** %10, align 8
  %17 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %18 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %17)
  store %struct.usb_device* %18, %struct.usb_device** %11, align 8
  %19 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %20 = call %struct.lvs_rh* @usb_get_intfdata(%struct.usb_interface* %19)
  store %struct.lvs_rh* %20, %struct.lvs_rh** %12, align 8
  %21 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %22 = call %struct.usb_device* @create_lvs_device(%struct.usb_interface* %21)
  store %struct.usb_device* %22, %struct.usb_device** %13, align 8
  %23 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %24 = icmp ne %struct.usb_device* %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %4
  %26 = load %struct.device*, %struct.device** %6, align 8
  %27 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %53

30:                                               ; preds = %4
  %31 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %32 = load %struct.lvs_rh*, %struct.lvs_rh** %12, align 8
  %33 = getelementptr inbounds %struct.lvs_rh, %struct.lvs_rh* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @USB_PORT_FEAT_SUSPEND, align 4
  %36 = call i32 @lvs_rh_set_port_feature(%struct.usb_device* %31, i32 %34, i32 %35)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = load %struct.device*, %struct.device** %6, align 8
  %41 = load i32, i32* %14, align 4
  %42 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %39, %30
  %44 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  %45 = call i32 @destroy_lvs_device(%struct.usb_device* %44)
  %46 = load i32, i32* %14, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* %14, align 4
  store i32 %49, i32* %5, align 4
  br label %53

50:                                               ; preds = %43
  %51 = load i64, i64* %9, align 8
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %50, %48, %25
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local %struct.usb_interface* @to_usb_interface(%struct.device*) #1

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.lvs_rh* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local %struct.usb_device* @create_lvs_device(%struct.usb_interface*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @lvs_rh_set_port_feature(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @destroy_lvs_device(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
