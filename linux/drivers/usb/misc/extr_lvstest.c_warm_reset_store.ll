; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_lvstest.c_warm_reset_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_lvstest.c_warm_reset_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.usb_interface = type { i32 }
%struct.usb_device = type { i32 }
%struct.lvs_rh = type { i32 }

@USB_PORT_FEAT_BH_PORT_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"can't issue warm reset %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @warm_reset_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @warm_reset_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.usb_interface*, align 8
  %11 = alloca %struct.usb_device*, align 8
  %12 = alloca %struct.lvs_rh*, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.usb_interface* @to_usb_interface(%struct.device* %14)
  store %struct.usb_interface* %15, %struct.usb_interface** %10, align 8
  %16 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %17 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %16)
  store %struct.usb_device* %17, %struct.usb_device** %11, align 8
  %18 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  %19 = call %struct.lvs_rh* @usb_get_intfdata(%struct.usb_interface* %18)
  store %struct.lvs_rh* %19, %struct.lvs_rh** %12, align 8
  %20 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %21 = load %struct.lvs_rh*, %struct.lvs_rh** %12, align 8
  %22 = getelementptr inbounds %struct.lvs_rh, %struct.lvs_rh* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @USB_PORT_FEAT_BH_PORT_RESET, align 4
  %25 = call i32 @lvs_rh_set_port_feature(%struct.usb_device* %20, i32 %23, i32 %24)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %4
  %29 = load %struct.device*, %struct.device** %6, align 8
  %30 = load i32, i32* %13, align 4
  %31 = call i32 @dev_err(%struct.device* %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %13, align 4
  store i32 %32, i32* %5, align 4
  br label %36

33:                                               ; preds = %4
  %34 = load i64, i64* %9, align 8
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %33, %28
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local %struct.usb_interface* @to_usb_interface(%struct.device*) #1

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.lvs_rh* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @lvs_rh_set_port_feature(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
