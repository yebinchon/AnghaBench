; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_usbtest.c_is_good_ext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_usbtest.c_is_good_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbtest_dev = type { i32 }
%struct.usb_ext_cap_descriptor = type { i64, i32 }

@USB_DT_USB_EXT_CAP_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"bogus usb 2.0 extension descriptor length\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"reserved bits set\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbtest_dev*, i32*)* @is_good_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_good_ext(%struct.usbtest_dev* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbtest_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.usb_ext_cap_descriptor*, align 8
  %7 = alloca i32, align 4
  store %struct.usbtest_dev* %0, %struct.usbtest_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = bitcast i32* %8 to %struct.usb_ext_cap_descriptor*
  store %struct.usb_ext_cap_descriptor* %9, %struct.usb_ext_cap_descriptor** %6, align 8
  %10 = load %struct.usb_ext_cap_descriptor*, %struct.usb_ext_cap_descriptor** %6, align 8
  %11 = getelementptr inbounds %struct.usb_ext_cap_descriptor, %struct.usb_ext_cap_descriptor* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @USB_DT_USB_EXT_CAP_SIZE, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.usbtest_dev*, %struct.usbtest_dev** %4, align 8
  %17 = call i32 @ERROR(%struct.usbtest_dev* %16, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %30

18:                                               ; preds = %2
  %19 = load %struct.usb_ext_cap_descriptor*, %struct.usb_ext_cap_descriptor** %6, align 8
  %20 = getelementptr inbounds %struct.usb_ext_cap_descriptor, %struct.usb_ext_cap_descriptor* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @le32_to_cpu(i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = and i32 %23, -65535
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load %struct.usbtest_dev*, %struct.usbtest_dev** %4, align 8
  %28 = call i32 @ERROR(%struct.usbtest_dev* %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %30

29:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %26, %15
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @ERROR(%struct.usbtest_dev*, i8*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
