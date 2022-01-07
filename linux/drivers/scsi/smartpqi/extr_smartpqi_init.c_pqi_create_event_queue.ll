; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_create_event_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_create_event_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { i64, %struct.pqi_event_queue }
%struct.pqi_event_queue = type { i32, i32, i64, i64, i64 }
%struct.pqi_general_admin_request = type { %struct.TYPE_8__, i32, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.pqi_general_admin_response = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@PQI_REQUEST_IU_GENERAL_ADMIN = common dso_local global i32 0, align 4
@PQI_GENERAL_ADMIN_IU_LENGTH = common dso_local global i32 0, align 4
@PQI_GENERAL_ADMIN_FUNCTION_CREATE_OQ = common dso_local global i32 0, align 4
@PQI_NUM_EVENT_QUEUE_ELEMENTS = common dso_local global i32 0, align 4
@PQI_EVENT_OQ_ELEMENT_LENGTH = common dso_local global i32 0, align 4
@PQI_PROTOCOL_SOP = common dso_local global i32 0, align 4
@PQI_DEVICE_REGISTERS_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pqi_ctrl_info*)* @pqi_create_event_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqi_create_event_queue(%struct.pqi_ctrl_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pqi_ctrl_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pqi_event_queue*, align 8
  %6 = alloca %struct.pqi_general_admin_request, align 4
  %7 = alloca %struct.pqi_general_admin_response, align 4
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %3, align 8
  %8 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %9 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %8, i32 0, i32 1
  store %struct.pqi_event_queue* %9, %struct.pqi_event_queue** %5, align 8
  %10 = call i32 @memset(%struct.pqi_general_admin_request* %6, i32 0, i32 40)
  %11 = load i32, i32* @PQI_REQUEST_IU_GENERAL_ADMIN, align 4
  %12 = getelementptr inbounds %struct.pqi_general_admin_request, %struct.pqi_general_admin_request* %6, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @PQI_GENERAL_ADMIN_IU_LENGTH, align 4
  %15 = getelementptr inbounds %struct.pqi_general_admin_request, %struct.pqi_general_admin_request* %6, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = call i32 @put_unaligned_le16(i32 %14, i32* %16)
  %18 = load i32, i32* @PQI_GENERAL_ADMIN_FUNCTION_CREATE_OQ, align 4
  %19 = getelementptr inbounds %struct.pqi_general_admin_request, %struct.pqi_general_admin_request* %6, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = load %struct.pqi_event_queue*, %struct.pqi_event_queue** %5, align 8
  %21 = getelementptr inbounds %struct.pqi_event_queue, %struct.pqi_event_queue* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds %struct.pqi_general_admin_request, %struct.pqi_general_admin_request* %6, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 6
  %26 = call i32 @put_unaligned_le16(i32 %22, i32* %25)
  %27 = load %struct.pqi_event_queue*, %struct.pqi_event_queue** %5, align 8
  %28 = getelementptr inbounds %struct.pqi_event_queue, %struct.pqi_event_queue* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = getelementptr inbounds %struct.pqi_general_admin_request, %struct.pqi_general_admin_request* %6, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 5
  %34 = call i32 @put_unaligned_le64(i32 %30, i32* %33)
  %35 = load %struct.pqi_event_queue*, %struct.pqi_event_queue** %5, align 8
  %36 = getelementptr inbounds %struct.pqi_event_queue, %struct.pqi_event_queue* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = getelementptr inbounds %struct.pqi_general_admin_request, %struct.pqi_general_admin_request* %6, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 4
  %42 = call i32 @put_unaligned_le64(i32 %38, i32* %41)
  %43 = load i32, i32* @PQI_NUM_EVENT_QUEUE_ELEMENTS, align 4
  %44 = getelementptr inbounds %struct.pqi_general_admin_request, %struct.pqi_general_admin_request* %6, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 3
  %47 = call i32 @put_unaligned_le16(i32 %43, i32* %46)
  %48 = load i32, i32* @PQI_EVENT_OQ_ELEMENT_LENGTH, align 4
  %49 = sdiv i32 %48, 16
  %50 = getelementptr inbounds %struct.pqi_general_admin_request, %struct.pqi_general_admin_request* %6, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  %53 = call i32 @put_unaligned_le16(i32 %49, i32* %52)
  %54 = load i32, i32* @PQI_PROTOCOL_SOP, align 4
  %55 = getelementptr inbounds %struct.pqi_general_admin_request, %struct.pqi_general_admin_request* %6, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  store i32 %54, i32* %57, align 4
  %58 = load %struct.pqi_event_queue*, %struct.pqi_event_queue** %5, align 8
  %59 = getelementptr inbounds %struct.pqi_event_queue, %struct.pqi_event_queue* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.pqi_general_admin_request, %struct.pqi_general_admin_request* %6, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = call i32 @put_unaligned_le16(i32 %60, i32* %63)
  %65 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %66 = call i32 @pqi_submit_admin_request_synchronous(%struct.pqi_ctrl_info* %65, %struct.pqi_general_admin_request* %6, %struct.pqi_general_admin_response* %7)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %1
  %70 = load i32, i32* %4, align 4
  store i32 %70, i32* %2, align 4
  br label %84

71:                                               ; preds = %1
  %72 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %73 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @PQI_DEVICE_REGISTERS_OFFSET, align 8
  %76 = add nsw i64 %74, %75
  %77 = getelementptr inbounds %struct.pqi_general_admin_response, %struct.pqi_general_admin_response* %7, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = call i64 @get_unaligned_le64(i32* %79)
  %81 = add nsw i64 %76, %80
  %82 = load %struct.pqi_event_queue*, %struct.pqi_event_queue** %5, align 8
  %83 = getelementptr inbounds %struct.pqi_event_queue, %struct.pqi_event_queue* %82, i32 0, i32 2
  store i64 %81, i64* %83, align 8
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %71, %69
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @memset(%struct.pqi_general_admin_request*, i32, i32) #1

declare dso_local i32 @put_unaligned_le16(i32, i32*) #1

declare dso_local i32 @put_unaligned_le64(i32, i32*) #1

declare dso_local i32 @pqi_submit_admin_request_synchronous(%struct.pqi_ctrl_info*, %struct.pqi_general_admin_request*, %struct.pqi_general_admin_response*) #1

declare dso_local i64 @get_unaligned_le64(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
