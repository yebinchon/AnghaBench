; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_map_metadata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_map_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_dev = type { i32 }
%struct.request = type { i32 }
%struct.nvme_command = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nvme_iod = type { i32 }

@BLK_STS_IOERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_dev*, %struct.request*, %struct.nvme_command*)* @nvme_map_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_map_metadata(%struct.nvme_dev* %0, %struct.request* %1, %struct.nvme_command* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvme_dev*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca %struct.nvme_command*, align 8
  %8 = alloca %struct.nvme_iod*, align 8
  store %struct.nvme_dev* %0, %struct.nvme_dev** %5, align 8
  store %struct.request* %1, %struct.request** %6, align 8
  store %struct.nvme_command* %2, %struct.nvme_command** %7, align 8
  %9 = load %struct.request*, %struct.request** %6, align 8
  %10 = call %struct.nvme_iod* @blk_mq_rq_to_pdu(%struct.request* %9)
  store %struct.nvme_iod* %10, %struct.nvme_iod** %8, align 8
  %11 = load %struct.nvme_dev*, %struct.nvme_dev** %5, align 8
  %12 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.request*, %struct.request** %6, align 8
  %15 = call i32 @rq_integrity_vec(%struct.request* %14)
  %16 = load %struct.request*, %struct.request** %6, align 8
  %17 = call i32 @rq_dma_dir(%struct.request* %16)
  %18 = call i32 @dma_map_bvec(i32 %13, i32 %15, i32 %17, i32 0)
  %19 = load %struct.nvme_iod*, %struct.nvme_iod** %8, align 8
  %20 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.nvme_dev*, %struct.nvme_dev** %5, align 8
  %22 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.nvme_iod*, %struct.nvme_iod** %8, align 8
  %25 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @dma_mapping_error(i32 %23, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i32, i32* @BLK_STS_IOERR, align 4
  store i32 %30, i32* %4, align 4
  br label %39

31:                                               ; preds = %3
  %32 = load %struct.nvme_iod*, %struct.nvme_iod** %8, align 8
  %33 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @cpu_to_le64(i32 %34)
  %36 = load %struct.nvme_command*, %struct.nvme_command** %7, align 8
  %37 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 4
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %31, %29
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local %struct.nvme_iod* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i32 @dma_map_bvec(i32, i32, i32, i32) #1

declare dso_local i32 @rq_integrity_vec(%struct.request*) #1

declare dso_local i32 @rq_dma_dir(%struct.request*) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
