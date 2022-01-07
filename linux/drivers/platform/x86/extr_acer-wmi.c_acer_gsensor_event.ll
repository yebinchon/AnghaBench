; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_acer-wmi.c_acer_gsensor_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_acer-wmi.c_acer_gsensor_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_buffer = type { i32, %union.acpi_object* }
%union.acpi_object = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@ACER_CAP_ACCEL = common dso_local global i32 0, align 4
@gsensor_handle = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"RDVL\00", align 1
@acer_wmi_accel_dev = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_Z = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @acer_gsensor_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acer_gsensor_event() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_buffer, align 8
  %4 = alloca [5 x %union.acpi_object], align 16
  %5 = load i32, i32* @ACER_CAP_ACCEL, align 4
  %6 = call i32 @has_cap(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %65

9:                                                ; preds = %0
  %10 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %3, i32 0, i32 0
  store i32 80, i32* %10, align 8
  %11 = getelementptr inbounds [5 x %union.acpi_object], [5 x %union.acpi_object]* %4, i64 0, i64 0
  %12 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %3, i32 0, i32 1
  store %union.acpi_object* %11, %union.acpi_object** %12, align 8
  %13 = load i32, i32* @gsensor_handle, align 4
  %14 = call i32 @acpi_evaluate_object(i32 %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, %struct.acpi_buffer* %3)
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %2, align 4
  %16 = call i64 @ACPI_FAILURE(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %9
  store i32 -1, i32* %1, align 4
  br label %65

19:                                               ; preds = %9
  %20 = getelementptr inbounds [5 x %union.acpi_object], [5 x %union.acpi_object]* %4, i64 0, i64 0
  %21 = bitcast %union.acpi_object* %20 to %struct.TYPE_6__*
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 16
  %24 = icmp ne i32 %23, 4
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 -1, i32* %1, align 4
  br label %65

26:                                               ; preds = %19
  %27 = load i32, i32* @acer_wmi_accel_dev, align 4
  %28 = load i32, i32* @ABS_X, align 4
  %29 = getelementptr inbounds [5 x %union.acpi_object], [5 x %union.acpi_object]* %4, i64 0, i64 0
  %30 = bitcast %union.acpi_object* %29 to %struct.TYPE_6__*
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i32 @input_report_abs(i32 %27, i32 %28, i32 %37)
  %39 = load i32, i32* @acer_wmi_accel_dev, align 4
  %40 = load i32, i32* @ABS_Y, align 4
  %41 = getelementptr inbounds [5 x %union.acpi_object], [5 x %union.acpi_object]* %4, i64 0, i64 0
  %42 = bitcast %union.acpi_object* %41 to %struct.TYPE_6__*
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i64 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = call i32 @input_report_abs(i32 %39, i32 %40, i32 %49)
  %51 = load i32, i32* @acer_wmi_accel_dev, align 4
  %52 = load i32, i32* @ABS_Z, align 4
  %53 = getelementptr inbounds [5 x %union.acpi_object], [5 x %union.acpi_object]* %4, i64 0, i64 0
  %54 = bitcast %union.acpi_object* %53 to %struct.TYPE_6__*
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i64 2
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = call i32 @input_report_abs(i32 %51, i32 %52, i32 %61)
  %63 = load i32, i32* @acer_wmi_accel_dev, align 4
  %64 = call i32 @input_sync(i32 %63)
  store i32 0, i32* %1, align 4
  br label %65

65:                                               ; preds = %26, %25, %18, %8
  %66 = load i32, i32* %1, align 4
  ret i32 %66
}

declare dso_local i32 @has_cap(i32) #1

declare dso_local i32 @acpi_evaluate_object(i32, i8*, i32*, %struct.acpi_buffer*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @input_report_abs(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
