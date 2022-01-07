; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_set_queue_dying.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_set_queue_dying.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ns = type { i32, i32, i32 }

@NVME_NS_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_ns*)* @nvme_set_queue_dying to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_set_queue_dying(%struct.nvme_ns* %0) #0 {
  %2 = alloca %struct.nvme_ns*, align 8
  store %struct.nvme_ns* %0, %struct.nvme_ns** %2, align 8
  %3 = load %struct.nvme_ns*, %struct.nvme_ns** %2, align 8
  %4 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load i32, i32* @NVME_NS_DEAD, align 4
  %9 = load %struct.nvme_ns*, %struct.nvme_ns** %2, align 8
  %10 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %9, i32 0, i32 2
  %11 = call i64 @test_and_set_bit(i32 %8, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %7, %1
  br label %27

14:                                               ; preds = %7
  %15 = load %struct.nvme_ns*, %struct.nvme_ns** %2, align 8
  %16 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @blk_set_queue_dying(i32 %17)
  %19 = load %struct.nvme_ns*, %struct.nvme_ns** %2, align 8
  %20 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @blk_mq_unquiesce_queue(i32 %21)
  %23 = load %struct.nvme_ns*, %struct.nvme_ns** %2, align 8
  %24 = getelementptr inbounds %struct.nvme_ns, %struct.nvme_ns* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @revalidate_disk(i32 %25)
  br label %27

27:                                               ; preds = %14, %13
  ret void
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @blk_set_queue_dying(i32) #1

declare dso_local i32 @blk_mq_unquiesce_queue(i32) #1

declare dso_local i32 @revalidate_disk(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
