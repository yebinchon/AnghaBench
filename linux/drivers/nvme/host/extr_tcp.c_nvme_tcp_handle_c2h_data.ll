; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_handle_c2h_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_handle_c2h_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_tcp_queue = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.nvme_tcp_data_pdu = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.request = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"queue %d tag %#x not found\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"queue %d tag %#x unexpected data\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@NVME_TCP_F_DATA_SUCCESS = common dso_local global i32 0, align 4
@NVME_TCP_F_DATA_LAST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"queue %d tag %#x SUCCESS set but not last PDU\0A\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_tcp_queue*, %struct.nvme_tcp_data_pdu*)* @nvme_tcp_handle_c2h_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_tcp_handle_c2h_data(%struct.nvme_tcp_queue* %0, %struct.nvme_tcp_data_pdu* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvme_tcp_queue*, align 8
  %5 = alloca %struct.nvme_tcp_data_pdu*, align 8
  %6 = alloca %struct.request*, align 8
  store %struct.nvme_tcp_queue* %0, %struct.nvme_tcp_queue** %4, align 8
  store %struct.nvme_tcp_data_pdu* %1, %struct.nvme_tcp_data_pdu** %5, align 8
  %7 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %4, align 8
  %8 = call i32 @nvme_tcp_tagset(%struct.nvme_tcp_queue* %7)
  %9 = load %struct.nvme_tcp_data_pdu*, %struct.nvme_tcp_data_pdu** %5, align 8
  %10 = getelementptr inbounds %struct.nvme_tcp_data_pdu, %struct.nvme_tcp_data_pdu* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.request* @blk_mq_tag_to_rq(i32 %8, i32 %11)
  store %struct.request* %12, %struct.request** %6, align 8
  %13 = load %struct.request*, %struct.request** %6, align 8
  %14 = icmp ne %struct.request* %13, null
  br i1 %14, label %30, label %15

15:                                               ; preds = %2
  %16 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %4, align 8
  %17 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %4, align 8
  %23 = call i32 @nvme_tcp_queue_id(%struct.nvme_tcp_queue* %22)
  %24 = load %struct.nvme_tcp_data_pdu*, %struct.nvme_tcp_data_pdu** %5, align 8
  %25 = getelementptr inbounds %struct.nvme_tcp_data_pdu, %struct.nvme_tcp_data_pdu* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26)
  %28 = load i32, i32* @ENOENT, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %96

30:                                               ; preds = %2
  %31 = load %struct.request*, %struct.request** %6, align 8
  %32 = call i32 @blk_rq_payload_bytes(%struct.request* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %49, label %34

34:                                               ; preds = %30
  %35 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %4, align 8
  %36 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %4, align 8
  %42 = call i32 @nvme_tcp_queue_id(%struct.nvme_tcp_queue* %41)
  %43 = load %struct.request*, %struct.request** %6, align 8
  %44 = getelementptr inbounds %struct.request, %struct.request* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %45)
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %96

49:                                               ; preds = %30
  %50 = load %struct.nvme_tcp_data_pdu*, %struct.nvme_tcp_data_pdu** %5, align 8
  %51 = getelementptr inbounds %struct.nvme_tcp_data_pdu, %struct.nvme_tcp_data_pdu* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @le32_to_cpu(i32 %52)
  %54 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %4, align 8
  %55 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  %56 = load %struct.nvme_tcp_data_pdu*, %struct.nvme_tcp_data_pdu** %5, align 8
  %57 = getelementptr inbounds %struct.nvme_tcp_data_pdu, %struct.nvme_tcp_data_pdu* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @NVME_TCP_F_DATA_SUCCESS, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %95

63:                                               ; preds = %49
  %64 = load %struct.nvme_tcp_data_pdu*, %struct.nvme_tcp_data_pdu** %5, align 8
  %65 = getelementptr inbounds %struct.nvme_tcp_data_pdu, %struct.nvme_tcp_data_pdu* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @NVME_TCP_F_DATA_LAST, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = call i64 @unlikely(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %95

75:                                               ; preds = %63
  %76 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %4, align 8
  %77 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %76, i32 0, i32 0
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %4, align 8
  %83 = call i32 @nvme_tcp_queue_id(%struct.nvme_tcp_queue* %82)
  %84 = load %struct.request*, %struct.request** %6, align 8
  %85 = getelementptr inbounds %struct.request, %struct.request* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @dev_err(i32 %81, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %83, i32 %86)
  %88 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %4, align 8
  %89 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %88, i32 0, i32 0
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = call i32 @nvme_tcp_error_recovery(%struct.TYPE_6__* %91)
  %93 = load i32, i32* @EPROTO, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %96

95:                                               ; preds = %63, %49
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %95, %75, %34, %15
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local %struct.request* @blk_mq_tag_to_rq(i32, i32) #1

declare dso_local i32 @nvme_tcp_tagset(%struct.nvme_tcp_queue*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @nvme_tcp_queue_id(%struct.nvme_tcp_queue*) #1

declare dso_local i32 @blk_rq_payload_bytes(%struct.request*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nvme_tcp_error_recovery(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
