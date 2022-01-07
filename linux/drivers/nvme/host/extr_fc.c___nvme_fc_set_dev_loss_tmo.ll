; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c___nvme_fc_set_dev_loss_tmo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c___nvme_fc_set_dev_loss_tmo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_fc_rport = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.nvme_fc_port_info = type { i64 }

@NVME_FC_DEFAULT_DEV_LOSS_TMO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_fc_rport*, %struct.nvme_fc_port_info*)* @__nvme_fc_set_dev_loss_tmo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__nvme_fc_set_dev_loss_tmo(%struct.nvme_fc_rport* %0, %struct.nvme_fc_port_info* %1) #0 {
  %3 = alloca %struct.nvme_fc_rport*, align 8
  %4 = alloca %struct.nvme_fc_port_info*, align 8
  store %struct.nvme_fc_rport* %0, %struct.nvme_fc_rport** %3, align 8
  store %struct.nvme_fc_port_info* %1, %struct.nvme_fc_port_info** %4, align 8
  %5 = load %struct.nvme_fc_port_info*, %struct.nvme_fc_port_info** %4, align 8
  %6 = getelementptr inbounds %struct.nvme_fc_port_info, %struct.nvme_fc_port_info* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load %struct.nvme_fc_port_info*, %struct.nvme_fc_port_info** %4, align 8
  %11 = getelementptr inbounds %struct.nvme_fc_port_info, %struct.nvme_fc_port_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %3, align 8
  %14 = getelementptr inbounds %struct.nvme_fc_rport, %struct.nvme_fc_rport* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i64 %12, i64* %15, align 8
  br label %21

16:                                               ; preds = %2
  %17 = load i64, i64* @NVME_FC_DEFAULT_DEV_LOSS_TMO, align 8
  %18 = load %struct.nvme_fc_rport*, %struct.nvme_fc_rport** %3, align 8
  %19 = getelementptr inbounds %struct.nvme_fc_rport, %struct.nvme_fc_rport* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i64 %17, i64* %20, align 8
  br label %21

21:                                               ; preds = %16, %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
