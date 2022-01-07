; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c_nvme_fc_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c_nvme_fc_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32 }
%struct.nvme_fc_fcp_op = type { %struct.nvme_fc_ctrl* }
%struct.nvme_fc_ctrl = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"io timeout error\00", align 1
@BLK_EH_RESET_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request*, i32)* @nvme_fc_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_fc_timeout(%struct.request* %0, i32 %1) #0 {
  %3 = alloca %struct.request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvme_fc_fcp_op*, align 8
  %6 = alloca %struct.nvme_fc_ctrl*, align 8
  store %struct.request* %0, %struct.request** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.request*, %struct.request** %3, align 8
  %8 = call %struct.nvme_fc_fcp_op* @blk_mq_rq_to_pdu(%struct.request* %7)
  store %struct.nvme_fc_fcp_op* %8, %struct.nvme_fc_fcp_op** %5, align 8
  %9 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %5, align 8
  %10 = getelementptr inbounds %struct.nvme_fc_fcp_op, %struct.nvme_fc_fcp_op* %9, i32 0, i32 0
  %11 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %10, align 8
  store %struct.nvme_fc_ctrl* %11, %struct.nvme_fc_ctrl** %6, align 8
  %12 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %6, align 8
  %13 = call i32 @nvme_fc_error_recovery(%struct.nvme_fc_ctrl* %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @BLK_EH_RESET_TIMER, align 4
  ret i32 %14
}

declare dso_local %struct.nvme_fc_fcp_op* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i32 @nvme_fc_error_recovery(%struct.nvme_fc_ctrl*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
