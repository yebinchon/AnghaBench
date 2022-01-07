; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/class/extr_cdc-wdm.c_wdm_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/class/extr_cdc-wdm.c_wdm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.wdm_device* }
%struct.wdm_device = type { i32, %struct.usb_interface*, i32 (%struct.usb_interface*, i32)*, i32, i32, i64, i64, i32 }
%struct.usb_interface = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@wdm_mutex = common dso_local global i32 0, align 4
@WDM_DISCONNECTING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Error autopm - %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Error submitting int urb - %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @wdm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wdm_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_interface*, align 8
  %8 = alloca %struct.wdm_device*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %9 = load %struct.inode*, %struct.inode** %3, align 8
  %10 = call i32 @iminor(%struct.inode* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %6, align 4
  %13 = call i32 @mutex_lock(i32* @wdm_mutex)
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.wdm_device* @wdm_find_device_by_minor(i32 %14)
  store %struct.wdm_device* %15, %struct.wdm_device** %8, align 8
  %16 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %17 = icmp ne %struct.wdm_device* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %101

19:                                               ; preds = %2
  %20 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %21 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %20, i32 0, i32 1
  %22 = load %struct.usb_interface*, %struct.usb_interface** %21, align 8
  store %struct.usb_interface* %22, %struct.usb_interface** %7, align 8
  %23 = load i32, i32* @WDM_DISCONNECTING, align 4
  %24 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %25 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %24, i32 0, i32 7
  %26 = call i64 @test_bit(i32 %23, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %101

29:                                               ; preds = %19
  %30 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %31 = load %struct.file*, %struct.file** %4, align 8
  %32 = getelementptr inbounds %struct.file, %struct.file* %31, i32 0, i32 0
  store %struct.wdm_device* %30, %struct.wdm_device** %32, align 8
  %33 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %34 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %33, i32 0, i32 1
  %35 = load %struct.usb_interface*, %struct.usb_interface** %34, align 8
  %36 = call i32 @usb_autopm_get_interface(%struct.usb_interface* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %29
  %40 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %41 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %40, i32 0, i32 1
  %42 = load %struct.usb_interface*, %struct.usb_interface** %41, align 8
  %43 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %42, i32 0, i32 0
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %101

46:                                               ; preds = %29
  %47 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %48 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %47, i32 0, i32 3
  %49 = call i32 @mutex_lock(i32* %48)
  %50 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %51 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 8
  %54 = icmp ne i32 %52, 0
  br i1 %54, label %81, label %55

55:                                               ; preds = %46
  %56 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %57 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %56, i32 0, i32 6
  store i64 0, i64* %57, align 8
  %58 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %59 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %58, i32 0, i32 5
  store i64 0, i64* %59, align 8
  %60 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %61 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call i32 @usb_submit_urb(i32 %62, i32 %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %55
  %68 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %69 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %69, align 8
  %72 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %73 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %72, i32 0, i32 1
  %74 = load %struct.usb_interface*, %struct.usb_interface** %73, align 8
  %75 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %74, i32 0, i32 0
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @dev_err(i32* %75, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @usb_translate_errors(i32 %78)
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %67, %55
  br label %82

81:                                               ; preds = %46
  store i32 0, i32* %6, align 4
  br label %82

82:                                               ; preds = %81, %80
  %83 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %84 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %83, i32 0, i32 3
  %85 = call i32 @mutex_unlock(i32* %84)
  %86 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %87 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %90, label %96

90:                                               ; preds = %82
  %91 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %92 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %91, i32 0, i32 2
  %93 = load i32 (%struct.usb_interface*, i32)*, i32 (%struct.usb_interface*, i32)** %92, align 8
  %94 = load %struct.usb_interface*, %struct.usb_interface** %7, align 8
  %95 = call i32 %93(%struct.usb_interface* %94, i32 1)
  br label %96

96:                                               ; preds = %90, %82
  %97 = load %struct.wdm_device*, %struct.wdm_device** %8, align 8
  %98 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %97, i32 0, i32 1
  %99 = load %struct.usb_interface*, %struct.usb_interface** %98, align 8
  %100 = call i32 @usb_autopm_put_interface(%struct.usb_interface* %99)
  br label %101

101:                                              ; preds = %96, %39, %28, %18
  %102 = call i32 @mutex_unlock(i32* @wdm_mutex)
  %103 = load i32, i32* %6, align 4
  ret i32 %103
}

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.wdm_device* @wdm_find_device_by_minor(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @usb_autopm_get_interface(%struct.usb_interface*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @usb_submit_urb(i32, i32) #1

declare dso_local i32 @usb_translate_errors(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @usb_autopm_put_interface(%struct.usb_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
