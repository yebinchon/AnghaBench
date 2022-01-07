; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_rdma.c_nvmet_rdma_cm_reject.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_rdma.c_nvmet_rdma_cm_reject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { i32 }
%struct.nvme_rdma_cm_rej = type { i8*, i8* }

@.str = private unnamed_addr constant [43 x i8] c"rejecting connect request: status %d (%s)\0A\00", align 1
@NVME_RDMA_CM_FMT_1_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_cm_id*, i32)* @nvmet_rdma_cm_reject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvmet_rdma_cm_reject(%struct.rdma_cm_id* %0, i32 %1) #0 {
  %3 = alloca %struct.rdma_cm_id*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvme_rdma_cm_rej, align 8
  store %struct.rdma_cm_id* %0, %struct.rdma_cm_id** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @nvme_rdma_cm_msg(i32 %7)
  %9 = call i32 @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %8)
  %10 = load i32, i32* @NVME_RDMA_CM_FMT_1_0, align 4
  %11 = call i8* @cpu_to_le16(i32 %10)
  %12 = getelementptr inbounds %struct.nvme_rdma_cm_rej, %struct.nvme_rdma_cm_rej* %5, i32 0, i32 1
  store i8* %11, i8** %12, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i8* @cpu_to_le16(i32 %13)
  %15 = getelementptr inbounds %struct.nvme_rdma_cm_rej, %struct.nvme_rdma_cm_rej* %5, i32 0, i32 0
  store i8* %14, i8** %15, align 8
  %16 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %17 = bitcast %struct.nvme_rdma_cm_rej* %5 to i8*
  %18 = call i32 @rdma_reject(%struct.rdma_cm_id* %16, i8* %17, i32 16)
  ret i32 %18
}

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @nvme_rdma_cm_msg(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @rdma_reject(%struct.rdma_cm_id*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
