; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/atm/extr_ueagle-atm.c_uea_load_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/atm/extr_ueagle-atm.c_uea_load_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }

@EAGLE_FIRMWARE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [41 x i8] c"pre-firmware device, uploading firmware\0A\00", align 1
@ADI930_FIRMWARE = common dso_local global i8* null, align 8
@EAGLE_I_FIRMWARE = common dso_local global i8* null, align 8
@EAGLE_II_FIRMWARE = common dso_local global i8* null, align 8
@EAGLE_III_FIRMWARE = common dso_local global i8* null, align 8
@EAGLE_IV_FIRMWARE = common dso_local global i8* null, align 8
@THIS_MODULE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@uea_upload_pre_firmware = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"firmware %s is not available\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"loading firmware %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, i32)* @uea_load_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uea_load_firmware(%struct.usb_device* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** @EAGLE_FIRMWARE, align 8
  store i8* %7, i8** %6, align 8
  %8 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %9 = call i32 @uea_enters(%struct.usb_device* %8)
  %10 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %11 = call i32 (%struct.usb_device*, i8*, ...) @uea_info(%struct.usb_device* %10, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %23 [
    i32 132, label %13
    i32 131, label %15
    i32 130, label %17
    i32 129, label %19
    i32 128, label %21
  ]

13:                                               ; preds = %2
  %14 = load i8*, i8** @ADI930_FIRMWARE, align 8
  store i8* %14, i8** %6, align 8
  br label %23

15:                                               ; preds = %2
  %16 = load i8*, i8** @EAGLE_I_FIRMWARE, align 8
  store i8* %16, i8** %6, align 8
  br label %23

17:                                               ; preds = %2
  %18 = load i8*, i8** @EAGLE_II_FIRMWARE, align 8
  store i8* %18, i8** %6, align 8
  br label %23

19:                                               ; preds = %2
  %20 = load i8*, i8** @EAGLE_III_FIRMWARE, align 8
  store i8* %20, i8** %6, align 8
  br label %23

21:                                               ; preds = %2
  %22 = load i8*, i8** @EAGLE_IV_FIRMWARE, align 8
  store i8* %22, i8** %6, align 8
  br label %23

23:                                               ; preds = %2, %21, %19, %17, %15, %13
  %24 = load i32, i32* @THIS_MODULE, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %27 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %26, i32 0, i32 0
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %30 = load i32, i32* @uea_upload_pre_firmware, align 4
  %31 = call i32 @request_firmware_nowait(i32 %24, i32 1, i8* %25, i32* %27, i32 %28, %struct.usb_device* %29, i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %23
  %35 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @uea_err(%struct.usb_device* %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  br label %42

38:                                               ; preds = %23
  %39 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 (%struct.usb_device*, i8*, ...) @uea_info(%struct.usb_device* %39, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %40)
  br label %42

42:                                               ; preds = %38, %34
  %43 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %44 = call i32 @uea_leaves(%struct.usb_device* %43)
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @uea_enters(%struct.usb_device*) #1

declare dso_local i32 @uea_info(%struct.usb_device*, i8*, ...) #1

declare dso_local i32 @request_firmware_nowait(i32, i32, i8*, i32*, i32, %struct.usb_device*, i32) #1

declare dso_local i32 @uea_err(%struct.usb_device*, i8*, i8*) #1

declare dso_local i32 @uea_leaves(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
