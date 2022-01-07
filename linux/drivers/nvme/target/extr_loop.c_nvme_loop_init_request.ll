; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_loop.c_nvme_loop_init_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_loop.c_nvme_loop_init_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_tag_set = type { %struct.nvme_loop_ctrl* }
%struct.nvme_loop_ctrl = type { %struct.blk_mq_tag_set, i32 }
%struct.request = type { i32 }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blk_mq_tag_set*, %struct.request*, i32, i32)* @nvme_loop_init_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_loop_init_request(%struct.blk_mq_tag_set* %0, %struct.request* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.blk_mq_tag_set*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvme_loop_ctrl*, align 8
  store %struct.blk_mq_tag_set* %0, %struct.blk_mq_tag_set** %5, align 8
  store %struct.request* %1, %struct.request** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %5, align 8
  %11 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %10, i32 0, i32 0
  %12 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %11, align 8
  store %struct.nvme_loop_ctrl* %12, %struct.nvme_loop_ctrl** %9, align 8
  %13 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %9, align 8
  %14 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %13, i32 0, i32 1
  %15 = load %struct.request*, %struct.request** %6, align 8
  %16 = call %struct.TYPE_2__* @nvme_req(%struct.request* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32* %14, i32** %17, align 8
  %18 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %9, align 8
  %19 = load %struct.request*, %struct.request** %6, align 8
  %20 = call i32 @blk_mq_rq_to_pdu(%struct.request* %19)
  %21 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %5, align 8
  %22 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %9, align 8
  %23 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %22, i32 0, i32 0
  %24 = icmp eq %struct.blk_mq_tag_set* %21, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i32, i32* %7, align 4
  %27 = add i32 %26, 1
  br label %29

28:                                               ; preds = %4
  br label %29

29:                                               ; preds = %28, %25
  %30 = phi i32 [ %27, %25 ], [ 0, %28 ]
  %31 = call i32 @nvme_loop_init_iod(%struct.nvme_loop_ctrl* %18, i32 %20, i32 %30)
  ret i32 %31
}

declare dso_local %struct.TYPE_2__* @nvme_req(%struct.request*) #1

declare dso_local i32 @nvme_loop_init_iod(%struct.nvme_loop_ctrl*, i32, i32) #1

declare dso_local i32 @blk_mq_rq_to_pdu(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
