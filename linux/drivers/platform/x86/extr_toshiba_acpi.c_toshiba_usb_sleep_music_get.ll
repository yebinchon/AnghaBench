; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_toshiba_acpi.c_toshiba_usb_sleep_music_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_toshiba_acpi.c_toshiba_usb_sleep_music_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.toshiba_acpi_dev = type { i32 }

@EIO = common dso_local global i32 0, align 4
@SCI_USB_SLEEP_MUSIC = common dso_local global i32 0, align 4
@TOS_FAILURE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"ACPI call to get Sleep and Music failed\0A\00", align 1
@TOS_NOT_SUPPORTED = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@TOS_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.toshiba_acpi_dev*, i64*)* @toshiba_usb_sleep_music_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @toshiba_usb_sleep_music_get(%struct.toshiba_acpi_dev* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.toshiba_acpi_dev*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  store %struct.toshiba_acpi_dev* %0, %struct.toshiba_acpi_dev** %4, align 8
  store i64* %1, i64** %5, align 8
  %7 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %8 = call i32 @sci_open(%struct.toshiba_acpi_dev* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @EIO, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %43

13:                                               ; preds = %2
  %14 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %15 = load i32, i32* @SCI_USB_SLEEP_MUSIC, align 4
  %16 = load i64*, i64** %5, align 8
  %17 = call i64 @sci_read(%struct.toshiba_acpi_dev* %14, i32 %15, i64* %16)
  store i64 %17, i64* %6, align 8
  %18 = load %struct.toshiba_acpi_dev*, %struct.toshiba_acpi_dev** %4, align 8
  %19 = call i32 @sci_close(%struct.toshiba_acpi_dev* %18)
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @TOS_FAILURE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %13
  %24 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %33

25:                                               ; preds = %13
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @TOS_NOT_SUPPORTED, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %43

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32, %23
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* @TOS_SUCCESS, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  br label %41

41:                                               ; preds = %38, %37
  %42 = phi i32 [ 0, %37 ], [ %40, %38 ]
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %41, %29, %10
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @sci_open(%struct.toshiba_acpi_dev*) #1

declare dso_local i64 @sci_read(%struct.toshiba_acpi_dev*, i32, i64*) #1

declare dso_local i32 @sci_close(%struct.toshiba_acpi_dev*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
