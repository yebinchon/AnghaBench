; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c_nvme_fc_abort_aen_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c_nvme_fc_abort_aen_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_fc_ctrl = type { %struct.nvme_fc_fcp_op* }
%struct.nvme_fc_fcp_op = type { i32 }

@FCOP_FLAGS_AEN = common dso_local global i32 0, align 4
@NVME_NR_AEN_COMMANDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_fc_ctrl*)* @nvme_fc_abort_aen_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_fc_abort_aen_ops(%struct.nvme_fc_ctrl* %0) #0 {
  %2 = alloca %struct.nvme_fc_ctrl*, align 8
  %3 = alloca %struct.nvme_fc_fcp_op*, align 8
  %4 = alloca i32, align 4
  store %struct.nvme_fc_ctrl* %0, %struct.nvme_fc_ctrl** %2, align 8
  %5 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %2, align 8
  %6 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %5, i32 0, i32 0
  %7 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %6, align 8
  store %struct.nvme_fc_fcp_op* %7, %struct.nvme_fc_fcp_op** %3, align 8
  %8 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %3, align 8
  %9 = getelementptr inbounds %struct.nvme_fc_fcp_op, %struct.nvme_fc_fcp_op* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @FCOP_FLAGS_AEN, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %29

15:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %24, %15
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @NVME_NR_AEN_COMMANDS, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %16
  %21 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %2, align 8
  %22 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %3, align 8
  %23 = call i32 @__nvme_fc_abort_op(%struct.nvme_fc_ctrl* %21, %struct.nvme_fc_fcp_op* %22)
  br label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  %27 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %3, align 8
  %28 = getelementptr inbounds %struct.nvme_fc_fcp_op, %struct.nvme_fc_fcp_op* %27, i32 1
  store %struct.nvme_fc_fcp_op* %28, %struct.nvme_fc_fcp_op** %3, align 8
  br label %16

29:                                               ; preds = %14, %16
  ret void
}

declare dso_local i32 @__nvme_fc_abort_op(%struct.nvme_fc_ctrl*, %struct.nvme_fc_fcp_op*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
