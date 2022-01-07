; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_configfs.c_nvmet_port_init_tsas_rdma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_configfs.c_nvmet_port_init_tsas_rdma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_port = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@NVMF_RDMA_QPTYPE_CONNECTED = common dso_local global i32 0, align 4
@NVMF_RDMA_PRTYPE_NOT_SPECIFIED = common dso_local global i32 0, align 4
@NVMF_RDMA_CMS_RDMA_CM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvmet_port*)* @nvmet_port_init_tsas_rdma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvmet_port_init_tsas_rdma(%struct.nvmet_port* %0) #0 {
  %2 = alloca %struct.nvmet_port*, align 8
  store %struct.nvmet_port* %0, %struct.nvmet_port** %2, align 8
  %3 = load i32, i32* @NVMF_RDMA_QPTYPE_CONNECTED, align 4
  %4 = load %struct.nvmet_port*, %struct.nvmet_port** %2, align 8
  %5 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* @NVMF_RDMA_PRTYPE_NOT_SPECIFIED, align 4
  %10 = load %struct.nvmet_port*, %struct.nvmet_port** %2, align 8
  %11 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  store i32 %9, i32* %14, align 4
  %15 = load i32, i32* @NVMF_RDMA_CMS_RDMA_CM, align 4
  %16 = load %struct.nvmet_port*, %struct.nvmet_port** %2, align 8
  %17 = getelementptr inbounds %struct.nvmet_port, %struct.nvmet_port* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i32 %15, i32* %20, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
