; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_classmate-laptop.c_cmpc_accel_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_classmate-laptop.c_cmpc_accel_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32, i32 }
%struct.input_dev = type { i32 }

@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_Z = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_device*, i32)* @cmpc_accel_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmpc_accel_handler(%struct.acpi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca %struct.input_dev*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 129
  br i1 %11, label %12, label %39

12:                                               ; preds = %2
  %13 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %14 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @cmpc_get_accel(i32 %15, i8* %5, i8* %6, i8* %7)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i64 @ACPI_SUCCESS(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %12
  %21 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %22 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %21, i32 0, i32 0
  %23 = call %struct.input_dev* @dev_get_drvdata(i32* %22)
  store %struct.input_dev* %23, %struct.input_dev** %9, align 8
  %24 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %25 = load i32, i32* @ABS_X, align 4
  %26 = load i8, i8* %5, align 1
  %27 = call i32 @input_report_abs(%struct.input_dev* %24, i32 %25, i8 zeroext %26)
  %28 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %29 = load i32, i32* @ABS_Y, align 4
  %30 = load i8, i8* %6, align 1
  %31 = call i32 @input_report_abs(%struct.input_dev* %28, i32 %29, i8 zeroext %30)
  %32 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %33 = load i32, i32* @ABS_Z, align 4
  %34 = load i8, i8* %7, align 1
  %35 = call i32 @input_report_abs(%struct.input_dev* %32, i32 %33, i8 zeroext %34)
  %36 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %37 = call i32 @input_sync(%struct.input_dev* %36)
  br label %38

38:                                               ; preds = %20, %12
  br label %39

39:                                               ; preds = %38, %2
  ret void
}

declare dso_local i32 @cmpc_get_accel(i32, i8*, i8*, i8*) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local %struct.input_dev* @dev_get_drvdata(i32*) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i8 zeroext) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
