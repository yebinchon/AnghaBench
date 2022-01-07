; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_init_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_init_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_tag_set = type { %struct.nvme_tcp_ctrl* }
%struct.nvme_tcp_ctrl = type { i32, %struct.nvme_tcp_queue*, %struct.blk_mq_tag_set }
%struct.nvme_tcp_queue = type { i32 }
%struct.request = type { i32 }
%struct.nvme_tcp_request = type { %struct.nvme_tcp_queue*, i32 }
%struct.TYPE_2__ = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blk_mq_tag_set*, %struct.request*, i32, i32)* @nvme_tcp_init_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_tcp_init_request(%struct.blk_mq_tag_set* %0, %struct.request* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.blk_mq_tag_set*, align 8
  %7 = alloca %struct.request*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nvme_tcp_ctrl*, align 8
  %11 = alloca %struct.nvme_tcp_request*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nvme_tcp_queue*, align 8
  %14 = alloca i64, align 8
  store %struct.blk_mq_tag_set* %0, %struct.blk_mq_tag_set** %6, align 8
  store %struct.request* %1, %struct.request** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %6, align 8
  %16 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %15, i32 0, i32 0
  %17 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %16, align 8
  store %struct.nvme_tcp_ctrl* %17, %struct.nvme_tcp_ctrl** %10, align 8
  %18 = load %struct.request*, %struct.request** %7, align 8
  %19 = call %struct.nvme_tcp_request* @blk_mq_rq_to_pdu(%struct.request* %18)
  store %struct.nvme_tcp_request* %19, %struct.nvme_tcp_request** %11, align 8
  %20 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %6, align 8
  %21 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %10, align 8
  %22 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %21, i32 0, i32 2
  %23 = icmp eq %struct.blk_mq_tag_set* %20, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32, i32* %8, align 4
  %26 = add i32 %25, 1
  br label %28

27:                                               ; preds = %4
  br label %28

28:                                               ; preds = %27, %24
  %29 = phi i32 [ %26, %24 ], [ 0, %27 ]
  store i32 %29, i32* %12, align 4
  %30 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %10, align 8
  %31 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %30, i32 0, i32 1
  %32 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %31, align 8
  %33 = load i32, i32* %12, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %32, i64 %34
  store %struct.nvme_tcp_queue* %35, %struct.nvme_tcp_queue** %13, align 8
  %36 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %13, align 8
  %37 = call i64 @nvme_tcp_hdgst_len(%struct.nvme_tcp_queue* %36)
  store i64 %37, i64* %14, align 8
  %38 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %13, align 8
  %39 = getelementptr inbounds %struct.nvme_tcp_queue, %struct.nvme_tcp_queue* %38, i32 0, i32 0
  %40 = load i64, i64* %14, align 8
  %41 = add i64 4, %40
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = load i32, i32* @__GFP_ZERO, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @page_frag_alloc(i32* %39, i64 %41, i32 %44)
  %46 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %11, align 8
  %47 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %11, align 8
  %49 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %28
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %64

55:                                               ; preds = %28
  %56 = load %struct.nvme_tcp_queue*, %struct.nvme_tcp_queue** %13, align 8
  %57 = load %struct.nvme_tcp_request*, %struct.nvme_tcp_request** %11, align 8
  %58 = getelementptr inbounds %struct.nvme_tcp_request, %struct.nvme_tcp_request* %57, i32 0, i32 0
  store %struct.nvme_tcp_queue* %56, %struct.nvme_tcp_queue** %58, align 8
  %59 = load %struct.nvme_tcp_ctrl*, %struct.nvme_tcp_ctrl** %10, align 8
  %60 = getelementptr inbounds %struct.nvme_tcp_ctrl, %struct.nvme_tcp_ctrl* %59, i32 0, i32 0
  %61 = load %struct.request*, %struct.request** %7, align 8
  %62 = call %struct.TYPE_2__* @nvme_req(%struct.request* %61)
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i32* %60, i32** %63, align 8
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %55, %52
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local %struct.nvme_tcp_request* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i64 @nvme_tcp_hdgst_len(%struct.nvme_tcp_queue*) #1

declare dso_local i32 @page_frag_alloc(i32*, i64, i32) #1

declare dso_local %struct.TYPE_2__* @nvme_req(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
