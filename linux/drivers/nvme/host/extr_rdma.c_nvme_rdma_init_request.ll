; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_rdma.c_nvme_rdma_init_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_rdma.c_nvme_rdma_init_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_tag_set = type { %struct.nvme_rdma_ctrl* }
%struct.nvme_rdma_ctrl = type { i32, %struct.nvme_rdma_queue*, %struct.blk_mq_tag_set }
%struct.nvme_rdma_queue = type { i32 }
%struct.request = type { i32 }
%struct.nvme_rdma_request = type { %struct.nvme_rdma_queue*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blk_mq_tag_set*, %struct.request*, i32, i32)* @nvme_rdma_init_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_rdma_init_request(%struct.blk_mq_tag_set* %0, %struct.request* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.blk_mq_tag_set*, align 8
  %7 = alloca %struct.request*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nvme_rdma_ctrl*, align 8
  %11 = alloca %struct.nvme_rdma_request*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nvme_rdma_queue*, align 8
  store %struct.blk_mq_tag_set* %0, %struct.blk_mq_tag_set** %6, align 8
  store %struct.request* %1, %struct.request** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %6, align 8
  %15 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %14, i32 0, i32 0
  %16 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %15, align 8
  store %struct.nvme_rdma_ctrl* %16, %struct.nvme_rdma_ctrl** %10, align 8
  %17 = load %struct.request*, %struct.request** %7, align 8
  %18 = call %struct.nvme_rdma_request* @blk_mq_rq_to_pdu(%struct.request* %17)
  store %struct.nvme_rdma_request* %18, %struct.nvme_rdma_request** %11, align 8
  %19 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %6, align 8
  %20 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %10, align 8
  %21 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %20, i32 0, i32 2
  %22 = icmp eq %struct.blk_mq_tag_set* %19, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  %25 = add i32 %24, 1
  br label %27

26:                                               ; preds = %4
  br label %27

27:                                               ; preds = %26, %23
  %28 = phi i32 [ %25, %23 ], [ 0, %26 ]
  store i32 %28, i32* %12, align 4
  %29 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %10, align 8
  %30 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %29, i32 0, i32 1
  %31 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %30, align 8
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.nvme_rdma_queue, %struct.nvme_rdma_queue* %31, i64 %33
  store %struct.nvme_rdma_queue* %34, %struct.nvme_rdma_queue** %13, align 8
  %35 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %10, align 8
  %36 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %35, i32 0, i32 0
  %37 = load %struct.request*, %struct.request** %7, align 8
  %38 = call %struct.TYPE_4__* @nvme_req(%struct.request* %37)
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32* %36, i32** %39, align 8
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i32 @kzalloc(i32 4, i32 %40)
  %42 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %11, align 8
  %43 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 8
  %45 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %11, align 8
  %46 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %27
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %57

53:                                               ; preds = %27
  %54 = load %struct.nvme_rdma_queue*, %struct.nvme_rdma_queue** %13, align 8
  %55 = load %struct.nvme_rdma_request*, %struct.nvme_rdma_request** %11, align 8
  %56 = getelementptr inbounds %struct.nvme_rdma_request, %struct.nvme_rdma_request* %55, i32 0, i32 0
  store %struct.nvme_rdma_queue* %54, %struct.nvme_rdma_queue** %56, align 8
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %53, %50
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local %struct.nvme_rdma_request* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local %struct.TYPE_4__* @nvme_req(%struct.request*) #1

declare dso_local i32 @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
