; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_lg-laptop.c_fan_mode_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_lg-laptop.c_fan_mode_show.c"
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
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @fan_mode_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fan_mode_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.acpi_object*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* @WM_FAN_MODE, align 4
  %11 = load i32, i32* @WM_GET, align 4
  %12 = call %union.acpi_object* @lg_wmab(i32 %10, i32 %11, i32 0)
  store %union.acpi_object* %12, %union.acpi_object** %9, align 8
  %13 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %14 = icmp ne %union.acpi_object* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %41

18:                                               ; preds = %3
  %19 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %20 = bitcast %union.acpi_object* %19 to i64*
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %26 = call i32 @kfree(%union.acpi_object* %25)
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %41

29:                                               ; preds = %18
  %30 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %31 = bitcast %union.acpi_object* %30 to %struct.TYPE_2__*
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, 1
  store i32 %34, i32* %8, align 4
  %35 = load %union.acpi_object*, %union.acpi_object** %9, align 8
  %36 = call i32 @kfree(%union.acpi_object* %35)
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* @PAGE_SIZE, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @snprintf(i8* %37, i32 %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %39)
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %29, %24, %15
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %union.acpi_object* @lg_wmab(i32, i32, i32) #1

declare dso_local i32 @kfree(%union.acpi_object*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
