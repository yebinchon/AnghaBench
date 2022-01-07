; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_lg-laptop.c_fan_mode_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_lg-laptop.c_fan_mode_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%union.acpi_object = type { i64 }
%struct.TYPE_2__ = type { i32 }

@WM_FAN_MODE = common dso_local global i32 0, align 4
@WM_GET = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i64 0, align 8
@WM_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @fan_mode_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fan_mode_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %union.acpi_object*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call i32 @kstrtobool(i8* %14, i32* %10)
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* %13, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %13, align 4
  store i32 %19, i32* %5, align 4
  br label %68

20:                                               ; preds = %4
  %21 = load i32, i32* @WM_FAN_MODE, align 4
  %22 = load i32, i32* @WM_GET, align 4
  %23 = call %union.acpi_object* @lg_wmab(i32 %21, i32 %22, i32 0)
  store %union.acpi_object* %23, %union.acpi_object** %11, align 8
  %24 = load %union.acpi_object*, %union.acpi_object** %11, align 8
  %25 = icmp ne %union.acpi_object* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %68

29:                                               ; preds = %20
  %30 = load %union.acpi_object*, %union.acpi_object** %11, align 8
  %31 = bitcast %union.acpi_object* %30 to i64*
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load %union.acpi_object*, %union.acpi_object** %11, align 8
  %37 = call i32 @kfree(%union.acpi_object* %36)
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %68

40:                                               ; preds = %29
  %41 = load %union.acpi_object*, %union.acpi_object** %11, align 8
  %42 = bitcast %union.acpi_object* %41 to %struct.TYPE_2__*
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %12, align 4
  %45 = load %union.acpi_object*, %union.acpi_object** %11, align 8
  %46 = call i32 @kfree(%union.acpi_object* %45)
  %47 = load i32, i32* @WM_FAN_MODE, align 4
  %48 = load i32, i32* @WM_SET, align 4
  %49 = load i32, i32* %12, align 4
  %50 = and i32 %49, -241
  %51 = load i32, i32* %10, align 4
  %52 = shl i32 %51, 4
  %53 = or i32 %50, %52
  %54 = call %union.acpi_object* @lg_wmab(i32 %47, i32 %48, i32 %53)
  store %union.acpi_object* %54, %union.acpi_object** %11, align 8
  %55 = load %union.acpi_object*, %union.acpi_object** %11, align 8
  %56 = call i32 @kfree(%union.acpi_object* %55)
  %57 = load i32, i32* @WM_FAN_MODE, align 4
  %58 = load i32, i32* @WM_SET, align 4
  %59 = load i32, i32* %12, align 4
  %60 = and i32 %59, -16
  %61 = load i32, i32* %10, align 4
  %62 = or i32 %60, %61
  %63 = call %union.acpi_object* @lg_wmab(i32 %57, i32 %58, i32 %62)
  store %union.acpi_object* %63, %union.acpi_object** %11, align 8
  %64 = load %union.acpi_object*, %union.acpi_object** %11, align 8
  %65 = call i32 @kfree(%union.acpi_object* %64)
  %66 = load i64, i64* %9, align 8
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %40, %35, %26, %18
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @kstrtobool(i8*, i32*) #1

declare dso_local %union.acpi_object* @lg_wmab(i32, i32, i32) #1

declare dso_local i32 @kfree(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
