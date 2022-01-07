; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_execute_rq_polled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_execute_rq_polled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.gendisk = type { i32 }
%struct.request = type { i32, i32*, i32 }

@wait = common dso_local global i32 0, align 4
@QUEUE_FLAG_POLL = common dso_local global i32 0, align 4
@REQ_HIPRI = common dso_local global i32 0, align 4
@nvme_end_sync_rq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request_queue*, %struct.gendisk*, %struct.request*, i32)* @nvme_execute_rq_polled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_execute_rq_polled(%struct.request_queue* %0, %struct.gendisk* %1, %struct.request* %2, i32 %3) #0 {
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca %struct.gendisk*, align 8
  %7 = alloca %struct.request*, align 8
  %8 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %5, align 8
  store %struct.gendisk* %1, %struct.gendisk** %6, align 8
  store %struct.request* %2, %struct.request** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* @wait, align 4
  %10 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %9)
  %11 = load i32, i32* @QUEUE_FLAG_POLL, align 4
  %12 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %13 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %12, i32 0, i32 0
  %14 = call i32 @test_bit(i32 %11, i32* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @WARN_ON_ONCE(i32 %17)
  %19 = load i32, i32* @REQ_HIPRI, align 4
  %20 = load %struct.request*, %struct.request** %7, align 8
  %21 = getelementptr inbounds %struct.request, %struct.request* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 8
  %24 = load %struct.request*, %struct.request** %7, align 8
  %25 = getelementptr inbounds %struct.request, %struct.request* %24, i32 0, i32 1
  store i32* @wait, i32** %25, align 8
  %26 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %27 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %28 = load %struct.request*, %struct.request** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @nvme_end_sync_rq, align 4
  %31 = call i32 @blk_execute_rq_nowait(%struct.request_queue* %26, %struct.gendisk* %27, %struct.request* %28, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %36, %4
  %33 = call i32 @completion_done(i32* @wait)
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  br i1 %35, label %36, label %45

36:                                               ; preds = %32
  %37 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %38 = load %struct.request*, %struct.request** %7, align 8
  %39 = getelementptr inbounds %struct.request, %struct.request* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.request*, %struct.request** %7, align 8
  %42 = call i32 @request_to_qc_t(i32 %40, %struct.request* %41)
  %43 = call i32 @blk_poll(%struct.request_queue* %37, i32 %42, i32 1)
  %44 = call i32 (...) @cond_resched()
  br label %32

45:                                               ; preds = %32
  ret void
}

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @blk_execute_rq_nowait(%struct.request_queue*, %struct.gendisk*, %struct.request*, i32, i32) #1

declare dso_local i32 @completion_done(i32*) #1

declare dso_local i32 @blk_poll(%struct.request_queue*, i32, i32) #1

declare dso_local i32 @request_to_qc_t(i32, %struct.request*) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
