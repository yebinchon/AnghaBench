; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_destroy_admin_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_tcp.c_nvme_tcp_destroy_admin_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ctrl = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_ctrl*, i32)* @nvme_tcp_destroy_admin_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_tcp_destroy_admin_queue(%struct.nvme_ctrl* %0, i32 %1) #0 {
  %3 = alloca %struct.nvme_ctrl*, align 8
  %4 = alloca i32, align 4
  store %struct.nvme_ctrl* %0, %struct.nvme_ctrl** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %6 = call i32 @nvme_tcp_stop_queue(%struct.nvme_ctrl* %5, i32 0)
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %2
  %10 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %11 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @blk_cleanup_queue(i32 %12)
  %14 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %15 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @blk_cleanup_queue(i32 %16)
  %18 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %19 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @blk_mq_free_tag_set(i32 %20)
  br label %22

22:                                               ; preds = %9, %2
  %23 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %3, align 8
  %24 = call i32 @nvme_tcp_free_admin_queue(%struct.nvme_ctrl* %23)
  ret void
}

declare dso_local i32 @nvme_tcp_stop_queue(%struct.nvme_ctrl*, i32) #1

declare dso_local i32 @blk_cleanup_queue(i32) #1

declare dso_local i32 @blk_mq_free_tag_set(i32) #1

declare dso_local i32 @nvme_tcp_free_admin_queue(%struct.nvme_ctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
