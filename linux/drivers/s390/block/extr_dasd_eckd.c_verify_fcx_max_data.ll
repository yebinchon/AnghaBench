; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_verify_fcx_max_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_verify_fcx_max_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { %struct.TYPE_2__*, %struct.dasd_eckd_private* }
%struct.TYPE_2__ = type { i32 }
%struct.dasd_eckd_private = type { i32 }

@.str = private unnamed_addr constant [84 x i8] c"Detecting the maximum data size for zHPF requests failed (rc=%d) for a new path %x\0A\00", align 1
@FCX_MAX_DATA_FACTOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [92 x i8] c"The maximum data size for zHPF requests %u on a new path %x is below the active maximum %u\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_device*, i32)* @verify_fcx_max_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_fcx_max_data(%struct.dasd_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dasd_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dasd_eckd_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dasd_device* %0, %struct.dasd_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %10 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %9, i32 0, i32 1
  %11 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %10, align 8
  store %struct.dasd_eckd_private* %11, %struct.dasd_eckd_private** %6, align 8
  %12 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %6, align 8
  %13 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %56

16:                                               ; preds = %2
  %17 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %18 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @ccw_device_get_mdc(%struct.TYPE_2__* %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %16
  %25 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %26 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 (i32*, i8*, i32, i32, ...) @dev_warn(i32* %28, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %57

33:                                               ; preds = %16
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @FCX_MAX_DATA_FACTOR, align 4
  %36 = mul nsw i32 %34, %35
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %6, align 8
  %39 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %33
  %43 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %44 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %6, align 8
  %50 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i32*, i8*, i32, i32, ...) @dev_warn(i32* %46, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %48, i32 %51)
  %53 = load i32, i32* @EACCES, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %57

55:                                               ; preds = %33
  br label %56

56:                                               ; preds = %55, %2
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %42, %24
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @ccw_device_get_mdc(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
