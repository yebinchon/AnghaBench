; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_panasonic-laptop.c_acpi_pcc_generate_keyinput.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_panasonic-laptop.c_acpi_pcc_generate_keyinput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcc_acpi = type { i32, %struct.input_dev* }
%struct.input_dev = type { i32 }

@METHOD_HKEY_QUERY = common dso_local global i32 0, align 4
@ACPI_DB_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"error getting hotkey status\0A\00", align 1
@sleep_keydown_seen = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Unknown hotkey event: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcc_acpi*)* @acpi_pcc_generate_keyinput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_pcc_generate_keyinput(%struct.pcc_acpi* %0) #0 {
  %2 = alloca %struct.pcc_acpi*, align 8
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.pcc_acpi* %0, %struct.pcc_acpi** %2, align 8
  %6 = load %struct.pcc_acpi*, %struct.pcc_acpi** %2, align 8
  %7 = getelementptr inbounds %struct.pcc_acpi, %struct.pcc_acpi* %6, i32 0, i32 1
  %8 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  store %struct.input_dev* %8, %struct.input_dev** %3, align 8
  %9 = load %struct.pcc_acpi*, %struct.pcc_acpi** %2, align 8
  %10 = getelementptr inbounds %struct.pcc_acpi, %struct.pcc_acpi* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @METHOD_HKEY_QUERY, align 4
  %13 = call i32 @acpi_evaluate_integer(i32 %11, i32 %12, i32* null, i64* %5)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i64 @ACPI_FAILURE(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @ACPI_DB_ERROR, align 4
  %19 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([29 x i8]* @.str to i32))
  br label %55

20:                                               ; preds = %1
  %21 = load i64, i64* %5, align 8
  %22 = and i64 %21, 15
  %23 = icmp eq i64 %22, 7
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i64, i64* %5, align 8
  %26 = and i64 %25, 15
  %27 = icmp eq i64 %26, 10
  br i1 %27, label %28, label %42

28:                                               ; preds = %24, %20
  %29 = load i64, i64* %5, align 8
  %30 = and i64 %29, 128
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 1, i32* @sleep_keydown_seen, align 4
  br label %33

33:                                               ; preds = %32, %28
  %34 = load i32, i32* @sleep_keydown_seen, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %33
  %37 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %38 = load i64, i64* %5, align 8
  %39 = and i64 %38, 15
  %40 = call i32 @sparse_keymap_report_event(%struct.input_dev* %37, i64 %39, i64 128, i32 0)
  br label %41

41:                                               ; preds = %36, %33
  br label %42

42:                                               ; preds = %41, %24
  %43 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %44 = load i64, i64* %5, align 8
  %45 = and i64 %44, 15
  %46 = load i64, i64* %5, align 8
  %47 = and i64 %46, 128
  %48 = call i32 @sparse_keymap_report_event(%struct.input_dev* %43, i64 %45, i64 %47, i32 0)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %42
  %51 = load i32, i32* @ACPI_DB_ERROR, align 4
  %52 = load i64, i64* %5, align 8
  %53 = trunc i64 %52 to i32
  %54 = call i32 @ACPI_DEBUG_PRINT(i32 %53)
  br label %55

55:                                               ; preds = %17, %50, %42
  ret void
}

declare dso_local i32 @acpi_evaluate_integer(i32, i32, i32*, i64*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @sparse_keymap_report_event(%struct.input_dev*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
