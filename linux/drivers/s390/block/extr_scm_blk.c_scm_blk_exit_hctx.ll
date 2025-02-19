; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_scm_blk.c_scm_blk_exit_hctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_scm_blk.c_scm_blk_exit_hctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_hw_ctx = type { %struct.scm_queue* }
%struct.scm_queue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blk_mq_hw_ctx*, i32)* @scm_blk_exit_hctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scm_blk_exit_hctx(%struct.blk_mq_hw_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.blk_mq_hw_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.scm_queue*, align 8
  store %struct.blk_mq_hw_ctx* %0, %struct.blk_mq_hw_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %6, i32 0, i32 0
  %8 = load %struct.scm_queue*, %struct.scm_queue** %7, align 8
  store %struct.scm_queue* %8, %struct.scm_queue** %5, align 8
  %9 = load %struct.scm_queue*, %struct.scm_queue** %5, align 8
  %10 = getelementptr inbounds %struct.scm_queue, %struct.scm_queue* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @WARN_ON(i32 %11)
  %13 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %13, i32 0, i32 0
  %15 = load %struct.scm_queue*, %struct.scm_queue** %14, align 8
  %16 = call i32 @kfree(%struct.scm_queue* %15)
  %17 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %17, i32 0, i32 0
  store %struct.scm_queue* null, %struct.scm_queue** %18, align 8
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @kfree(%struct.scm_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
