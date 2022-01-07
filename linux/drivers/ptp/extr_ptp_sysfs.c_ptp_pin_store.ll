; ModuleID = '/home/carl/AnghaBench/linux/drivers/ptp/extr_ptp_sysfs.c_ptp_pin_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ptp/extr_ptp_sysfs.c_ptp_pin_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ptp_clock = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"%u %u\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @ptp_pin_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptp_pin_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ptp_clock*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.ptp_clock* @dev_get_drvdata(%struct.device* %16)
  store %struct.ptp_clock* %17, %struct.ptp_clock** %10, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @sscanf(i8* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %11, i32* %12)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp ne i32 %20, 2
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %61

25:                                               ; preds = %4
  %26 = load %struct.ptp_clock*, %struct.ptp_clock** %10, align 8
  %27 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %28 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ptp_pin_name2index(%struct.ptp_clock* %26, i32 %30)
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %15, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %61

37:                                               ; preds = %25
  %38 = load %struct.ptp_clock*, %struct.ptp_clock** %10, align 8
  %39 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %38, i32 0, i32 0
  %40 = call i64 @mutex_lock_interruptible(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* @ERESTARTSYS, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %61

45:                                               ; preds = %37
  %46 = load %struct.ptp_clock*, %struct.ptp_clock** %10, align 8
  %47 = load i32, i32* %15, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @ptp_set_pinfunc(%struct.ptp_clock* %46, i32 %47, i32 %48, i32 %49)
  store i32 %50, i32* %14, align 4
  %51 = load %struct.ptp_clock*, %struct.ptp_clock** %10, align 8
  %52 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %51, i32 0, i32 0
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load i32, i32* %14, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %45
  %57 = load i32, i32* %14, align 4
  store i32 %57, i32* %5, align 4
  br label %61

58:                                               ; preds = %45
  %59 = load i64, i64* %9, align 8
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %58, %56, %42, %34, %22
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local %struct.ptp_clock* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

declare dso_local i32 @ptp_pin_name2index(%struct.ptp_clock*, i32) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @ptp_set_pinfunc(%struct.ptp_clock*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
