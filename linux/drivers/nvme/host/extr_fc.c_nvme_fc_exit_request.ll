; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c_nvme_fc_exit_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c_nvme_fc_exit_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_tag_set = type { i32 }
%struct.request = type { i32 }
%struct.nvme_fc_fcp_op = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blk_mq_tag_set*, %struct.request*, i32)* @nvme_fc_exit_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_fc_exit_request(%struct.blk_mq_tag_set* %0, %struct.request* %1, i32 %2) #0 {
  %4 = alloca %struct.blk_mq_tag_set*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvme_fc_fcp_op*, align 8
  store %struct.blk_mq_tag_set* %0, %struct.blk_mq_tag_set** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.request*, %struct.request** %5, align 8
  %9 = call %struct.nvme_fc_fcp_op* @blk_mq_rq_to_pdu(%struct.request* %8)
  store %struct.nvme_fc_fcp_op* %9, %struct.nvme_fc_fcp_op** %7, align 8
  %10 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %4, align 8
  %11 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %7, align 8
  call void @__nvme_fc_exit_request(i32 %12, %struct.nvme_fc_fcp_op* %13)
  ret void
}

declare dso_local %struct.nvme_fc_fcp_op* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local void @__nvme_fc_exit_request(i32, %struct.nvme_fc_fcp_op*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
