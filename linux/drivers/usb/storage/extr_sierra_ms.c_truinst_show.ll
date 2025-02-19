; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_sierra_ms.c_truinst_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_sierra_ms.c_truinst_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.swoc_info = type { i32, i32, i32 }
%struct.usb_interface = type { i32 }
%struct.usb_device = type { i32 }

@swi_tru_install = common dso_local global i64 0, align 8
@TRU_FORCE_MS = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Forced Mass Storage\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"Error\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"SWIMS: failed SWoC query\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"REV=%02d SKU=%04X VER=%04X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @truinst_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @truinst_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.swoc_info*, align 8
  %9 = alloca %struct.usb_interface*, align 8
  %10 = alloca %struct.usb_device*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.usb_interface* @to_usb_interface(%struct.device* %12)
  store %struct.usb_interface* %13, %struct.usb_interface** %9, align 8
  %14 = load %struct.usb_interface*, %struct.usb_interface** %9, align 8
  %15 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %14)
  store %struct.usb_device* %15, %struct.usb_device** %10, align 8
  %16 = load i64, i64* @swi_tru_install, align 8
  %17 = load i64, i64* @TRU_FORCE_MS, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load i8*, i8** %7, align 8
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %20, i32 %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 %22, i32* %11, align 4
  br label %68

23:                                               ; preds = %3
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.swoc_info* @kmalloc(i32 12, i32 %24)
  store %struct.swoc_info* %25, %struct.swoc_info** %8, align 8
  %26 = load %struct.swoc_info*, %struct.swoc_info** %8, align 8
  %27 = icmp ne %struct.swoc_info* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %23
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* @PAGE_SIZE, align 4
  %31 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %29, i32 %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %70

34:                                               ; preds = %23
  %35 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %36 = load %struct.swoc_info*, %struct.swoc_info** %8, align 8
  %37 = call i32 @sierra_get_swoc_info(%struct.usb_device* %35, %struct.swoc_info* %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %34
  %41 = load %struct.device*, %struct.device** %5, align 8
  %42 = call i32 @dev_dbg(%struct.device* %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %43 = load %struct.swoc_info*, %struct.swoc_info** %8, align 8
  %44 = call i32 @kfree(%struct.swoc_info* %43)
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* @PAGE_SIZE, align 4
  %47 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %45, i32 %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %70

50:                                               ; preds = %34
  %51 = load %struct.device*, %struct.device** %5, align 8
  %52 = load %struct.swoc_info*, %struct.swoc_info** %8, align 8
  %53 = call i32 @debug_swoc(%struct.device* %51, %struct.swoc_info* %52)
  %54 = load i8*, i8** %7, align 8
  %55 = load i32, i32* @PAGE_SIZE, align 4
  %56 = load %struct.swoc_info*, %struct.swoc_info** %8, align 8
  %57 = getelementptr inbounds %struct.swoc_info, %struct.swoc_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.swoc_info*, %struct.swoc_info** %8, align 8
  %60 = getelementptr inbounds %struct.swoc_info, %struct.swoc_info* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.swoc_info*, %struct.swoc_info** %8, align 8
  %63 = getelementptr inbounds %struct.swoc_info, %struct.swoc_info* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %54, i32 %55, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %58, i32 %61, i32 %64)
  store i32 %65, i32* %11, align 4
  %66 = load %struct.swoc_info*, %struct.swoc_info** %8, align 8
  %67 = call i32 @kfree(%struct.swoc_info* %66)
  br label %68

68:                                               ; preds = %50, %19
  %69 = load i32, i32* %11, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %68, %40, %28
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local %struct.usb_interface* @to_usb_interface(%struct.device*) #1

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local %struct.swoc_info* @kmalloc(i32, i32) #1

declare dso_local i32 @sierra_get_swoc_info(%struct.usb_device*, %struct.swoc_info*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @kfree(%struct.swoc_info*) #1

declare dso_local i32 @debug_swoc(%struct.device*, %struct.swoc_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
