; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c_nvme_fc_ctlr_active_on_rport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c_nvme_fc_ctlr_active_on_rport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_fc_ctrl = type { i32, %struct.nvme_fc_rport* }
%struct.nvme_fc_rport = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_fc_ctrl*)* @nvme_fc_ctlr_active_on_rport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_fc_ctlr_active_on_rport(%struct.nvme_fc_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvme_fc_ctrl*, align 8
  %4 = alloca %struct.nvme_fc_rport*, align 8
  %5 = alloca i32, align 4
  store %struct.nvme_fc_ctrl* %0, %struct.nvme_fc_ctrl** %3, align 8
  %6 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %7 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %6, i32 0, i32 1
  %8 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %7, align 8
  store %struct.nvme_fc_rport* %8, %struct.nvme_fc_rport** %4, align 8
  %9 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %10 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %26

14:                                               ; preds = %1
  %15 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %3, align 8
  %16 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %4, align 8
  %18 = getelementptr inbounds %struct.nvme_fc_rport, %struct.nvme_fc_rport* %17, i32 0, i32 0
  %19 = call i32 @atomic_inc_return(i32* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %4, align 8
  %24 = call i32 @nvme_fc_rport_active_on_lport(%struct.nvme_fc_rport* %23)
  br label %25

25:                                               ; preds = %22, %14
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %13
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @nvme_fc_rport_active_on_lport(%struct.nvme_fc_rport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
