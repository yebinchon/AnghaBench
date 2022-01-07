; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_loop.c_nvme_loop_free_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_loop.c_nvme_loop_free_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ctrl = type { i32, i64 }
%struct.nvme_loop_ctrl = type { %struct.nvme_loop_ctrl*, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@nvme_loop_ctrl_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_ctrl*)* @nvme_loop_free_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_loop_free_ctrl(%struct.nvme_ctrl* %0) #0 {
  %2 = alloca %struct.nvme_ctrl*, align 8
  %3 = alloca %struct.nvme_loop_ctrl*, align 8
  store %struct.nvme_ctrl* %0, %struct.nvme_ctrl** %2, align 8
  %4 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %2, align 8
  %5 = call %struct.nvme_loop_ctrl* @to_loop_ctrl(%struct.nvme_ctrl* %4)
  store %struct.nvme_loop_ctrl* %5, %struct.nvme_loop_ctrl** %3, align 8
  %6 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %7 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %6, i32 0, i32 3
  %8 = call i64 @list_empty(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %39

11:                                               ; preds = %1
  %12 = call i32 @mutex_lock(i32* @nvme_loop_ctrl_mutex)
  %13 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %14 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %13, i32 0, i32 3
  %15 = call i32 @list_del(i32* %14)
  %16 = call i32 @mutex_unlock(i32* @nvme_loop_ctrl_mutex)
  %17 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %2, align 8
  %18 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %11
  %22 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %23 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @blk_cleanup_queue(i32 %25)
  %27 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %28 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %27, i32 0, i32 1
  %29 = call i32 @blk_mq_free_tag_set(i32* %28)
  br label %30

30:                                               ; preds = %21, %11
  %31 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %32 = getelementptr inbounds %struct.nvme_loop_ctrl, %struct.nvme_loop_ctrl* %31, i32 0, i32 0
  %33 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %32, align 8
  %34 = call i32 @kfree(%struct.nvme_loop_ctrl* %33)
  %35 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %2, align 8
  %36 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @nvmf_free_options(i32 %37)
  br label %39

39:                                               ; preds = %30, %10
  %40 = load %struct.nvme_loop_ctrl*, %struct.nvme_loop_ctrl** %3, align 8
  %41 = call i32 @kfree(%struct.nvme_loop_ctrl* %40)
  ret void
}

declare dso_local %struct.nvme_loop_ctrl* @to_loop_ctrl(%struct.nvme_ctrl*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @blk_cleanup_queue(i32) #1

declare dso_local i32 @blk_mq_free_tag_set(i32*) #1

declare dso_local i32 @kfree(%struct.nvme_loop_ctrl*) #1

declare dso_local i32 @nvmf_free_options(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
