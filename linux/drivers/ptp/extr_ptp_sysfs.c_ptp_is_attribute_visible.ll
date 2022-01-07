; ModuleID = '/home/carl/AnghaBench/linux/drivers/ptp/extr_ptp_sysfs.c_ptp_is_attribute_visible.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ptp/extr_ptp_sysfs.c_ptp_is_attribute_visible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.attribute }
%struct.attribute = type { i64 }
%struct.TYPE_7__ = type { %struct.attribute }
%struct.TYPE_6__ = type { %struct.attribute }
%struct.TYPE_5__ = type { %struct.attribute }
%struct.kobject = type { i32 }
%struct.device = type { i32 }
%struct.ptp_clock = type { %struct.ptp_clock_info* }
%struct.ptp_clock_info = type { i32, i32, i32 }

@dev_attr_extts_enable = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@dev_attr_fifo = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@dev_attr_period = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@dev_attr_pps_enable = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kobject*, %struct.attribute*, i32)* @ptp_is_attribute_visible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ptp_is_attribute_visible(%struct.kobject* %0, %struct.attribute* %1, i32 %2) #0 {
  %4 = alloca %struct.kobject*, align 8
  %5 = alloca %struct.attribute*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.ptp_clock*, align 8
  %9 = alloca %struct.ptp_clock_info*, align 8
  %10 = alloca i64, align 8
  store %struct.kobject* %0, %struct.kobject** %4, align 8
  store %struct.attribute* %1, %struct.attribute** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.kobject*, %struct.kobject** %4, align 8
  %12 = call %struct.device* @kobj_to_dev(%struct.kobject* %11)
  store %struct.device* %12, %struct.device** %7, align 8
  %13 = load %struct.device*, %struct.device** %7, align 8
  %14 = call %struct.ptp_clock* @dev_get_drvdata(%struct.device* %13)
  store %struct.ptp_clock* %14, %struct.ptp_clock** %8, align 8
  %15 = load %struct.ptp_clock*, %struct.ptp_clock** %8, align 8
  %16 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %15, i32 0, i32 0
  %17 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %16, align 8
  store %struct.ptp_clock_info* %17, %struct.ptp_clock_info** %9, align 8
  %18 = load %struct.attribute*, %struct.attribute** %5, align 8
  %19 = getelementptr inbounds %struct.attribute, %struct.attribute* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %10, align 8
  %21 = load %struct.attribute*, %struct.attribute** %5, align 8
  %22 = icmp eq %struct.attribute* %21, getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dev_attr_extts_enable, i32 0, i32 0)
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load %struct.attribute*, %struct.attribute** %5, align 8
  %25 = icmp eq %struct.attribute* %24, getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @dev_attr_fifo, i32 0, i32 0)
  br i1 %25, label %26, label %33

26:                                               ; preds = %23, %3
  %27 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %9, align 8
  %28 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  store i64 0, i64* %10, align 8
  br label %32

32:                                               ; preds = %31, %26
  br label %55

33:                                               ; preds = %23
  %34 = load %struct.attribute*, %struct.attribute** %5, align 8
  %35 = icmp eq %struct.attribute* %34, getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dev_attr_period, i32 0, i32 0)
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %9, align 8
  %38 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  store i64 0, i64* %10, align 8
  br label %42

42:                                               ; preds = %41, %36
  br label %54

43:                                               ; preds = %33
  %44 = load %struct.attribute*, %struct.attribute** %5, align 8
  %45 = icmp eq %struct.attribute* %44, getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @dev_attr_pps_enable, i32 0, i32 0)
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load %struct.ptp_clock_info*, %struct.ptp_clock_info** %9, align 8
  %48 = getelementptr inbounds %struct.ptp_clock_info, %struct.ptp_clock_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  store i64 0, i64* %10, align 8
  br label %52

52:                                               ; preds = %51, %46
  br label %53

53:                                               ; preds = %52, %43
  br label %54

54:                                               ; preds = %53, %42
  br label %55

55:                                               ; preds = %54, %32
  %56 = load i64, i64* %10, align 8
  ret i64 %56
}

declare dso_local %struct.device* @kobj_to_dev(%struct.kobject*) #1

declare dso_local %struct.ptp_clock* @dev_get_drvdata(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
