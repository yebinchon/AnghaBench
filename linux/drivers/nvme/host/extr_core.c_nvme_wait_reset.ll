; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_wait_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_wait_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ctrl = type { i64, i32 }

@NVME_CTRL_RESETTING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvme_wait_reset(%struct.nvme_ctrl* %0) #0 {
  %2 = alloca %struct.nvme_ctrl*, align 8
  store %struct.nvme_ctrl* %0, %struct.nvme_ctrl** %2, align 8
  %3 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %2, align 8
  %4 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %2, align 8
  %7 = load i64, i64* @NVME_CTRL_RESETTING, align 8
  %8 = call i64 @nvme_change_ctrl_state(%struct.nvme_ctrl* %6, i64 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %2, align 8
  %12 = call i64 @nvme_state_terminal(%struct.nvme_ctrl* %11)
  %13 = icmp ne i64 %12, 0
  br label %14

14:                                               ; preds = %10, %1
  %15 = phi i1 [ true, %1 ], [ %13, %10 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @wait_event(i32 %5, i32 %16)
  %18 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %2, align 8
  %19 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @NVME_CTRL_RESETTING, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  ret i32 %23
}

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i64 @nvme_change_ctrl_state(%struct.nvme_ctrl*, i64) #1

declare dso_local i64 @nvme_state_terminal(%struct.nvme_ctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
