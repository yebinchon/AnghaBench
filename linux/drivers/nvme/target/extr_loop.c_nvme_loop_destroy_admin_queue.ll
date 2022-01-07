; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_loop.c_nvme_loop_destroy_admin_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_loop.c_nvme_loop_destroy_admin_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_loop_ctrl = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@NVME_LOOP_Q_LIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_loop_ctrl*)* @nvme_loop_destroy_admin_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_loop_destroy_admin_queue(%struct.nvme_loop_ctrl* %0) #0 {
  %2 = alloca %struct.nvme_loop_ctrl*, align 8
  store %struct.nvme_loop_ctrl* %0, %struct.nvme_loop_ctrl** %2, align 8
  %3 = load i32, i32* @NVME_LOOP_Q_LIVE, align 4
  %4 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %2, align 8
  %5 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %4, i32 0, i32 2
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i64 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = call i32 @clear_bit(i32 %3, i32* %8)
  %10 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %2, align 8
  %11 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %10, i32 0, i32 2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i64 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = call i32 @nvmet_sq_destroy(i32* %14)
  %16 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %2, align 8
  %17 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @blk_cleanup_queue(i32 %19)
  %21 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %2, align 8
  %22 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @blk_cleanup_queue(i32 %24)
  %26 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %2, align 8
  %27 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %26, i32 0, i32 0
  %28 = call i32 @blk_mq_free_tag_set(i32* %27)
  ret void
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @nvmet_sq_destroy(i32*) #1

declare dso_local i32 @blk_cleanup_queue(i32) #1

declare dso_local i32 @blk_mq_free_tag_set(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
