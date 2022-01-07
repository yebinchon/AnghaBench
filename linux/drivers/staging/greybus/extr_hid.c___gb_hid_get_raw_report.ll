; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_hid.c___gb_hid_get_raw_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_hid.c___gb_hid_get_raw_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { %struct.gb_hid* }
%struct.gb_hid = type { i32 }

@HID_OUTPUT_REPORT = common dso_local global i8 0, align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, i8, i32*, i64, i8)* @__gb_hid_get_raw_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__gb_hid_get_raw_report(%struct.hid_device* %0, i8 zeroext %1, i32* %2, i64 %3, i8 zeroext %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hid_device*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca %struct.gb_hid*, align 8
  %13 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %7, align 8
  store i8 %1, i8* %8, align 1
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8 %4, i8* %11, align 1
  %14 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %15 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %14, i32 0, i32 0
  %16 = load %struct.gb_hid*, %struct.gb_hid** %15, align 8
  store %struct.gb_hid* %16, %struct.gb_hid** %12, align 8
  %17 = load i8, i8* %11, align 1
  %18 = zext i8 %17 to i32
  %19 = load i8, i8* @HID_OUTPUT_REPORT, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %39

25:                                               ; preds = %5
  %26 = load %struct.gb_hid*, %struct.gb_hid** %12, align 8
  %27 = load i8, i8* %11, align 1
  %28 = load i8, i8* %8, align 1
  %29 = load i32*, i32** %9, align 8
  %30 = load i64, i64* %10, align 8
  %31 = call i32 @gb_hid_get_report(%struct.gb_hid* %26, i8 zeroext %27, i8 zeroext %28, i32* %29, i64 %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %25
  %35 = load i64, i64* %10, align 8
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %13, align 4
  br label %37

37:                                               ; preds = %34, %25
  %38 = load i32, i32* %13, align 4
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %37, %22
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local i32 @gb_hid_get_report(%struct.gb_hid*, i8 zeroext, i8 zeroext, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
