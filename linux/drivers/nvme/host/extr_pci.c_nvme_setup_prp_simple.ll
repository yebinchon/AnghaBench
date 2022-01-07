; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_setup_prp_simple.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_setup_prp_simple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_dev = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.request = type { i32 }
%struct.nvme_rw_command = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.bio_vec = type { i32, i32 }
%struct.nvme_iod = type { i32, i64 }

@BLK_STS_RESOURCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_dev*, %struct.request*, %struct.nvme_rw_command*, %struct.bio_vec*)* @nvme_setup_prp_simple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_setup_prp_simple(%struct.nvme_dev* %0, %struct.request* %1, %struct.nvme_rw_command* %2, %struct.bio_vec* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvme_dev*, align 8
  %7 = alloca %struct.request*, align 8
  %8 = alloca %struct.nvme_rw_command*, align 8
  %9 = alloca %struct.bio_vec*, align 8
  %10 = alloca %struct.nvme_iod*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nvme_dev* %0, %struct.nvme_dev** %6, align 8
  store %struct.request* %1, %struct.request** %7, align 8
  store %struct.nvme_rw_command* %2, %struct.nvme_rw_command** %8, align 8
  store %struct.bio_vec* %3, %struct.bio_vec** %9, align 8
  %13 = load %struct.request*, %struct.request** %7, align 8
  %14 = call %struct.nvme_iod* @blk_mq_rq_to_pdu(%struct.request* %13)
  store %struct.nvme_iod* %14, %struct.nvme_iod** %10, align 8
  %15 = load %struct.bio_vec*, %struct.bio_vec** %9, align 8
  %16 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.nvme_dev*, %struct.nvme_dev** %6, align 8
  %19 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %21, 1
  %23 = and i32 %17, %22
  store i32 %23, i32* %11, align 4
  %24 = load %struct.nvme_dev*, %struct.nvme_dev** %6, align 8
  %25 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %11, align 4
  %29 = sub i32 %27, %28
  store i32 %29, i32* %12, align 4
  %30 = load %struct.nvme_dev*, %struct.nvme_dev** %6, align 8
  %31 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.bio_vec*, %struct.bio_vec** %9, align 8
  %34 = load %struct.request*, %struct.request** %7, align 8
  %35 = call i32 @rq_dma_dir(%struct.request* %34)
  %36 = call i64 @dma_map_bvec(i32 %32, %struct.bio_vec* %33, i32 %35, i32 0)
  %37 = load %struct.nvme_iod*, %struct.nvme_iod** %10, align 8
  %38 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  %39 = load %struct.nvme_dev*, %struct.nvme_dev** %6, align 8
  %40 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.nvme_iod*, %struct.nvme_iod** %10, align 8
  %43 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @dma_mapping_error(i32 %41, i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %4
  %48 = load i32, i32* @BLK_STS_RESOURCE, align 4
  store i32 %48, i32* %5, align 4
  br label %79

49:                                               ; preds = %4
  %50 = load %struct.bio_vec*, %struct.bio_vec** %9, align 8
  %51 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.nvme_iod*, %struct.nvme_iod** %10, align 8
  %54 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.nvme_iod*, %struct.nvme_iod** %10, align 8
  %56 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i8* @cpu_to_le64(i64 %57)
  %59 = load %struct.nvme_rw_command*, %struct.nvme_rw_command** %8, align 8
  %60 = getelementptr inbounds %struct.nvme_rw_command, %struct.nvme_rw_command* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store i8* %58, i8** %61, align 8
  %62 = load %struct.bio_vec*, %struct.bio_vec** %9, align 8
  %63 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp ugt i32 %64, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %49
  %68 = load %struct.nvme_iod*, %struct.nvme_iod** %10, align 8
  %69 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* %12, align 4
  %72 = zext i32 %71 to i64
  %73 = add nsw i64 %70, %72
  %74 = call i8* @cpu_to_le64(i64 %73)
  %75 = load %struct.nvme_rw_command*, %struct.nvme_rw_command** %8, align 8
  %76 = getelementptr inbounds %struct.nvme_rw_command, %struct.nvme_rw_command* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  store i8* %74, i8** %77, align 8
  br label %78

78:                                               ; preds = %67, %49
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %78, %47
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local %struct.nvme_iod* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i64 @dma_map_bvec(i32, %struct.bio_vec*, i32, i32) #1

declare dso_local i32 @rq_dma_dir(%struct.request*) #1

declare dso_local i64 @dma_mapping_error(i32, i64) #1

declare dso_local i8* @cpu_to_le64(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
