; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c_nvme_fc_free_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c_nvme_fc_free_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_fc_queue = type { i32, i64, i32 }

@NVME_FC_Q_CONNECTED = common dso_local global i32 0, align 4
@NVME_FC_Q_LIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_fc_queue*)* @nvme_fc_free_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_fc_free_queue(%struct.nvme_fc_queue* %0) #0 {
  %2 = alloca %struct.nvme_fc_queue*, align 8
  store %struct.nvme_fc_queue* %0, %struct.nvme_fc_queue** %2, align 8
  %3 = load i32, i32* @NVME_FC_Q_CONNECTED, align 4
  %4 = load %struct.nvme_fc_queue*, %struct.nvme_fc_queue** %2, align 8
  %5 = getelementptr inbounds %struct.nvme_fc_queue, %struct.nvme_fc_queue* %4, i32 0, i32 2
  %6 = call i32 @test_and_clear_bit(i32 %3, i32* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %19

9:                                                ; preds = %1
  %10 = load i32, i32* @NVME_FC_Q_LIVE, align 4
  %11 = load %struct.nvme_fc_queue*, %struct.nvme_fc_queue** %2, align 8
  %12 = getelementptr inbounds %struct.nvme_fc_queue, %struct.nvme_fc_queue* %11, i32 0, i32 2
  %13 = call i32 @clear_bit(i32 %10, i32* %12)
  %14 = load %struct.nvme_fc_queue*, %struct.nvme_fc_queue** %2, align 8
  %15 = getelementptr inbounds %struct.nvme_fc_queue, %struct.nvme_fc_queue* %14, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load %struct.nvme_fc_queue*, %struct.nvme_fc_queue** %2, align 8
  %17 = getelementptr inbounds %struct.nvme_fc_queue, %struct.nvme_fc_queue* %16, i32 0, i32 0
  %18 = call i32 @atomic_set(i32* %17, i32 0)
  br label %19

19:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
