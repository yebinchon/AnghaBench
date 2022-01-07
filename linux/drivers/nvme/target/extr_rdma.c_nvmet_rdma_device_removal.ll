; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_rdma.c_nvmet_rdma_device_removal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_rdma.c_nvmet_rdma_device_removal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { %struct.nvmet_port* }
%struct.nvmet_port = type { i32 }
%struct.nvmet_rdma_queue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_cm_id*, %struct.nvmet_rdma_queue*)* @nvmet_rdma_device_removal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvmet_rdma_device_removal(%struct.rdma_cm_id* %0, %struct.nvmet_rdma_queue* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rdma_cm_id*, align 8
  %5 = alloca %struct.nvmet_rdma_queue*, align 8
  %6 = alloca %struct.nvmet_port*, align 8
  store %struct.rdma_cm_id* %0, %struct.rdma_cm_id** %4, align 8
  store %struct.nvmet_rdma_queue* %1, %struct.nvmet_rdma_queue** %5, align 8
  %7 = load %struct.nvmet_rdma_queue*, %struct.nvmet_rdma_queue** %5, align 8
  %8 = icmp ne %struct.nvmet_rdma_queue* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %21

10:                                               ; preds = %2
  %11 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %12 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %11, i32 0, i32 0
  %13 = load %struct.nvmet_port*, %struct.nvmet_port** %12, align 8
  store %struct.nvmet_port* %13, %struct.nvmet_port** %6, align 8
  %14 = load %struct.nvmet_port*, %struct.nvmet_port** %6, align 8
  %15 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %14, i32 0, i32 0
  %16 = call %struct.rdma_cm_id* @xchg(i32* %15, i32* null)
  %17 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %18 = icmp ne %struct.rdma_cm_id* %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %21

20:                                               ; preds = %10
  store i32 1, i32* %3, align 4
  br label %21

21:                                               ; preds = %20, %19, %9
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local %struct.rdma_cm_id* @xchg(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
