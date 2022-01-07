; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_wmi.c_get_subobj_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_wmi.c_get_subobj_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device_info = type { i32 }

@AE_NOT_FOUND = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, %struct.acpi_device_info**)* @get_subobj_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_subobj_info(i32 %0, i8* %1, %struct.acpi_device_info** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.acpi_device_info**, align 8
  %8 = alloca %struct.acpi_device_info*, align 8
  %9 = alloca %struct.acpi_device_info**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store %struct.acpi_device_info** %2, %struct.acpi_device_info*** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = call i64 @acpi_get_handle(i32 %12, i8* %13, i32* %10)
  store i64 %14, i64* %11, align 8
  %15 = load i64, i64* %11, align 8
  %16 = load i64, i64* @AE_NOT_FOUND, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOENT, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %53

21:                                               ; preds = %3
  %22 = load i64, i64* %11, align 8
  %23 = call i64 @ACPI_FAILURE(i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %53

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.acpi_device_info**, %struct.acpi_device_info*** %7, align 8
  %31 = icmp ne %struct.acpi_device_info** %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load %struct.acpi_device_info**, %struct.acpi_device_info*** %7, align 8
  br label %35

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %34, %32
  %36 = phi %struct.acpi_device_info** [ %33, %32 ], [ %8, %34 ]
  store %struct.acpi_device_info** %36, %struct.acpi_device_info*** %9, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.acpi_device_info**, %struct.acpi_device_info*** %9, align 8
  %39 = call i64 @acpi_get_object_info(i32 %37, %struct.acpi_device_info** %38)
  store i64 %39, i64* %11, align 8
  %40 = load i64, i64* %11, align 8
  %41 = call i64 @ACPI_FAILURE(i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %53

46:                                               ; preds = %35
  %47 = load %struct.acpi_device_info**, %struct.acpi_device_info*** %7, align 8
  %48 = icmp ne %struct.acpi_device_info** %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load %struct.acpi_device_info*, %struct.acpi_device_info** %8, align 8
  %51 = call i32 @kfree(%struct.acpi_device_info* %50)
  br label %52

52:                                               ; preds = %49, %46
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %43, %25, %18
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i64 @acpi_get_handle(i32, i8*, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i64) #1

declare dso_local i64 @acpi_get_object_info(i32, %struct.acpi_device_info**) #1

declare dso_local i32 @kfree(%struct.acpi_device_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
