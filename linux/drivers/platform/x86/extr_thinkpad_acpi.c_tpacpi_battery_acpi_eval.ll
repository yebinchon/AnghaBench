; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_tpacpi_battery_acpi_eval.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_tpacpi_battery_acpi_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hkey_handle = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"dd\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"%s: evaluate failed\00", align 1
@AE_ERROR = common dso_local global i32 0, align 4
@METHOD_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"%s evaluated but flagged as error\00", align 1
@AE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32)* @tpacpi_battery_acpi_eval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpacpi_battery_acpi_eval(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @hkey_handle, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @acpi_evalf(i32 %9, i32* %8, i8* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @hkey_handle, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @acpi_handle_err(i32 %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %16)
  %18 = load i32, i32* @AE_ERROR, align 4
  store i32 %18, i32* %4, align 4
  br label %33

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @METHOD_ERR, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load i32, i32* @hkey_handle, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @acpi_handle_err(i32 %25, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %26)
  %28 = load i32, i32* @AE_ERROR, align 4
  store i32 %28, i32* %4, align 4
  br label %33

29:                                               ; preds = %19
  %30 = load i32, i32* %8, align 4
  %31 = load i32*, i32** %6, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @AE_OK, align 4
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %29, %24, %14
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @acpi_evalf(i32, i32*, i8*, i8*, i32) #1

declare dso_local i32 @acpi_handle_err(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
