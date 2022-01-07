; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fc.c_nvmet_fc_alloc_ls_iodlist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fc.c_nvmet_fc_alloc_ls_iodlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_fc_tgtport = type { i32, i32, %struct.nvmet_fc_ls_iod* }
%struct.nvmet_fc_ls_iod = type { i32, %struct.nvmet_fc_ls_iod*, i32, %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_tgtport*, i32 }

@NVMET_LS_CTX_COUNT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nvmet_fc_handle_ls_rqst_work = common dso_local global i32 0, align 4
@NVME_FC_MAX_LS_BUFFER_SIZE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvmet_fc_tgtport*)* @nvmet_fc_alloc_ls_iodlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvmet_fc_alloc_ls_iodlist(%struct.nvmet_fc_tgtport* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvmet_fc_tgtport*, align 8
  %4 = alloca %struct.nvmet_fc_ls_iod*, align 8
  %5 = alloca i32, align 4
  store %struct.nvmet_fc_tgtport* %0, %struct.nvmet_fc_tgtport** %3, align 8
  %6 = load i32, i32* @NVMET_LS_CTX_COUNT, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call i8* @kcalloc(i32 %6, i32 48, i32 %7)
  %9 = bitcast i8* %8 to %struct.nvmet_fc_ls_iod*
  store %struct.nvmet_fc_ls_iod* %9, %struct.nvmet_fc_ls_iod** %4, align 8
  %10 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %4, align 8
  %11 = icmp ne %struct.nvmet_fc_ls_iod* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %125

15:                                               ; preds = %1
  %16 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %4, align 8
  %17 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %3, align 8
  %18 = getelementptr inbounds %struct.nvmet_fc_tgtport, %struct.nvmet_fc_tgtport* %17, i32 0, i32 2
  store %struct.nvmet_fc_ls_iod* %16, %struct.nvmet_fc_ls_iod** %18, align 8
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %77, %15
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @NVMET_LS_CTX_COUNT, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %82

23:                                               ; preds = %19
  %24 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %4, align 8
  %25 = getelementptr inbounds %struct.nvmet_fc_ls_iod, %struct.nvmet_fc_ls_iod* %24, i32 0, i32 5
  %26 = load i32, i32* @nvmet_fc_handle_ls_rqst_work, align 4
  %27 = call i32 @INIT_WORK(i32* %25, i32 %26)
  %28 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %3, align 8
  %29 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %4, align 8
  %30 = getelementptr inbounds %struct.nvmet_fc_ls_iod, %struct.nvmet_fc_ls_iod* %29, i32 0, i32 4
  store %struct.nvmet_fc_tgtport* %28, %struct.nvmet_fc_tgtport** %30, align 8
  %31 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %4, align 8
  %32 = getelementptr inbounds %struct.nvmet_fc_ls_iod, %struct.nvmet_fc_ls_iod* %31, i32 0, i32 0
  %33 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %3, align 8
  %34 = getelementptr inbounds %struct.nvmet_fc_tgtport, %struct.nvmet_fc_tgtport* %33, i32 0, i32 1
  %35 = call i32 @list_add_tail(i32* %32, i32* %34)
  %36 = load i32, i32* @NVME_FC_MAX_LS_BUFFER_SIZE, align 4
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i8* @kcalloc(i32 2, i32 %36, i32 %37)
  %39 = bitcast i8* %38 to %struct.nvmet_fc_ls_iod*
  %40 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %4, align 8
  %41 = getelementptr inbounds %struct.nvmet_fc_ls_iod, %struct.nvmet_fc_ls_iod* %40, i32 0, i32 1
  store %struct.nvmet_fc_ls_iod* %39, %struct.nvmet_fc_ls_iod** %41, align 8
  %42 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %4, align 8
  %43 = getelementptr inbounds %struct.nvmet_fc_ls_iod, %struct.nvmet_fc_ls_iod* %42, i32 0, i32 1
  %44 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %43, align 8
  %45 = icmp ne %struct.nvmet_fc_ls_iod* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %23
  br label %83

47:                                               ; preds = %23
  %48 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %4, align 8
  %49 = getelementptr inbounds %struct.nvmet_fc_ls_iod, %struct.nvmet_fc_ls_iod* %48, i32 0, i32 1
  %50 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %49, align 8
  %51 = load i32, i32* @NVME_FC_MAX_LS_BUFFER_SIZE, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.nvmet_fc_ls_iod, %struct.nvmet_fc_ls_iod* %50, i64 %52
  %54 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %4, align 8
  %55 = getelementptr inbounds %struct.nvmet_fc_ls_iod, %struct.nvmet_fc_ls_iod* %54, i32 0, i32 3
  store %struct.nvmet_fc_ls_iod* %53, %struct.nvmet_fc_ls_iod** %55, align 8
  %56 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %3, align 8
  %57 = getelementptr inbounds %struct.nvmet_fc_tgtport, %struct.nvmet_fc_tgtport* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %4, align 8
  %60 = getelementptr inbounds %struct.nvmet_fc_ls_iod, %struct.nvmet_fc_ls_iod* %59, i32 0, i32 3
  %61 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %60, align 8
  %62 = load i32, i32* @NVME_FC_MAX_LS_BUFFER_SIZE, align 4
  %63 = load i32, i32* @DMA_TO_DEVICE, align 4
  %64 = call i32 @fc_dma_map_single(i32 %58, %struct.nvmet_fc_ls_iod* %61, i32 %62, i32 %63)
  %65 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %4, align 8
  %66 = getelementptr inbounds %struct.nvmet_fc_ls_iod, %struct.nvmet_fc_ls_iod* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %3, align 8
  %68 = getelementptr inbounds %struct.nvmet_fc_tgtport, %struct.nvmet_fc_tgtport* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %4, align 8
  %71 = getelementptr inbounds %struct.nvmet_fc_ls_iod, %struct.nvmet_fc_ls_iod* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @fc_dma_mapping_error(i32 %69, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %47
  br label %83

76:                                               ; preds = %47
  br label %77

77:                                               ; preds = %76
  %78 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %4, align 8
  %79 = getelementptr inbounds %struct.nvmet_fc_ls_iod, %struct.nvmet_fc_ls_iod* %78, i32 1
  store %struct.nvmet_fc_ls_iod* %79, %struct.nvmet_fc_ls_iod** %4, align 8
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %5, align 4
  br label %19

82:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %125

83:                                               ; preds = %75, %46
  %84 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %4, align 8
  %85 = getelementptr inbounds %struct.nvmet_fc_ls_iod, %struct.nvmet_fc_ls_iod* %84, i32 0, i32 1
  %86 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %85, align 8
  %87 = call i32 @kfree(%struct.nvmet_fc_ls_iod* %86)
  %88 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %4, align 8
  %89 = getelementptr inbounds %struct.nvmet_fc_ls_iod, %struct.nvmet_fc_ls_iod* %88, i32 0, i32 0
  %90 = call i32 @list_del(i32* %89)
  %91 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %4, align 8
  %92 = getelementptr inbounds %struct.nvmet_fc_ls_iod, %struct.nvmet_fc_ls_iod* %91, i32 -1
  store %struct.nvmet_fc_ls_iod* %92, %struct.nvmet_fc_ls_iod** %4, align 8
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %115, %83
  %96 = load i32, i32* %5, align 4
  %97 = icmp sge i32 %96, 0
  br i1 %97, label %98, label %120

98:                                               ; preds = %95
  %99 = load %struct.nvmet_fc_tgtport*, %struct.nvmet_fc_tgtport** %3, align 8
  %100 = getelementptr inbounds %struct.nvmet_fc_tgtport, %struct.nvmet_fc_tgtport* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %4, align 8
  %103 = getelementptr inbounds %struct.nvmet_fc_ls_iod, %struct.nvmet_fc_ls_iod* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @NVME_FC_MAX_LS_BUFFER_SIZE, align 4
  %106 = load i32, i32* @DMA_TO_DEVICE, align 4
  %107 = call i32 @fc_dma_unmap_single(i32 %101, i32 %104, i32 %105, i32 %106)
  %108 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %4, align 8
  %109 = getelementptr inbounds %struct.nvmet_fc_ls_iod, %struct.nvmet_fc_ls_iod* %108, i32 0, i32 1
  %110 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %109, align 8
  %111 = call i32 @kfree(%struct.nvmet_fc_ls_iod* %110)
  %112 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %4, align 8
  %113 = getelementptr inbounds %struct.nvmet_fc_ls_iod, %struct.nvmet_fc_ls_iod* %112, i32 0, i32 0
  %114 = call i32 @list_del(i32* %113)
  br label %115

115:                                              ; preds = %98
  %116 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %4, align 8
  %117 = getelementptr inbounds %struct.nvmet_fc_ls_iod, %struct.nvmet_fc_ls_iod* %116, i32 -1
  store %struct.nvmet_fc_ls_iod* %117, %struct.nvmet_fc_ls_iod** %4, align 8
  %118 = load i32, i32* %5, align 4
  %119 = add nsw i32 %118, -1
  store i32 %119, i32* %5, align 4
  br label %95

120:                                              ; preds = %95
  %121 = load %struct.nvmet_fc_ls_iod*, %struct.nvmet_fc_ls_iod** %4, align 8
  %122 = call i32 @kfree(%struct.nvmet_fc_ls_iod* %121)
  %123 = load i32, i32* @EFAULT, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %2, align 4
  br label %125

125:                                              ; preds = %120, %82, %12
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @fc_dma_map_single(i32, %struct.nvmet_fc_ls_iod*, i32, i32) #1

declare dso_local i64 @fc_dma_mapping_error(i32, i32) #1

declare dso_local i32 @kfree(%struct.nvmet_fc_ls_iod*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @fc_dma_unmap_single(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
