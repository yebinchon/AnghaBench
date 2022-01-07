; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_handle_hpf_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_handle_hpf_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { %struct.dasd_eckd_private* }
%struct.dasd_eckd_private = type { i32 }
%struct.irb = type { %struct.TYPE_6__, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@DBF_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Trying to disable HPF for a non HPF device\00", align 1
@SCSW_SESQ_DEV_NOFCX = common dso_local global i64 0, align 8
@SCSW_SESQ_PATH_NOFCX = common dso_local global i64 0, align 8
@DASD_STOPPED_NOT_ACC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dasd_device*, %struct.irb*)* @dasd_eckd_handle_hpf_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dasd_eckd_handle_hpf_error(%struct.dasd_device* %0, %struct.irb* %1) #0 {
  %3 = alloca %struct.dasd_device*, align 8
  %4 = alloca %struct.irb*, align 8
  %5 = alloca %struct.dasd_eckd_private*, align 8
  store %struct.dasd_device* %0, %struct.dasd_device** %3, align 8
  store %struct.irb* %1, %struct.irb** %4, align 8
  %6 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %7 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %6, i32 0, i32 0
  %8 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %7, align 8
  store %struct.dasd_eckd_private* %8, %struct.dasd_eckd_private** %5, align 8
  %9 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %10 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @DBF_WARNING, align 4
  %15 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %16 = call i32 @DBF_DEV_EVENT(i32 %14, %struct.dasd_device* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %60

17:                                               ; preds = %2
  %18 = load %struct.irb*, %struct.irb** %4, align 8
  %19 = getelementptr inbounds %struct.irb, %struct.irb* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SCSW_SESQ_DEV_NOFCX, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %27 = call i32 @dasd_eckd_disable_hpf_device(%struct.dasd_device* %26)
  br label %54

28:                                               ; preds = %17
  %29 = load %struct.irb*, %struct.irb** %4, align 8
  %30 = getelementptr inbounds %struct.irb, %struct.irb* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SCSW_SESQ_PATH_NOFCX, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %53

36:                                               ; preds = %28
  %37 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %38 = load %struct.irb*, %struct.irb** %4, align 8
  %39 = getelementptr inbounds %struct.irb, %struct.irb* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @dasd_eckd_disable_hpf_path(%struct.dasd_device* %37, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  br label %60

46:                                               ; preds = %36
  %47 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %48 = call i32 @dasd_eckd_disable_hpf_device(%struct.dasd_device* %47)
  %49 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %50 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %51 = call i32 @dasd_path_get_hpfpm(%struct.dasd_device* %50)
  %52 = call i32 @dasd_path_set_tbvpm(%struct.dasd_device* %49, i32 %51)
  br label %53

53:                                               ; preds = %46, %28
  br label %54

54:                                               ; preds = %53, %25
  %55 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %56 = load i32, i32* @DASD_STOPPED_NOT_ACC, align 4
  %57 = call i32 @dasd_device_set_stop_bits(%struct.dasd_device* %55, i32 %56)
  %58 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %59 = call i32 @dasd_schedule_requeue(%struct.dasd_device* %58)
  br label %60

60:                                               ; preds = %54, %45, %13
  ret void
}

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.dasd_device*, i8*, i8*) #1

declare dso_local i32 @dasd_eckd_disable_hpf_device(%struct.dasd_device*) #1

declare dso_local i64 @dasd_eckd_disable_hpf_path(%struct.dasd_device*, i32) #1

declare dso_local i32 @dasd_path_set_tbvpm(%struct.dasd_device*, i32) #1

declare dso_local i32 @dasd_path_get_hpfpm(%struct.dasd_device*) #1

declare dso_local i32 @dasd_device_set_stop_bits(%struct.dasd_device*, i32) #1

declare dso_local i32 @dasd_schedule_requeue(%struct.dasd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
