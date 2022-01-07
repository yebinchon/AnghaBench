; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vudc_sysfs.c_dev_desc_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vudc_sysfs.c_dev_desc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { i32 }
%struct.device = type { i32 }
%struct.vudc = type { i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i32, i64)* @dev_desc_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dev_desc_read(%struct.file* %0, %struct.kobject* %1, %struct.bin_attribute* %2, i8* %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.kobject*, align 8
  %9 = alloca %struct.bin_attribute*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.device*, align 8
  %14 = alloca %struct.vudc*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %7, align 8
  store %struct.kobject* %1, %struct.kobject** %8, align 8
  store %struct.bin_attribute* %2, %struct.bin_attribute** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  %18 = load %struct.kobject*, %struct.kobject** %8, align 8
  %19 = call %struct.device* @kobj_to_dev(%struct.kobject* %18)
  store %struct.device* %19, %struct.device** %13, align 8
  %20 = load %struct.device*, %struct.device** %13, align 8
  %21 = call i64 @dev_get_drvdata(%struct.device* %20)
  %22 = inttoptr i64 %21 to %struct.vudc*
  store %struct.vudc* %22, %struct.vudc** %14, align 8
  %23 = load %struct.vudc*, %struct.vudc** %14, align 8
  %24 = getelementptr inbounds %struct.vudc, %struct.vudc* %23, i32 0, i32 2
  %25 = bitcast i32* %24 to i8*
  store i8* %25, i8** %15, align 8
  %26 = load %struct.vudc*, %struct.vudc** %14, align 8
  %27 = getelementptr inbounds %struct.vudc, %struct.vudc* %26, i32 0, i32 0
  %28 = load i64, i64* %16, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.vudc*, %struct.vudc** %14, align 8
  %31 = getelementptr inbounds %struct.vudc, %struct.vudc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %6
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %17, align 4
  br label %47

37:                                               ; preds = %6
  %38 = load i8*, i8** %10, align 8
  %39 = load i8*, i8** %15, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i64, i64* %12, align 8
  %44 = call i32 @memcpy(i8* %38, i8* %42, i64 %43)
  %45 = load i64, i64* %12, align 8
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %17, align 4
  br label %47

47:                                               ; preds = %37, %34
  %48 = load %struct.vudc*, %struct.vudc** %14, align 8
  %49 = getelementptr inbounds %struct.vudc, %struct.vudc* %48, i32 0, i32 0
  %50 = load i64, i64* %16, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  %52 = load i32, i32* %17, align 4
  ret i32 %52
}

declare dso_local %struct.device* @kobj_to_dev(%struct.kobject*) #1

declare dso_local i64 @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
