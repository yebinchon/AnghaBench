; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_ofa_capture_event_payload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_ofa_capture_event_payload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_event = type { i64, i32, i32, i32 }
%struct.pqi_event_response = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@PQI_EVENT_TYPE_OFA = common dso_local global i64 0, align 8
@PQI_EVENT_OFA_MEMORY_ALLOCATION = common dso_local global i64 0, align 8
@PQI_EVENT_OFA_CANCELLED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pqi_event*, %struct.pqi_event_response*)* @pqi_ofa_capture_event_payload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pqi_ofa_capture_event_payload(%struct.pqi_event* %0, %struct.pqi_event_response* %1) #0 {
  %3 = alloca %struct.pqi_event*, align 8
  %4 = alloca %struct.pqi_event_response*, align 8
  %5 = alloca i64, align 8
  store %struct.pqi_event* %0, %struct.pqi_event** %3, align 8
  store %struct.pqi_event_response* %1, %struct.pqi_event_response** %4, align 8
  %6 = load %struct.pqi_event*, %struct.pqi_event** %3, align 8
  %7 = getelementptr inbounds %struct.pqi_event, %struct.pqi_event* %6, i32 0, i32 3
  %8 = call i64 @get_unaligned_le16(i32* %7)
  store i64 %8, i64* %5, align 8
  %9 = load %struct.pqi_event*, %struct.pqi_event** %3, align 8
  %10 = getelementptr inbounds %struct.pqi_event, %struct.pqi_event* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PQI_EVENT_TYPE_OFA, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %40

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @PQI_EVENT_OFA_MEMORY_ALLOCATION, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = load %struct.pqi_event_response*, %struct.pqi_event_response** %4, align 8
  %20 = getelementptr inbounds %struct.pqi_event_response, %struct.pqi_event_response* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.pqi_event*, %struct.pqi_event** %3, align 8
  %25 = getelementptr inbounds %struct.pqi_event, %struct.pqi_event* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  br label %39

26:                                               ; preds = %14
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* @PQI_EVENT_OFA_CANCELLED, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %26
  %31 = load %struct.pqi_event_response*, %struct.pqi_event_response** %4, align 8
  %32 = getelementptr inbounds %struct.pqi_event_response, %struct.pqi_event_response* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.pqi_event*, %struct.pqi_event** %3, align 8
  %37 = getelementptr inbounds %struct.pqi_event, %struct.pqi_event* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  br label %38

38:                                               ; preds = %30, %26
  br label %39

39:                                               ; preds = %38, %18
  br label %40

40:                                               ; preds = %39, %2
  ret void
}

declare dso_local i64 @get_unaligned_le16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
