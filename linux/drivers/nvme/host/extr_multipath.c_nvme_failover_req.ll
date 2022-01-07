; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_multipath.c_nvme_failover_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_multipath.c_nvme_failover_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.nvme_ns* }
%struct.nvme_ns = type { %struct.TYPE_6__*, %struct.TYPE_7__*, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@NVME_NS_ANA_PENDING = common dso_local global i32 0, align 4
@nvme_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvme_failover_req(%struct.request* %0) #0 {
  %2 = alloca %struct.request*, align 8
  %3 = alloca %struct.nvme_ns*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.request* %0, %struct.request** %2, align 8
  %6 = load %struct.request*, %struct.request** %2, align 8
  %7 = getelementptr inbounds %struct.request, %struct.request* %6, i32 0, i32 0
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.nvme_ns*, %struct.nvme_ns** %9, align 8
  store %struct.nvme_ns* %10, %struct.nvme_ns** %3, align 8
  %11 = load %struct.request*, %struct.request** %2, align 8
  %12 = call %struct.TYPE_8__* @nvme_req(%struct.request* %11)
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %4, align 4
  %15 = load %struct.nvme_ns*, %struct.nvme_ns** %3, align 8
  %16 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.nvme_ns*, %struct.nvme_ns** %3, align 8
  %22 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  %25 = load %struct.request*, %struct.request** %2, align 8
  %26 = call i32 @blk_steal_bios(i32* %24, %struct.request* %25)
  %27 = load %struct.nvme_ns*, %struct.nvme_ns** %3, align 8
  %28 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  %33 = load %struct.request*, %struct.request** %2, align 8
  %34 = call i32 @blk_mq_end_request(%struct.request* %33, i32 0)
  %35 = load i32, i32* %4, align 4
  %36 = and i32 %35, 2047
  switch i32 %36, label %61 [
    i32 129, label %37
    i32 131, label %37
    i32 130, label %37
    i32 128, label %58
  ]

37:                                               ; preds = %1, %1, %1
  %38 = load %struct.nvme_ns*, %struct.nvme_ns** %3, align 8
  %39 = call i32 @nvme_mpath_clear_current_path(%struct.nvme_ns* %38)
  %40 = load %struct.nvme_ns*, %struct.nvme_ns** %3, align 8
  %41 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %40, i32 0, i32 1
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %37
  %47 = load i32, i32* @NVME_NS_ANA_PENDING, align 4
  %48 = load %struct.nvme_ns*, %struct.nvme_ns** %3, align 8
  %49 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %48, i32 0, i32 2
  %50 = call i32 @set_bit(i32 %47, i32* %49)
  %51 = load i32, i32* @nvme_wq, align 4
  %52 = load %struct.nvme_ns*, %struct.nvme_ns** %3, align 8
  %53 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %52, i32 0, i32 1
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = call i32 @queue_work(i32 %51, i32* %55)
  br label %57

57:                                               ; preds = %46, %37
  br label %66

58:                                               ; preds = %1
  %59 = load %struct.nvme_ns*, %struct.nvme_ns** %3, align 8
  %60 = call i32 @nvme_mpath_clear_current_path(%struct.nvme_ns* %59)
  br label %66

61:                                               ; preds = %1
  %62 = load %struct.nvme_ns*, %struct.nvme_ns** %3, align 8
  %63 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %62, i32 0, i32 1
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = call i32 @nvme_reset_ctrl(%struct.TYPE_7__* %64)
  br label %66

66:                                               ; preds = %61, %58, %57
  %67 = load %struct.nvme_ns*, %struct.nvme_ns** %3, align 8
  %68 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %67, i32 0, i32 0
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = call i32 @kblockd_schedule_work(i32* %70)
  ret void
}

declare dso_local %struct.TYPE_8__* @nvme_req(%struct.request*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @blk_steal_bios(i32*, %struct.request*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @blk_mq_end_request(%struct.request*, i32) #1

declare dso_local i32 @nvme_mpath_clear_current_path(%struct.nvme_ns*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @nvme_reset_ctrl(%struct.TYPE_7__*) #1

declare dso_local i32 @kblockd_schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
