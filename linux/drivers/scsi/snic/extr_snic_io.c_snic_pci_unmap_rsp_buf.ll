; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_io.c_snic_pci_unmap_rsp_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/snic/extr_snic_io.c_snic_pci_unmap_rsp_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snic = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.snic_req_info = type { i32 }
%struct.snic_sg_desc = type { i64, i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snic_pci_unmap_rsp_buf(%struct.snic* %0, %struct.snic_req_info* %1) #0 {
  %3 = alloca %struct.snic*, align 8
  %4 = alloca %struct.snic_req_info*, align 8
  %5 = alloca %struct.snic_sg_desc*, align 8
  store %struct.snic* %0, %struct.snic** %3, align 8
  store %struct.snic_req_info* %1, %struct.snic_req_info** %4, align 8
  %6 = load %struct.snic_req_info*, %struct.snic_req_info** %4, align 8
  %7 = call i32 @rqi_to_req(%struct.snic_req_info* %6)
  %8 = call %struct.snic_sg_desc* @req_to_sgl(i32 %7)
  store %struct.snic_sg_desc* %8, %struct.snic_sg_desc** %5, align 8
  %9 = load %struct.snic_sg_desc*, %struct.snic_sg_desc** %5, align 8
  %10 = getelementptr inbounds %struct.snic_sg_desc, %struct.snic_sg_desc* %9, i64 0
  %11 = getelementptr inbounds %struct.snic_sg_desc, %struct.snic_sg_desc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @SNIC_BUG_ON(i32 %14)
  %16 = load %struct.snic*, %struct.snic** %3, align 8
  %17 = getelementptr inbounds %struct.snic, %struct.snic* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.snic_sg_desc*, %struct.snic_sg_desc** %5, align 8
  %21 = getelementptr inbounds %struct.snic_sg_desc, %struct.snic_sg_desc* %20, i64 0
  %22 = getelementptr inbounds %struct.snic_sg_desc, %struct.snic_sg_desc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @le64_to_cpu(i64 %23)
  %25 = load %struct.snic_sg_desc*, %struct.snic_sg_desc** %5, align 8
  %26 = getelementptr inbounds %struct.snic_sg_desc, %struct.snic_sg_desc* %25, i64 0
  %27 = getelementptr inbounds %struct.snic_sg_desc, %struct.snic_sg_desc* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @le32_to_cpu(i32 %28)
  %30 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %31 = call i32 @dma_unmap_single(i32* %19, i32 %24, i32 %29, i32 %30)
  ret void
}

declare dso_local %struct.snic_sg_desc* @req_to_sgl(i32) #1

declare dso_local i32 @rqi_to_req(%struct.snic_req_info*) #1

declare dso_local i32 @SNIC_BUG_ON(i32) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @le64_to_cpu(i64) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
