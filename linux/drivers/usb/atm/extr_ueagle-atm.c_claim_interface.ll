; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/atm/extr_ueagle-atm.c_claim_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/atm/extr_ueagle-atm.c_claim_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.usbatm_data = type { i32 }
%struct.usb_interface = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"interface %d not found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@uea_driver = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"can't claim interface %d, error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, %struct.usbatm_data*, i32)* @claim_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @claim_interface(%struct.usb_device* %0, %struct.usbatm_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca %struct.usbatm_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_interface*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %5, align 8
  store %struct.usbatm_data* %1, %struct.usbatm_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call %struct.usb_interface* @usb_ifnum_to_if(%struct.usb_device* %10, i32 %11)
  store %struct.usb_interface* %12, %struct.usb_interface** %9, align 8
  %13 = load %struct.usb_interface*, %struct.usb_interface** %9, align 8
  %14 = icmp ne %struct.usb_interface* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 (%struct.usb_device*, i8*, i32, ...) @uea_err(%struct.usb_device* %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %34

21:                                               ; preds = %3
  %22 = load %struct.usb_interface*, %struct.usb_interface** %9, align 8
  %23 = load %struct.usbatm_data*, %struct.usbatm_data** %6, align 8
  %24 = call i32 @usb_driver_claim_interface(i32* @uea_driver, %struct.usb_interface* %22, %struct.usbatm_data* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 (%struct.usb_device*, i8*, i32, ...) @uea_err(%struct.usb_device* %28, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %27, %21
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %32, %15
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local %struct.usb_interface* @usb_ifnum_to_if(%struct.usb_device*, i32) #1

declare dso_local i32 @uea_err(%struct.usb_device*, i8*, i32, ...) #1

declare dso_local i32 @usb_driver_claim_interface(i32*, %struct.usb_interface*, %struct.usbatm_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
