; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/extr_core.c_channel_attr_is_visible.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/extr_core.c_channel_attr_is_visible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.attribute = type { i32 }
%struct.device_attribute = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.device = type { i32 }
%struct.most_channel = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [13 x i8] c"set_dbr_size\00", align 1
@ITYPE_MEDIALB_DIM2 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"set_packets_per_xact\00", align 1
@ITYPE_USB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.attribute*, i32)* @channel_attr_is_visible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @channel_attr_is_visible(%struct.kobject* %0, %struct.attribute* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kobject*, align 8
  %6 = alloca %struct.attribute*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device_attribute*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.most_channel*, align 8
  store %struct.kobject* %0, %struct.kobject** %5, align 8
  store %struct.attribute* %1, %struct.attribute** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.attribute*, %struct.attribute** %6, align 8
  %12 = call %struct.device_attribute* @to_dev_attr(%struct.attribute* %11)
  store %struct.device_attribute* %12, %struct.device_attribute** %8, align 8
  %13 = load %struct.kobject*, %struct.kobject** %5, align 8
  %14 = call %struct.device* @kobj_to_dev(%struct.kobject* %13)
  store %struct.device* %14, %struct.device** %9, align 8
  %15 = load %struct.device*, %struct.device** %9, align 8
  %16 = call %struct.most_channel* @to_channel(%struct.device* %15)
  store %struct.most_channel* %16, %struct.most_channel** %10, align 8
  %17 = load %struct.device_attribute*, %struct.device_attribute** %8, align 8
  %18 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @strcmp(i32 %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %3
  %24 = load %struct.most_channel*, %struct.most_channel** %10, align 8
  %25 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ITYPE_MEDIALB_DIM2, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %52

32:                                               ; preds = %23, %3
  %33 = load %struct.device_attribute*, %struct.device_attribute** %8, align 8
  %34 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @strcmp(i32 %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %32
  %40 = load %struct.most_channel*, %struct.most_channel** %10, align 8
  %41 = getelementptr inbounds %struct.most_channel, %struct.most_channel* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @ITYPE_USB, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %52

48:                                               ; preds = %39, %32
  %49 = load %struct.attribute*, %struct.attribute** %6, align 8
  %50 = getelementptr inbounds %struct.attribute, %struct.attribute* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %48, %47, %31
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.device_attribute* @to_dev_attr(%struct.attribute*) #1

declare dso_local %struct.device* @kobj_to_dev(%struct.kobject*) #1

declare dso_local %struct.most_channel* @to_channel(%struct.device*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
