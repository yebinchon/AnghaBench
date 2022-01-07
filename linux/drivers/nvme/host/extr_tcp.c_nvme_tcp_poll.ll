; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_hw_ctx = type { %struct.nvme_tcp_queue* }
%struct.nvme_tcp_queue = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.sock* }
%struct.sock = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blk_mq_hw_ctx*)* @nvme_tcp_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_tcp_poll(%struct.blk_mq_hw_ctx* %0) #0 {
  %2 = alloca %struct.blk_mq_hw_ctx*, align 8
  %3 = alloca %struct.nvme_tcp_queue*, align 8
  %4 = alloca %struct.sock*, align 8
  store %struct.blk_mq_hw_ctx* %0, %struct.blk_mq_hw_ctx** %2, align 8
  %5 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %2, align 8
  %6 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %5, i32 0, i32 0
  %7 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %6, align 8
  store %struct.nvme_tcp_queue* %7, %struct.nvme_tcp_queue** %3, align 8
  %8 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %3, align 8
  %9 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.sock*, %struct.sock** %11, align 8
  store %struct.sock* %12, %struct.sock** %4, align 8
  %13 = load %struct.sock*, %struct.sock** %4, align 8
  %14 = call i64 @sk_can_busy_loop(%struct.sock* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load %struct.sock*, %struct.sock** %4, align 8
  %18 = getelementptr inbounds %struct.sock, %struct.sock* %17, i32 0, i32 0
  %19 = call i64 @skb_queue_empty_lockless(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load %struct.sock*, %struct.sock** %4, align 8
  %23 = call i32 @sk_busy_loop(%struct.sock* %22, i32 1)
  br label %24

24:                                               ; preds = %21, %16, %1
  %25 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %3, align 8
  %26 = call i32 @nvme_tcp_try_recv(%struct.nvme_tcp_queue* %25)
  %27 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %3, align 8
  %28 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  ret i32 %29
}

declare dso_local i64 @sk_can_busy_loop(%struct.sock*) #1

declare dso_local i64 @skb_queue_empty_lockless(i32*) #1

declare dso_local i32 @sk_busy_loop(%struct.sock*, i32) #1

declare dso_local i32 @nvme_tcp_try_recv(%struct.nvme_tcp_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
