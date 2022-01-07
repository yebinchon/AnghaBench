; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_handle_r2t.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_handle_r2t.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_tcp_queue = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.nvme_tcp_r2t_pdu = type { i32 }
%struct.nvme_tcp_request = type { i64, i32 }
%struct.request = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"queue %d tag %#x not found\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@NVME_TCP_SEND_H2C_PDU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_tcp_queue*, %struct.nvme_tcp_r2t_pdu*)* @nvme_tcp_handle_r2t to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_tcp_handle_r2t(%struct.nvme_tcp_queue* %0, %struct.nvme_tcp_r2t_pdu* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvme_tcp_queue*, align 8
  %5 = alloca %struct.nvme_tcp_r2t_pdu*, align 8
  %6 = alloca %struct.nvme_tcp_request*, align 8
  %7 = alloca %struct.request*, align 8
  %8 = alloca i32, align 4
  store %struct.nvme_tcp_queue* %0, %struct.nvme_tcp_queue** %4, align 8
  store %struct.nvme_tcp_r2t_pdu* %1, %struct.nvme_tcp_r2t_pdu** %5, align 8
  %9 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %4, align 8
  %10 = call i32 @nvme_tcp_tagset(%struct.nvme_tcp_queue* %9)
  %11 = load %struct.nvme_tcp_r2t_pdu*, %struct.nvme_tcp_r2t_pdu** %5, align 8
  %12 = getelementptr inbounds %struct.nvme_tcp_r2t_pdu, %struct.nvme_tcp_r2t_pdu* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.request* @blk_mq_tag_to_rq(i32 %10, i32 %13)
  store %struct.request* %14, %struct.request** %7, align 8
  %15 = load %struct.request*, %struct.request** %7, align 8
  %16 = icmp ne %struct.request* %15, null
  br i1 %16, label %32, label %17

17:                                               ; preds = %2
  %18 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %4, align 8
  %19 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %4, align 8
  %25 = call i32 @nvme_tcp_queue_id(%struct.nvme_tcp_queue* %24)
  %26 = load %struct.nvme_tcp_r2t_pdu*, %struct.nvme_tcp_r2t_pdu** %5, align 8
  %27 = getelementptr inbounds %struct.nvme_tcp_r2t_pdu, %struct.nvme_tcp_r2t_pdu* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28)
  %30 = load i32, i32* @ENOENT, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %51

32:                                               ; preds = %2
  %33 = load %struct.request*, %struct.request** %7, align 8
  %34 = call %struct.nvme_tcp_request* @blk_mq_rq_to_pdu(%struct.request* %33)
  store %struct.nvme_tcp_request* %34, %struct.nvme_tcp_request** %6, align 8
  %35 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %6, align 8
  %36 = load %struct.nvme_tcp_r2t_pdu*, %struct.nvme_tcp_r2t_pdu** %5, align 8
  %37 = call i32 @nvme_tcp_setup_h2c_data_pdu(%struct.nvme_tcp_request* %35, %struct.nvme_tcp_r2t_pdu* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %3, align 4
  br label %51

43:                                               ; preds = %32
  %44 = load i32, i32* @NVME_TCP_SEND_H2C_PDU, align 4
  %45 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %6, align 8
  %46 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  %47 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %6, align 8
  %48 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  %49 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %6, align 8
  %50 = call i32 @nvme_tcp_queue_request(%struct.nvme_tcp_request* %49)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %43, %41, %17
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.request* @blk_mq_tag_to_rq(i32, i32) #1

declare dso_local i32 @nvme_tcp_tagset(%struct.nvme_tcp_queue*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @nvme_tcp_queue_id(%struct.nvme_tcp_queue*) #1

declare dso_local %struct.nvme_tcp_request* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i32 @nvme_tcp_setup_h2c_data_pdu(%struct.nvme_tcp_request*, %struct.nvme_tcp_r2t_pdu*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nvme_tcp_queue_request(%struct.nvme_tcp_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
