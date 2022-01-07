; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_setup_sgl_simple.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_setup_sgl_simple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_dev = type { i32 }
%struct.request = type { i32 }
%struct.nvme_rw_command = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.bio_vec = type { i32 }
%struct.nvme_iod = type { i32, i32 }

@BLK_STS_RESOURCE = common dso_local global i32 0, align 4
@NVME_CMD_SGL_METABUF = common dso_local global i32 0, align 4
@NVME_SGL_FMT_DATA_DESC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_dev*, %struct.request*, %struct.nvme_rw_command*, %struct.bio_vec*)* @nvme_setup_sgl_simple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_setup_sgl_simple(%struct.nvme_dev* %0, %struct.request* %1, %struct.nvme_rw_command* %2, %struct.bio_vec* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvme_dev*, align 8
  %7 = alloca %struct.request*, align 8
  %8 = alloca %struct.nvme_rw_command*, align 8
  %9 = alloca %struct.bio_vec*, align 8
  %10 = alloca %struct.nvme_iod*, align 8
  store %struct.nvme_dev* %0, %struct.nvme_dev** %6, align 8
  store %struct.request* %1, %struct.request** %7, align 8
  store %struct.nvme_rw_command* %2, %struct.nvme_rw_command** %8, align 8
  store %struct.bio_vec* %3, %struct.bio_vec** %9, align 8
  %11 = load %struct.request*, %struct.request** %7, align 8
  %12 = call %struct.nvme_iod* @blk_mq_rq_to_pdu(%struct.request* %11)
  store %struct.nvme_iod* %12, %struct.nvme_iod** %10, align 8
  %13 = load %struct.nvme_dev*, %struct.nvme_dev** %6, align 8
  %14 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.bio_vec*, %struct.bio_vec** %9, align 8
  %17 = load %struct.request*, %struct.request** %7, align 8
  %18 = call i32 @rq_dma_dir(%struct.request* %17)
  %19 = call i32 @dma_map_bvec(i32 %15, %struct.bio_vec* %16, i32 %18, i32 0)
  %20 = load %struct.nvme_iod*, %struct.nvme_iod** %10, align 8
  %21 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.nvme_dev*, %struct.nvme_dev** %6, align 8
  %23 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.nvme_iod*, %struct.nvme_iod** %10, align 8
  %26 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @dma_mapping_error(i32 %24, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i32, i32* @BLK_STS_RESOURCE, align 4
  store i32 %31, i32* %5, align 4
  br label %63

32:                                               ; preds = %4
  %33 = load %struct.bio_vec*, %struct.bio_vec** %9, align 8
  %34 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.nvme_iod*, %struct.nvme_iod** %10, align 8
  %37 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @NVME_CMD_SGL_METABUF, align 4
  %39 = load %struct.nvme_rw_command*, %struct.nvme_rw_command** %8, align 8
  %40 = getelementptr inbounds %struct.nvme_rw_command, %struct.nvme_rw_command* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.nvme_iod*, %struct.nvme_iod** %10, align 8
  %42 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @cpu_to_le64(i32 %43)
  %45 = load %struct.nvme_rw_command*, %struct.nvme_rw_command** %8, align 8
  %46 = getelementptr inbounds %struct.nvme_rw_command, %struct.nvme_rw_command* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  store i32 %44, i32* %48, align 4
  %49 = load %struct.nvme_iod*, %struct.nvme_iod** %10, align 8
  %50 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @cpu_to_le32(i32 %51)
  %53 = load %struct.nvme_rw_command*, %struct.nvme_rw_command** %8, align 8
  %54 = getelementptr inbounds %struct.nvme_rw_command, %struct.nvme_rw_command* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  store i32 %52, i32* %56, align 4
  %57 = load i32, i32* @NVME_SGL_FMT_DATA_DESC, align 4
  %58 = shl i32 %57, 4
  %59 = load %struct.nvme_rw_command*, %struct.nvme_rw_command** %8, align 8
  %60 = getelementptr inbounds %struct.nvme_rw_command, %struct.nvme_rw_command* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  store i32 %58, i32* %62, align 4
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %32, %30
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local %struct.nvme_iod* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i32 @dma_map_bvec(i32, %struct.bio_vec*, i32, i32) #1

declare dso_local i32 @rq_dma_dir(%struct.request*) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
