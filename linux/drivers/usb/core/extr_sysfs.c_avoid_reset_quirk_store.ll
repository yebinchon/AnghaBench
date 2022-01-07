; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_sysfs.c_avoid_reset_quirk_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_sysfs.c_avoid_reset_quirk_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.usb_device = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@USB_QUIRK_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @avoid_reset_quirk_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @avoid_reset_quirk_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.usb_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.usb_device* @to_usb_device(%struct.device* %13)
  store %struct.usb_device* %14, %struct.usb_device** %10, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @sscanf(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %11)
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %24, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* %11, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %11, align 4
  %23 = icmp sgt i32 %22, 1
  br i1 %23, label %24, label %27

24:                                               ; preds = %21, %18, %4
  %25 = load i64, i64* @EINVAL, align 8
  %26 = sub i64 0, %25
  store i64 %26, i64* %5, align 8
  br label %55

27:                                               ; preds = %21
  %28 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %29 = call i32 @usb_lock_device_interruptible(%struct.usb_device* %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i64, i64* @EINTR, align 8
  %34 = sub i64 0, %33
  store i64 %34, i64* %5, align 8
  br label %55

35:                                               ; preds = %27
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load i32, i32* @USB_QUIRK_RESET, align 4
  %40 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %41 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  br label %51

44:                                               ; preds = %35
  %45 = load i32, i32* @USB_QUIRK_RESET, align 4
  %46 = xor i32 %45, -1
  %47 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %48 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %44, %38
  %52 = load %struct.usb_device*, %struct.usb_device** %10, align 8
  %53 = call i32 @usb_unlock_device(%struct.usb_device* %52)
  %54 = load i64, i64* %9, align 8
  store i64 %54, i64* %5, align 8
  br label %55

55:                                               ; preds = %51, %32, %24
  %56 = load i64, i64* %5, align 8
  ret i64 %56
}

declare dso_local %struct.usb_device* @to_usb_device(%struct.device*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @usb_lock_device_interruptible(%struct.usb_device*) #1

declare dso_local i32 @usb_unlock_device(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
