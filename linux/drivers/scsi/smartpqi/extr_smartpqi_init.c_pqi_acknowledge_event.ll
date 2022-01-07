; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_acknowledge_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_acknowledge_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { i32 }
%struct.pqi_event = type { i32, i32, i32 }
%struct.pqi_event_acknowledge_request = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@PQI_REQUEST_IU_ACKNOWLEDGE_VENDOR_EVENT = common dso_local global i32 0, align 4
@PQI_REQUEST_HEADER_LENGTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pqi_ctrl_info*, %struct.pqi_event*)* @pqi_acknowledge_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pqi_acknowledge_event(%struct.pqi_ctrl_info* %0, %struct.pqi_event* %1) #0 {
  %3 = alloca %struct.pqi_ctrl_info*, align 8
  %4 = alloca %struct.pqi_event*, align 8
  %5 = alloca %struct.pqi_event_acknowledge_request, align 4
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %3, align 8
  store %struct.pqi_event* %1, %struct.pqi_event** %4, align 8
  %6 = call i32 @memset(%struct.pqi_event_acknowledge_request* %5, i32 0, i32 20)
  %7 = load i32, i32* @PQI_REQUEST_IU_ACKNOWLEDGE_VENDOR_EVENT, align 4
  %8 = getelementptr inbounds %struct.pqi_event_acknowledge_request, %struct.pqi_event_acknowledge_request* %5, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  store i32 %7, i32* %9, align 4
  %10 = load i64, i64* @PQI_REQUEST_HEADER_LENGTH, align 8
  %11 = sub i64 20, %10
  %12 = getelementptr inbounds %struct.pqi_event_acknowledge_request, %struct.pqi_event_acknowledge_request* %5, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @put_unaligned_le16(i64 %11, i32* %13)
  %15 = load %struct.pqi_event*, %struct.pqi_event** %4, align 8
  %16 = getelementptr inbounds %struct.pqi_event, %struct.pqi_event* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.pqi_event_acknowledge_request, %struct.pqi_event_acknowledge_request* %5, i32 0, i32 2
  store i32 %17, i32* %18, align 4
  %19 = load %struct.pqi_event*, %struct.pqi_event** %4, align 8
  %20 = getelementptr inbounds %struct.pqi_event, %struct.pqi_event* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.pqi_event_acknowledge_request, %struct.pqi_event_acknowledge_request* %5, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = load %struct.pqi_event*, %struct.pqi_event** %4, align 8
  %24 = getelementptr inbounds %struct.pqi_event, %struct.pqi_event* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.pqi_event_acknowledge_request, %struct.pqi_event_acknowledge_request* %5, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %28 = call i32 @pqi_send_event_ack(%struct.pqi_ctrl_info* %27, %struct.pqi_event_acknowledge_request* %5, i32 20)
  ret void
}

declare dso_local i32 @memset(%struct.pqi_event_acknowledge_request*, i32, i32) #1

declare dso_local i32 @put_unaligned_le16(i64, i32*) #1

declare dso_local i32 @pqi_send_event_ack(%struct.pqi_ctrl_info*, %struct.pqi_event_acknowledge_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
