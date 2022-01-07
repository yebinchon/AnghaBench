; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c___nvme_fc_init_hctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c___nvme_fc_init_hctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_hw_ctx = type { %struct.nvme_fc_queue* }
%struct.nvme_fc_queue = type { %struct.blk_mq_hw_ctx* }
%struct.nvme_fc_ctrl = type { %struct.nvme_fc_queue* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blk_mq_hw_ctx*, %struct.nvme_fc_ctrl*, i32)* @__nvme_fc_init_hctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__nvme_fc_init_hctx(%struct.blk_mq_hw_ctx* %0, %struct.nvme_fc_ctrl* %1, i32 %2) #0 {
  %4 = alloca %struct.blk_mq_hw_ctx*, align 8
  %5 = alloca %struct.nvme_fc_ctrl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvme_fc_queue*, align 8
  store %struct.blk_mq_hw_ctx* %0, %struct.blk_mq_hw_ctx** %4, align 8
  store %struct.nvme_fc_ctrl* %1, %struct.nvme_fc_ctrl** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %5, align 8
  %9 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %8, i32 0, i32 0
  %10 = load %struct.nvme_fc_queue*, %struct.nvme_fc_queue** %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.nvme_fc_queue, %struct.nvme_fc_queue* %10, i64 %12
  store %struct.nvme_fc_queue* %13, %struct.nvme_fc_queue** %7, align 8
  %14 = load %struct.nvme_fc_queue*, %struct.nvme_fc_queue** %7, align 8
  %15 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %16 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %15, i32 0, i32 0
  store %struct.nvme_fc_queue* %14, %struct.nvme_fc_queue** %16, align 8
  %17 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %18 = load %struct.nvme_fc_queue*, %struct.nvme_fc_queue** %7, align 8
  %19 = getelementptr inbounds %struct.nvme_fc_queue, %struct.nvme_fc_queue* %18, i32 0, i32 0
  store %struct.blk_mq_hw_ctx* %17, %struct.blk_mq_hw_ctx** %19, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
