; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel-hid.c_intel_button_array_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_intel-hid.c_intel_button_array_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.intel_hid_priv = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"BTNC\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to get button capability\0A\00", align 1
@INTEL_HID_DSM_BTNE_FN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"failed to set button capability\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i32)* @intel_button_array_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_button_array_enable(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_hid_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.intel_hid_priv* @dev_get_drvdata(%struct.device* %9)
  store %struct.intel_hid_priv* %10, %struct.intel_hid_priv** %5, align 8
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = call i32 @ACPI_HANDLE(%struct.device* %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.intel_hid_priv*, %struct.intel_hid_priv** %5, align 8
  %14 = getelementptr inbounds %struct.intel_hid_priv, %struct.intel_hid_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %42

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @acpi_evaluate_integer(i32 %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, i64* %7)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i64 @ACPI_FAILURE(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load %struct.device*, %struct.device** %3, align 8
  %26 = call i32 @dev_warn(%struct.device* %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %42

27:                                               ; preds = %18
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @INTEL_HID_DSM_BTNE_FN, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i64, i64* %7, align 8
  br label %35

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34, %32
  %36 = phi i64 [ %33, %32 ], [ 1, %34 ]
  %37 = call i32 @intel_hid_execute_method(i32 %28, i32 %29, i64 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = load %struct.device*, %struct.device** %3, align 8
  %41 = call i32 @dev_warn(%struct.device* %40, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %42

42:                                               ; preds = %17, %24, %39, %35
  ret void
}

declare dso_local %struct.intel_hid_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @ACPI_HANDLE(%struct.device*) #1

declare dso_local i32 @acpi_evaluate_integer(i32, i8*, i32*, i64*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @intel_hid_execute_method(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
