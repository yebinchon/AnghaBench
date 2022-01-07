; ModuleID = '/home/carl/AnghaBench/linux/drivers/ptp/extr_ptp_sysfs.c_extts_fifo_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ptp/extr_ptp_sysfs.c_extts_fifo_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ptp_clock = type { i32, %struct.timestamp_event_queue }
%struct.timestamp_event_queue = type { i64, i32, %struct.ptp_extts_event* }
%struct.ptp_extts_event = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@ERESTARTSYS = common dso_local global i32 0, align 4
@PTP_MAX_TIMESTAMPS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%u %lld %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @extts_fifo_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extts_fifo_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ptp_clock*, align 8
  %9 = alloca %struct.timestamp_event_queue*, align 8
  %10 = alloca %struct.ptp_extts_event, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.ptp_clock* @dev_get_drvdata(%struct.device* %14)
  store %struct.ptp_clock* %15, %struct.ptp_clock** %8, align 8
  %16 = load %struct.ptp_clock*, %struct.ptp_clock** %8, align 8
  %17 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %16, i32 0, i32 1
  store %struct.timestamp_event_queue* %17, %struct.timestamp_event_queue** %9, align 8
  store i32 0, i32* %13, align 4
  %18 = call i32 @memset(%struct.ptp_extts_event* %10, i32 0, i32 12)
  %19 = load %struct.ptp_clock*, %struct.ptp_clock** %8, align 8
  %20 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %19, i32 0, i32 0
  %21 = call i64 @mutex_lock_interruptible(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @ERESTARTSYS, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %79

26:                                               ; preds = %3
  %27 = load %struct.timestamp_event_queue*, %struct.timestamp_event_queue** %9, align 8
  %28 = getelementptr inbounds %struct.timestamp_event_queue, %struct.timestamp_event_queue* %27, i32 0, i32 1
  %29 = load i64, i64* %11, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.timestamp_event_queue*, %struct.timestamp_event_queue** %9, align 8
  %32 = call i64 @queue_cnt(%struct.timestamp_event_queue* %31)
  store i64 %32, i64* %12, align 8
  %33 = load i64, i64* %12, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %26
  %36 = load %struct.timestamp_event_queue*, %struct.timestamp_event_queue** %9, align 8
  %37 = getelementptr inbounds %struct.timestamp_event_queue, %struct.timestamp_event_queue* %36, i32 0, i32 2
  %38 = load %struct.ptp_extts_event*, %struct.ptp_extts_event** %37, align 8
  %39 = load %struct.timestamp_event_queue*, %struct.timestamp_event_queue** %9, align 8
  %40 = getelementptr inbounds %struct.timestamp_event_queue, %struct.timestamp_event_queue* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.ptp_extts_event, %struct.ptp_extts_event* %38, i64 %41
  %43 = bitcast %struct.ptp_extts_event* %10 to i8*
  %44 = bitcast %struct.ptp_extts_event* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %43, i8* align 4 %44, i64 12, i1 false)
  %45 = load %struct.timestamp_event_queue*, %struct.timestamp_event_queue** %9, align 8
  %46 = getelementptr inbounds %struct.timestamp_event_queue, %struct.timestamp_event_queue* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add i64 %47, 1
  %49 = load i32, i32* @PTP_MAX_TIMESTAMPS, align 4
  %50 = sext i32 %49 to i64
  %51 = urem i64 %48, %50
  %52 = load %struct.timestamp_event_queue*, %struct.timestamp_event_queue** %9, align 8
  %53 = getelementptr inbounds %struct.timestamp_event_queue, %struct.timestamp_event_queue* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %35, %26
  %55 = load %struct.timestamp_event_queue*, %struct.timestamp_event_queue** %9, align 8
  %56 = getelementptr inbounds %struct.timestamp_event_queue, %struct.timestamp_event_queue* %55, i32 0, i32 1
  %57 = load i64, i64* %11, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  %59 = load i64, i64* %12, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %54
  br label %74

62:                                               ; preds = %54
  %63 = load i8*, i8** %7, align 8
  %64 = load i32, i32* @PAGE_SIZE, align 4
  %65 = getelementptr inbounds %struct.ptp_extts_event, %struct.ptp_extts_event* %10, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.ptp_extts_event, %struct.ptp_extts_event* %10, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.ptp_extts_event, %struct.ptp_extts_event* %10, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @snprintf(i8* %63, i32 %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %69, i32 %72)
  store i32 %73, i32* %13, align 4
  br label %74

74:                                               ; preds = %62, %61
  %75 = load %struct.ptp_clock*, %struct.ptp_clock** %8, align 8
  %76 = getelementptr inbounds %struct.ptp_clock, %struct.ptp_clock* %75, i32 0, i32 0
  %77 = call i32 @mutex_unlock(i32* %76)
  %78 = load i32, i32* %13, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %74, %23
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local %struct.ptp_clock* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @memset(%struct.ptp_extts_event*, i32, i32) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @queue_cnt(%struct.timestamp_event_queue*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
