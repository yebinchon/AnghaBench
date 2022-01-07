; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fc.c_nvmet_fc_free_ls_iodlist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fc.c_nvmet_fc_free_ls_iodlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_fc_tgtport = type { %struct.nvmet_fc_ls_iod*, i32 }
%struct.nvmet_fc_ls_iod = type { i32, %struct.nvmet_fc_ls_iod*, i32 }

@NVMET_LS_CTX_COUNT = common dso_local global i32 0, align 4
@NVME_FC_MAX_LS_BUFFER_SIZE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvmet_fc_tgtport*)* @nvmet_fc_free_ls_iodlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvmet_fc_free_ls_iodlist(%struct.nvmet_fc_tgtport* %0) #0 {
  %2 = alloca %struct.nvmet_fc_tgtport*, align 8
  %3 = alloca %struct.nvmet_fc_ls_iod*, align 8
  %4 = alloca i32, align 4
  store %struct.nvmet_fc_tgtport* %0, %struct.nvmet_fc_tgtport** %2, align 8
  %5 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %2, align 8
  %6 = getelementptr inbounds %struct.nvmet_fc_tgtport, %struct.nvmet_fc_tgtport* %5, i32 0, i32 0
  %7 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %6, align 8
  store %struct.nvmet_fc_ls_iod* %7, %struct.nvmet_fc_ls_iod** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %29, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @NVMET_LS_CTX_COUNT, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %34

12:                                               ; preds = %8
  %13 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %2, align 8
  %14 = getelementptr inbounds %struct.nvmet_fc_tgtport, %struct.nvmet_fc_tgtport* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %3, align 8
  %17 = getelementptr inbounds %struct.nvmet_fc_ls_iod, %struct.nvmet_fc_ls_iod* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @NVME_FC_MAX_LS_BUFFER_SIZE, align 4
  %20 = load i32, i32* @DMA_TO_DEVICE, align 4
  %21 = call i32 @fc_dma_unmap_single(i32 %15, i32 %18, i32 %19, i32 %20)
  %22 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %3, align 8
  %23 = getelementptr inbounds %struct.nvmet_fc_ls_iod, %struct.nvmet_fc_ls_iod* %22, i32 0, i32 1
  %24 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %23, align 8
  %25 = call i32 @kfree(%struct.nvmet_fc_ls_iod* %24)
  %26 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %3, align 8
  %27 = getelementptr inbounds %struct.nvmet_fc_ls_iod, %struct.nvmet_fc_ls_iod* %26, i32 0, i32 0
  %28 = call i32 @list_del(i32* %27)
  br label %29

29:                                               ; preds = %12
  %30 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %3, align 8
  %31 = getelementptr inbounds %struct.nvmet_fc_ls_iod, %struct.nvmet_fc_ls_iod* %30, i32 1
  store %struct.nvmet_fc_ls_iod* %31, %struct.nvmet_fc_ls_iod** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %8

34:                                               ; preds = %8
  %35 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %2, align 8
  %36 = getelementptr inbounds %struct.nvmet_fc_tgtport, %struct.nvmet_fc_tgtport* %35, i32 0, i32 0
  %37 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %36, align 8
  %38 = call i32 @kfree(%struct.nvmet_fc_ls_iod* %37)
  ret void
}

declare dso_local i32 @fc_dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.nvmet_fc_ls_iod*) #1

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
