; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_lg-laptop.c_battery_care_limit_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_lg-laptop.c_battery_care_limit_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%union.acpi_object = type { i32 }

@WM_BATT_LIMIT = common dso_local global i32 0, align 4
@WM_SET = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @battery_care_limit_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @battery_care_limit_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %union.acpi_object*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = call i32 @kstrtoul(i8* %13, i32 10, i64* %10)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* %11, align 4
  store i32 %18, i32* %5, align 4
  br label %43

19:                                               ; preds = %4
  %20 = load i64, i64* %10, align 8
  %21 = icmp eq i64 %20, 100
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i64, i64* %10, align 8
  %24 = icmp eq i64 %23, 80
  br i1 %24, label %25, label %40

25:                                               ; preds = %22, %19
  %26 = load i32, i32* @WM_BATT_LIMIT, align 4
  %27 = load i32, i32* @WM_SET, align 4
  %28 = load i64, i64* %10, align 8
  %29 = call %union.acpi_object* @lg_wmab(i32 %26, i32 %27, i64 %28)
  store %union.acpi_object* %29, %union.acpi_object** %12, align 8
  %30 = load %union.acpi_object*, %union.acpi_object** %12, align 8
  %31 = icmp ne %union.acpi_object* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %43

35:                                               ; preds = %25
  %36 = load %union.acpi_object*, %union.acpi_object** %12, align 8
  %37 = call i32 @kfree(%union.acpi_object* %36)
  %38 = load i64, i64* %9, align 8
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %5, align 4
  br label %43

40:                                               ; preds = %22
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %40, %35, %32, %17
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local %union.acpi_object* @lg_wmab(i32, i32, i64) #1

declare dso_local i32 @kfree(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
