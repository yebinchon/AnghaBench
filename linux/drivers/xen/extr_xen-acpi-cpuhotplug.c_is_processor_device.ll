; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_xen-acpi-cpuhotplug.c_is_processor_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_xen-acpi-cpuhotplug.c_is_processor_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device_info = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@ACPI_TYPE_PROCESSOR = common dso_local global i64 0, align 8
@AE_OK = common dso_local global i32 0, align 4
@ACPI_VALID_HID = common dso_local global i32 0, align 4
@AE_ERROR = common dso_local global i32 0, align 4
@ACPI_PROCESSOR_DEVICE_HID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @is_processor_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_processor_device(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_device_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @acpi_get_object_info(i32 %7, %struct.acpi_device_info** %4)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i64 @ACPI_FAILURE(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %2, align 4
  br label %55

14:                                               ; preds = %1
  %15 = load %struct.acpi_device_info*, %struct.acpi_device_info** %4, align 8
  %16 = getelementptr inbounds %struct.acpi_device_info, %struct.acpi_device_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ACPI_TYPE_PROCESSOR, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load %struct.acpi_device_info*, %struct.acpi_device_info** %4, align 8
  %22 = call i32 @kfree(%struct.acpi_device_info* %21)
  %23 = load i32, i32* @AE_OK, align 4
  store i32 %23, i32* %2, align 4
  br label %55

24:                                               ; preds = %14
  %25 = load %struct.acpi_device_info*, %struct.acpi_device_info** %4, align 8
  %26 = getelementptr inbounds %struct.acpi_device_info, %struct.acpi_device_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @ACPI_VALID_HID, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %24
  %32 = load %struct.acpi_device_info*, %struct.acpi_device_info** %4, align 8
  %33 = call i32 @kfree(%struct.acpi_device_info* %32)
  %34 = load i32, i32* @AE_ERROR, align 4
  store i32 %34, i32* %2, align 4
  br label %55

35:                                               ; preds = %24
  %36 = load %struct.acpi_device_info*, %struct.acpi_device_info** %4, align 8
  %37 = getelementptr inbounds %struct.acpi_device_info, %struct.acpi_device_info* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %5, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %35
  %43 = load i8*, i8** %5, align 8
  %44 = load i32, i32* @ACPI_PROCESSOR_DEVICE_HID, align 4
  %45 = call i64 @strcmp(i8* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42, %35
  %48 = load %struct.acpi_device_info*, %struct.acpi_device_info** %4, align 8
  %49 = call i32 @kfree(%struct.acpi_device_info* %48)
  %50 = load i32, i32* @AE_ERROR, align 4
  store i32 %50, i32* %2, align 4
  br label %55

51:                                               ; preds = %42
  %52 = load %struct.acpi_device_info*, %struct.acpi_device_info** %4, align 8
  %53 = call i32 @kfree(%struct.acpi_device_info* %52)
  %54 = load i32, i32* @AE_OK, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %51, %47, %31, %20, %12
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @acpi_get_object_info(i32, %struct.acpi_device_info**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @kfree(%struct.acpi_device_info*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
