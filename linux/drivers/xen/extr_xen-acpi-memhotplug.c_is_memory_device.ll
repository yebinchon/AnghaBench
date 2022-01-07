; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_xen-acpi-memhotplug.c_is_memory_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_xen-acpi-memhotplug.c_is_memory_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@ACPI_VALID_HID = common dso_local global i32 0, align 4
@AE_ERROR = common dso_local global i32 0, align 4
@ACPI_MEMORY_DEVICE_HID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @is_memory_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_memory_device(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_device_info*, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @acpi_get_object_info(i32 %7, %struct.acpi_device_info** %6)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i64 @ACPI_FAILURE(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %43

14:                                               ; preds = %1
  %15 = load %struct.acpi_device_info*, %struct.acpi_device_info** %6, align 8
  %16 = getelementptr inbounds %struct.acpi_device_info, %struct.acpi_device_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @ACPI_VALID_HID, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %14
  %22 = load %struct.acpi_device_info*, %struct.acpi_device_info** %6, align 8
  %23 = call i32 @kfree(%struct.acpi_device_info* %22)
  %24 = load i32, i32* @AE_ERROR, align 4
  store i32 %24, i32* %2, align 4
  br label %43

25:                                               ; preds = %14
  %26 = load %struct.acpi_device_info*, %struct.acpi_device_info** %6, align 8
  %27 = getelementptr inbounds %struct.acpi_device_info, %struct.acpi_device_info* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %4, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %25
  %33 = load i8*, i8** %4, align 8
  %34 = load i32, i32* @ACPI_MEMORY_DEVICE_HID, align 4
  %35 = call i64 @strcmp(i8* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32, %25
  %38 = load i32, i32* @AE_ERROR, align 4
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %37, %32
  %40 = load %struct.acpi_device_info*, %struct.acpi_device_info** %6, align 8
  %41 = call i32 @kfree(%struct.acpi_device_info* %40)
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %39, %21, %12
  %44 = load i32, i32* %2, align 4
  ret i32 %44
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
