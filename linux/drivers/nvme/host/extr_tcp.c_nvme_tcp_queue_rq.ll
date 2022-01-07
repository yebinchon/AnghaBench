; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_queue_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_queue_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_hw_ctx = type { %struct.nvme_tcp_queue*, %struct.TYPE_4__* }
%struct.nvme_tcp_queue = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.nvme_ns* }
%struct.nvme_ns = type { i32 }
%struct.blk_mq_queue_data = type { %struct.request* }
%struct.request = type { i32 }
%struct.nvme_tcp_request = type { i32 }

@NVME_TCP_Q_LIVE = common dso_local global i32 0, align 4
@BLK_STS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blk_mq_hw_ctx*, %struct.blk_mq_queue_data*)* @nvme_tcp_queue_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_tcp_queue_rq(%struct.blk_mq_hw_ctx* %0, %struct.blk_mq_queue_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.blk_mq_hw_ctx*, align 8
  %5 = alloca %struct.blk_mq_queue_data*, align 8
  %6 = alloca %struct.nvme_ns*, align 8
  %7 = alloca %struct.nvme_tcp_queue*, align 8
  %8 = alloca %struct.request*, align 8
  %9 = alloca %struct.nvme_tcp_request*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.blk_mq_hw_ctx* %0, %struct.blk_mq_hw_ctx** %4, align 8
  store %struct.blk_mq_queue_data* %1, %struct.blk_mq_queue_data** %5, align 8
  %12 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %13 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.nvme_ns*, %struct.nvme_ns** %15, align 8
  store %struct.nvme_ns* %16, %struct.nvme_ns** %6, align 8
  %17 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %18 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %17, i32 0, i32 0
  %19 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %18, align 8
  store %struct.nvme_tcp_queue* %19, %struct.nvme_tcp_queue** %7, align 8
  %20 = load %struct.blk_mq_queue_data*, %struct.blk_mq_queue_data** %5, align 8
  %21 = getelementptr inbounds %struct.blk_mq_queue_data, %struct.blk_mq_queue_data* %20, i32 0, i32 0
  %22 = load %struct.request*, %struct.request** %21, align 8
  store %struct.request* %22, %struct.request** %8, align 8
  %23 = load %struct.request*, %struct.request** %8, align 8
  %24 = call %struct.nvme_tcp_request* @blk_mq_rq_to_pdu(%struct.request* %23)
  store %struct.nvme_tcp_request* %24, %struct.nvme_tcp_request** %9, align 8
  %25 = load i32, i32* @NVME_TCP_Q_LIVE, align 4
  %26 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %7, align 8
  %27 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %26, i32 0, i32 1
  %28 = call i32 @test_bit(i32 %25, i32* %27)
  store i32 %28, i32* %10, align 4
  %29 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %7, align 8
  %30 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load %struct.request*, %struct.request** %8, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @nvmf_check_ready(i32* %32, %struct.request* %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %2
  %38 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %7, align 8
  %39 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load %struct.request*, %struct.request** %8, align 8
  %43 = call i32 @nvmf_fail_nonready_command(i32* %41, %struct.request* %42)
  store i32 %43, i32* %3, align 4
  br label %59

44:                                               ; preds = %2
  %45 = load %struct.nvme_ns*, %struct.nvme_ns** %6, align 8
  %46 = load %struct.request*, %struct.request** %8, align 8
  %47 = call i32 @nvme_tcp_setup_cmd_pdu(%struct.nvme_ns* %45, %struct.request* %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* %11, align 4
  store i32 %52, i32* %3, align 4
  br label %59

53:                                               ; preds = %44
  %54 = load %struct.request*, %struct.request** %8, align 8
  %55 = call i32 @blk_mq_start_request(%struct.request* %54)
  %56 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %9, align 8
  %57 = call i32 @nvme_tcp_queue_request(%struct.nvme_tcp_request* %56)
  %58 = load i32, i32* @BLK_STS_OK, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %53, %51, %37
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.nvme_tcp_request* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @nvmf_check_ready(i32*, %struct.request*, i32) #1

declare dso_local i32 @nvmf_fail_nonready_command(i32*, %struct.request*) #1

declare dso_local i32 @nvme_tcp_setup_cmd_pdu(%struct.nvme_ns*, %struct.request*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @blk_mq_start_request(%struct.request*) #1

declare dso_local i32 @nvme_tcp_queue_request(%struct.nvme_tcp_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
