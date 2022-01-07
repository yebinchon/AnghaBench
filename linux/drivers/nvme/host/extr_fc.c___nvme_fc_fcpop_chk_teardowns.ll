; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c___nvme_fc_fcpop_chk_teardowns.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c___nvme_fc_fcpop_chk_teardowns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_fc_ctrl = type { i32, i32, i32, i32 }
%struct.nvme_fc_fcp_op = type { i32 }

@FCPOP_STATE_ABORTED = common dso_local global i32 0, align 4
@FCCTRL_TERMIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_fc_ctrl*, %struct.nvme_fc_fcp_op*, i32)* @__nvme_fc_fcpop_chk_teardowns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__nvme_fc_fcpop_chk_teardowns(%struct.nvme_fc_ctrl* %0, %struct.nvme_fc_fcp_op* %1, i32 %2) #0 {
  %4 = alloca %struct.nvme_fc_ctrl*, align 8
  %5 = alloca %struct.nvme_fc_fcp_op*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.nvme_fc_ctrl* %0, %struct.nvme_fc_ctrl** %4, align 8
  store %struct.nvme_fc_fcp_op* %1, %struct.nvme_fc_fcp_op** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @FCPOP_STATE_ABORTED, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %38

11:                                               ; preds = %3
  %12 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %4, align 8
  %13 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %12, i32 0, i32 1
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %4, align 8
  %17 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @FCCTRL_TERMIO, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %11
  %23 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %4, align 8
  %24 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %24, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %22
  %29 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %4, align 8
  %30 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %29, i32 0, i32 2
  %31 = call i32 @wake_up(i32* %30)
  br label %32

32:                                               ; preds = %28, %22
  br label %33

33:                                               ; preds = %32, %11
  %34 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %4, align 8
  %35 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %34, i32 0, i32 1
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  br label %38

38:                                               ; preds = %33, %3
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
