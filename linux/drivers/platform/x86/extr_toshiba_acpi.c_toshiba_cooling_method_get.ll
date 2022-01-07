; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_toshiba_acpi.c_toshiba_cooling_method_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_toshiba_acpi.c_toshiba_cooling_method_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.toshiba_acpi_dev = type { i32 }

@HCI_COOLING_METHOD = common dso_local global i32 0, align 4
@TOS_FAILURE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"ACPI call to get Cooling Method failed\0A\00", align 1
@TOS_NOT_SUPPORTED = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@TOS_SUCCESS = common dso_local global i64 0, align 8
@TOS_SUCCESS2 = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.toshiba_acpi_dev*, i64*)* @toshiba_cooling_method_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @toshiba_cooling_method_get(%struct.toshiba_acpi_dev* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.toshiba_acpi_dev*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  store %struct.toshiba_acpi_dev* %0, %struct.toshiba_acpi_dev** %4, align 8
  store i64* %1, i64** %5, align 8
  %7 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %8 = load i32, i32* @HCI_COOLING_METHOD, align 4
  %9 = load i64*, i64** %5, align 8
  %10 = call i64 @hci_read(%struct.toshiba_acpi_dev* %7, i32 %8, i64* %9)
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @TOS_FAILURE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %2
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @TOS_NOT_SUPPORTED, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %37

23:                                               ; preds = %16
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @TOS_SUCCESS, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @TOS_SUCCESS2, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %23
  br label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  br label %35

35:                                               ; preds = %32, %31
  %36 = phi i32 [ 0, %31 ], [ %34, %32 ]
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %35, %20
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i64 @hci_read(%struct.toshiba_acpi_dev*, i32, i64*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
