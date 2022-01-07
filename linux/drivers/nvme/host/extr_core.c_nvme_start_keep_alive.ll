; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_start_keep_alive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_start_keep_alive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ctrl = type { i32, i32 }

@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_ctrl*)* @nvme_start_keep_alive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_start_keep_alive(%struct.nvme_ctrl* %0) #0 {
  %2 = alloca %struct.nvme_ctrl*, align 8
  store %struct.nvme_ctrl* %0, %struct.nvme_ctrl** %2, align 8
  %3 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %2, align 8
  %4 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i64 @unlikely(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %20

11:                                               ; preds = %1
  %12 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %2, align 8
  %13 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %12, i32 0, i32 1
  %14 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %2, align 8
  %15 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @HZ, align 4
  %18 = mul nsw i32 %16, %17
  %19 = call i32 @schedule_delayed_work(i32* %13, i32 %18)
  br label %20

20:                                               ; preds = %11, %10
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
