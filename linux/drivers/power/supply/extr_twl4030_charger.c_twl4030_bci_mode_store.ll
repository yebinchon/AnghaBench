; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_twl4030_charger.c_twl4030_bci_mode_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_twl4030_charger.c_twl4030_bci_mode_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.twl4030_bci = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }

@modes = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @twl4030_bci_mode_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_bci_mode_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.twl4030_bci*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.twl4030_bci* @dev_get_drvdata(i32 %15)
  store %struct.twl4030_bci* %16, %struct.twl4030_bci** %10, align 8
  %17 = load i32, i32* @modes, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @sysfs_match_string(i32 %17, i8* %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %5, align 4
  br label %64

24:                                               ; preds = %4
  %25 = load %struct.device*, %struct.device** %6, align 8
  %26 = load %struct.twl4030_bci*, %struct.twl4030_bci** %10, align 8
  %27 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = icmp eq %struct.device* %25, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %24
  %32 = load i32, i32* %11, align 4
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %64

37:                                               ; preds = %31
  %38 = load %struct.twl4030_bci*, %struct.twl4030_bci** %10, align 8
  %39 = call i32 @twl4030_charger_enable_ac(%struct.twl4030_bci* %38, i32 0)
  %40 = load i32, i32* %11, align 4
  %41 = load %struct.twl4030_bci*, %struct.twl4030_bci** %10, align 8
  %42 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.twl4030_bci*, %struct.twl4030_bci** %10, align 8
  %44 = call i32 @twl4030_charger_enable_ac(%struct.twl4030_bci* %43, i32 1)
  store i32 %44, i32* %12, align 4
  br label %53

45:                                               ; preds = %24
  %46 = load %struct.twl4030_bci*, %struct.twl4030_bci** %10, align 8
  %47 = call i32 @twl4030_charger_enable_usb(%struct.twl4030_bci* %46, i32 0)
  %48 = load i32, i32* %11, align 4
  %49 = load %struct.twl4030_bci*, %struct.twl4030_bci** %10, align 8
  %50 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.twl4030_bci*, %struct.twl4030_bci** %10, align 8
  %52 = call i32 @twl4030_charger_enable_usb(%struct.twl4030_bci* %51, i32 1)
  store i32 %52, i32* %12, align 4
  br label %53

53:                                               ; preds = %45, %37
  %54 = load i32, i32* %12, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i64, i64* %9, align 8
  br label %61

58:                                               ; preds = %53
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  br label %61

61:                                               ; preds = %58, %56
  %62 = phi i64 [ %57, %56 ], [ %60, %58 ]
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %61, %34, %22
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local %struct.twl4030_bci* @dev_get_drvdata(i32) #1

declare dso_local i32 @sysfs_match_string(i32, i8*) #1

declare dso_local i32 @twl4030_charger_enable_ac(%struct.twl4030_bci*, i32) #1

declare dso_local i32 @twl4030_charger_enable_usb(%struct.twl4030_bci*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
