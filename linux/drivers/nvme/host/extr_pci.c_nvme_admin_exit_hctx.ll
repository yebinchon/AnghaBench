; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_admin_exit_hctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_admin_exit_hctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_hw_ctx = type { %struct.nvme_queue* }
%struct.nvme_queue = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blk_mq_hw_ctx*, i32)* @nvme_admin_exit_hctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_admin_exit_hctx(%struct.blk_mq_hw_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.blk_mq_hw_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvme_queue*, align 8
  store %struct.blk_mq_hw_ctx* %0, %struct.blk_mq_hw_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %6, i32 0, i32 0
  %8 = load %struct.nvme_queue*, %struct.nvme_queue** %7, align 8
  store %struct.nvme_queue* %8, %struct.nvme_queue** %5, align 8
  %9 = load %struct.nvme_queue*, %struct.nvme_queue** %5, align 8
  %10 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %9, i32 0, i32 0
  store i32* null, i32** %10, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
