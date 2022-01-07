; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_pci_complete_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_pci_complete_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32 }
%struct.nvme_iod = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.nvme_dev* }
%struct.nvme_dev = type { i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request*)* @nvme_pci_complete_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_pci_complete_rq(%struct.request* %0) #0 {
  %2 = alloca %struct.request*, align 8
  %3 = alloca %struct.nvme_iod*, align 8
  %4 = alloca %struct.nvme_dev*, align 8
  store %struct.request* %0, %struct.request** %2, align 8
  %5 = load %struct.request*, %struct.request** %2, align 8
  %6 = call %struct.nvme_iod* @blk_mq_rq_to_pdu(%struct.request* %5)
  store %struct.nvme_iod* %6, %struct.nvme_iod** %3, align 8
  %7 = load %struct.nvme_iod*, %struct.nvme_iod** %3, align 8
  %8 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %7, i32 0, i32 1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.nvme_dev*, %struct.nvme_dev** %10, align 8
  store %struct.nvme_dev* %11, %struct.nvme_dev** %4, align 8
  %12 = load %struct.request*, %struct.request** %2, align 8
  %13 = call i32 @nvme_cleanup_cmd(%struct.request* %12)
  %14 = load %struct.request*, %struct.request** %2, align 8
  %15 = call i64 @blk_integrity_rq(%struct.request* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %1
  %18 = load %struct.nvme_dev*, %struct.nvme_dev** %4, align 8
  %19 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.nvme_iod*, %struct.nvme_iod** %3, align 8
  %22 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.request*, %struct.request** %2, align 8
  %25 = call %struct.TYPE_4__* @rq_integrity_vec(%struct.request* %24)
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.request*, %struct.request** %2, align 8
  %29 = call i32 @rq_data_dir(%struct.request* %28)
  %30 = call i32 @dma_unmap_page(i32 %20, i32 %23, i32 %27, i32 %29)
  br label %31

31:                                               ; preds = %17, %1
  %32 = load %struct.request*, %struct.request** %2, align 8
  %33 = call i64 @blk_rq_nr_phys_segments(%struct.request* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load %struct.nvme_dev*, %struct.nvme_dev** %4, align 8
  %37 = load %struct.request*, %struct.request** %2, align 8
  %38 = call i32 @nvme_unmap_data(%struct.nvme_dev* %36, %struct.request* %37)
  br label %39

39:                                               ; preds = %35, %31
  %40 = load %struct.request*, %struct.request** %2, align 8
  %41 = call i32 @nvme_complete_rq(%struct.request* %40)
  ret void
}

declare dso_local %struct.nvme_iod* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i32 @nvme_cleanup_cmd(%struct.request*) #1

declare dso_local i64 @blk_integrity_rq(%struct.request*) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_4__* @rq_integrity_vec(%struct.request*) #1

declare dso_local i32 @rq_data_dir(%struct.request*) #1

declare dso_local i64 @blk_rq_nr_phys_segments(%struct.request*) #1

declare dso_local i32 @nvme_unmap_data(%struct.nvme_dev*, %struct.request*) #1

declare dso_local i32 @nvme_complete_rq(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
