; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_get_fcx_max_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_get_fcx_max_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.dasd_device = type { %struct.TYPE_8__*, %struct.dasd_eckd_private* }
%struct.TYPE_8__ = type { i32 }
%struct.dasd_eckd_private = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32* }

@dasd_nofcx = common dso_local global i64 0, align 8
@css_general_characteristics = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str = private unnamed_addr constant [68 x i8] c"Detecting the maximum supported data size for zHPF requests failed\0A\00", align 1
@FCX_MAX_DATA_FACTOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_device*)* @get_fcx_max_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_fcx_max_data(%struct.dasd_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dasd_device*, align 8
  %4 = alloca %struct.dasd_eckd_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dasd_device* %0, %struct.dasd_device** %3, align 8
  %10 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %11 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %10, i32 0, i32 1
  %12 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %11, align 8
  store %struct.dasd_eckd_private* %12, %struct.dasd_eckd_private** %4, align 8
  %13 = load i64, i64* @dasd_nofcx, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %64

16:                                               ; preds = %1
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @css_general_characteristics, i32 0, i32 0), align 4
  store i32 %17, i32* %5, align 4
  %18 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %4, align 8
  %19 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %18, i32 0, i32 1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 7
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 4
  store i32 %25, i32* %6, align 4
  %26 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %4, align 8
  %27 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 40
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 128
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %16
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br label %41

41:                                               ; preds = %38, %35, %16
  %42 = phi i1 [ false, %35 ], [ false, %16 ], [ %40, %38 ]
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %64

47:                                               ; preds = %41
  %48 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %49 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %48, i32 0, i32 0
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = call i32 @ccw_device_get_mdc(%struct.TYPE_8__* %50, i32 0)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %56 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %55, i32 0, i32 0
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = call i32 @dev_warn(i32* %58, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %64

60:                                               ; preds = %47
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @FCX_MAX_DATA_FACTOR, align 4
  %63 = mul nsw i32 %61, %62
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %60, %54, %46, %15
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @ccw_device_get_mdc(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
