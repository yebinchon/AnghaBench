; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fc.c_nvmet_fc_prep_fcp_iodlist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fc.c_nvmet_fc_prep_fcp_iodlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_fc_tgtport = type { i32 }
%struct.nvmet_fc_tgt_queue = type { i32, i32, %struct.nvmet_fc_fcp_iod* }
%struct.nvmet_fc_fcp_iod = type { i32, i32, i32, i64, i32, i32, i32, i32*, %struct.nvmet_fc_tgt_queue*, %struct.nvmet_fc_tgtport*, i32 }

@nvmet_fc_fcp_rqst_op_defer_work = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgt_queue*)* @nvmet_fc_prep_fcp_iodlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvmet_fc_prep_fcp_iodlist(%struct.nvmet_fc_tgtport* %0, %struct.nvmet_fc_tgt_queue* %1) #0 {
  %3 = alloca %struct.nvmet_fc_tgtport*, align 8
  %4 = alloca %struct.nvmet_fc_tgt_queue*, align 8
  %5 = alloca %struct.nvmet_fc_fcp_iod*, align 8
  %6 = alloca i32, align 4
  store %struct.nvmet_fc_tgtport* %0, %struct.nvmet_fc_tgtport** %3, align 8
  store %struct.nvmet_fc_tgt_queue* %1, %struct.nvmet_fc_tgt_queue** %4, align 8
  %7 = load %struct.nvmet_fc_tgt_queue*, %struct.nvmet_fc_tgt_queue** %4, align 8
  %8 = getelementptr inbounds %struct.nvmet_fc_tgt_queue, %struct.nvmet_fc_tgt_queue* %7, i32 0, i32 2
  %9 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %8, align 8
  store %struct.nvmet_fc_fcp_iod* %9, %struct.nvmet_fc_fcp_iod** %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %92, %2
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.nvmet_fc_tgt_queue*, %struct.nvmet_fc_tgt_queue** %4, align 8
  %13 = getelementptr inbounds %struct.nvmet_fc_tgt_queue, %struct.nvmet_fc_tgt_queue* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %97

16:                                               ; preds = %10
  %17 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %5, align 8
  %18 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %17, i32 0, i32 10
  %19 = load i32, i32* @nvmet_fc_fcp_rqst_op_defer_work, align 4
  %20 = call i32 @INIT_WORK(i32* %18, i32 %19)
  %21 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %3, align 8
  %22 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %5, align 8
  %23 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %22, i32 0, i32 9
  store %struct.nvmet_fc_tgtport* %21, %struct.nvmet_fc_tgtport** %23, align 8
  %24 = load %struct.nvmet_fc_tgt_queue*, %struct.nvmet_fc_tgt_queue** %4, align 8
  %25 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %5, align 8
  %26 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %25, i32 0, i32 8
  store %struct.nvmet_fc_tgt_queue* %24, %struct.nvmet_fc_tgt_queue** %26, align 8
  %27 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %5, align 8
  %28 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  %29 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %5, align 8
  %30 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %29, i32 0, i32 1
  store i32 0, i32* %30, align 4
  %31 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %5, align 8
  %32 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %31, i32 0, i32 2
  store i32 0, i32* %32, align 8
  %33 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %5, align 8
  %34 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %33, i32 0, i32 7
  store i32* null, i32** %34, align 8
  %35 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %5, align 8
  %36 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %35, i32 0, i32 4
  %37 = load %struct.nvmet_fc_tgt_queue*, %struct.nvmet_fc_tgt_queue** %4, align 8
  %38 = getelementptr inbounds %struct.nvmet_fc_tgt_queue, %struct.nvmet_fc_tgt_queue* %37, i32 0, i32 1
  %39 = call i32 @list_add_tail(i32* %36, i32* %38)
  %40 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %5, align 8
  %41 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %40, i32 0, i32 6
  %42 = call i32 @spin_lock_init(i32* %41)
  %43 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %3, align 8
  %44 = getelementptr inbounds %struct.nvmet_fc_tgtport, %struct.nvmet_fc_tgtport* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %5, align 8
  %47 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %46, i32 0, i32 5
  %48 = load i32, i32* @DMA_TO_DEVICE, align 4
  %49 = call i64 @fc_dma_map_single(i32 %45, i32* %47, i32 4, i32 %48)
  %50 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %5, align 8
  %51 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %50, i32 0, i32 3
  store i64 %49, i64* %51, align 8
  %52 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %3, align 8
  %53 = getelementptr inbounds %struct.nvmet_fc_tgtport, %struct.nvmet_fc_tgtport* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %5, align 8
  %56 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @fc_dma_mapping_error(i32 %54, i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %91

60:                                               ; preds = %16
  %61 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %5, align 8
  %62 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %61, i32 0, i32 4
  %63 = call i32 @list_del(i32* %62)
  %64 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %5, align 8
  %65 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %64, i32 -1
  store %struct.nvmet_fc_fcp_iod* %65, %struct.nvmet_fc_fcp_iod** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %85, %60
  %69 = load i32, i32* %6, align 4
  %70 = icmp sge i32 %69, 0
  br i1 %70, label %71, label %90

71:                                               ; preds = %68
  %72 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %3, align 8
  %73 = getelementptr inbounds %struct.nvmet_fc_tgtport, %struct.nvmet_fc_tgtport* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %5, align 8
  %76 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* @DMA_TO_DEVICE, align 4
  %79 = call i32 @fc_dma_unmap_single(i32 %74, i64 %77, i32 4, i32 %78)
  %80 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %5, align 8
  %81 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %80, i32 0, i32 3
  store i64 0, i64* %81, align 8
  %82 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %5, align 8
  %83 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %82, i32 0, i32 4
  %84 = call i32 @list_del(i32* %83)
  br label %85

85:                                               ; preds = %71
  %86 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %5, align 8
  %87 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %86, i32 -1
  store %struct.nvmet_fc_fcp_iod* %87, %struct.nvmet_fc_fcp_iod** %5, align 8
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %6, align 4
  br label %68

90:                                               ; preds = %68
  br label %97

91:                                               ; preds = %16
  br label %92

92:                                               ; preds = %91
  %93 = load %struct.nvmet_fc_fcp_iod*, %struct.nvmet_fc_fcp_iod** %5, align 8
  %94 = getelementptr inbounds %struct.nvmet_fc_fcp_iod, %struct.nvmet_fc_fcp_iod* %93, i32 1
  store %struct.nvmet_fc_fcp_iod* %94, %struct.nvmet_fc_fcp_iod** %5, align 8
  %95 = load i32, i32* %6, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %6, align 4
  br label %10

97:                                               ; preds = %90, %10
  ret void
}

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @fc_dma_map_single(i32, i32*, i32, i32) #1

declare dso_local i64 @fc_dma_mapping_error(i32, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @fc_dma_unmap_single(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
