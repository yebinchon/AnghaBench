; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_unmap_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_unmap_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_dev = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.request = type { i32 }
%struct.nvme_iod = type { i32, i32, i64, i32, i64, i32 }
%struct.nvme_sgl_desc = type { i32 }

@SGES_PER_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_dev*, %struct.request*)* @nvme_unmap_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_unmap_data(%struct.nvme_dev* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.nvme_dev*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.nvme_iod*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.nvme_sgl_desc*, align 8
  %12 = alloca i32*, align 8
  store %struct.nvme_dev* %0, %struct.nvme_dev** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %13 = load %struct.request*, %struct.request** %4, align 8
  %14 = call %struct.nvme_iod* @blk_mq_rq_to_pdu(%struct.request* %13)
  store %struct.nvme_iod* %14, %struct.nvme_iod** %5, align 8
  %15 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %16 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = udiv i64 %19, 4
  %21 = sub i64 %20, 1
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %6, align 4
  %23 = load %struct.nvme_iod*, %struct.nvme_iod** %5, align 8
  %24 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %7, align 4
  %26 = load %struct.nvme_iod*, %struct.nvme_iod** %5, align 8
  %27 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %2
  %31 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %32 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.nvme_iod*, %struct.nvme_iod** %5, align 8
  %36 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.request*, %struct.request** %4, align 8
  %39 = call i32 @rq_dma_dir(%struct.request* %38)
  %40 = call i32 @dma_unmap_page(i32 %33, i32 %34, i64 %37, i32 %39)
  br label %153

41:                                               ; preds = %2
  %42 = load %struct.nvme_iod*, %struct.nvme_iod** %5, align 8
  %43 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 @WARN_ON_ONCE(i32 %47)
  %49 = load %struct.nvme_iod*, %struct.nvme_iod** %5, align 8
  %50 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @sg_page(i32 %51)
  %53 = call i64 @is_pci_p2pdma_page(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %41
  %56 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %57 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.nvme_iod*, %struct.nvme_iod** %5, align 8
  %60 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.nvme_iod*, %struct.nvme_iod** %5, align 8
  %63 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.request*, %struct.request** %4, align 8
  %66 = call i32 @rq_dma_dir(%struct.request* %65)
  %67 = call i32 @pci_p2pdma_unmap_sg(i32 %58, i32 %61, i32 %64, i32 %66)
  br label %81

68:                                               ; preds = %41
  %69 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %70 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.nvme_iod*, %struct.nvme_iod** %5, align 8
  %73 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.nvme_iod*, %struct.nvme_iod** %5, align 8
  %76 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.request*, %struct.request** %4, align 8
  %79 = call i32 @rq_dma_dir(%struct.request* %78)
  %80 = call i32 @dma_unmap_sg(i32 %71, i32 %74, i32 %77, i32 %79)
  br label %81

81:                                               ; preds = %68, %55
  %82 = load %struct.nvme_iod*, %struct.nvme_iod** %5, align 8
  %83 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %81
  %87 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %88 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.request*, %struct.request** %4, align 8
  %91 = call i8** @nvme_pci_iod_list(%struct.request* %90)
  %92 = getelementptr inbounds i8*, i8** %91, i64 0
  %93 = load i8*, i8** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @dma_pool_free(i32 %89, i8* %93, i32 %94)
  br label %96

96:                                               ; preds = %86, %81
  store i32 0, i32* %9, align 4
  br label %97

97:                                               ; preds = %142, %96
  %98 = load i32, i32* %9, align 4
  %99 = load %struct.nvme_iod*, %struct.nvme_iod** %5, align 8
  %100 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp slt i32 %98, %101
  br i1 %102, label %103, label %145

103:                                              ; preds = %97
  %104 = load %struct.request*, %struct.request** %4, align 8
  %105 = call i8** @nvme_pci_iod_list(%struct.request* %104)
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8*, i8** %105, i64 %107
  %109 = load i8*, i8** %108, align 8
  store i8* %109, i8** %10, align 8
  %110 = load %struct.nvme_iod*, %struct.nvme_iod** %5, align 8
  %111 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %125

114:                                              ; preds = %103
  %115 = load i8*, i8** %10, align 8
  %116 = bitcast i8* %115 to %struct.nvme_sgl_desc*
  store %struct.nvme_sgl_desc* %116, %struct.nvme_sgl_desc** %11, align 8
  %117 = load %struct.nvme_sgl_desc*, %struct.nvme_sgl_desc** %11, align 8
  %118 = load i32, i32* @SGES_PER_PAGE, align 4
  %119 = sub nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.nvme_sgl_desc, %struct.nvme_sgl_desc* %117, i64 %120
  %122 = getelementptr inbounds %struct.nvme_sgl_desc, %struct.nvme_sgl_desc* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @le64_to_cpu(i32 %123)
  store i32 %124, i32* %8, align 4
  br label %134

125:                                              ; preds = %103
  %126 = load i8*, i8** %10, align 8
  %127 = bitcast i8* %126 to i32*
  store i32* %127, i32** %12, align 8
  %128 = load i32*, i32** %12, align 8
  %129 = load i32, i32* %6, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @le64_to_cpu(i32 %132)
  store i32 %133, i32* %8, align 4
  br label %134

134:                                              ; preds = %125, %114
  %135 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %136 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i8*, i8** %10, align 8
  %139 = load i32, i32* %7, align 4
  %140 = call i32 @dma_pool_free(i32 %137, i8* %138, i32 %139)
  %141 = load i32, i32* %8, align 4
  store i32 %141, i32* %7, align 4
  br label %142

142:                                              ; preds = %134
  %143 = load i32, i32* %9, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %9, align 4
  br label %97

145:                                              ; preds = %97
  %146 = load %struct.nvme_iod*, %struct.nvme_iod** %5, align 8
  %147 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %150 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @mempool_free(i32 %148, i32 %151)
  br label %153

153:                                              ; preds = %145, %30
  ret void
}

declare dso_local %struct.nvme_iod* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i32 @dma_unmap_page(i32, i32, i64, i32) #1

declare dso_local i32 @rq_dma_dir(%struct.request*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @is_pci_p2pdma_page(i32) #1

declare dso_local i32 @sg_page(i32) #1

declare dso_local i32 @pci_p2pdma_unmap_sg(i32, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_sg(i32, i32, i32, i32) #1

declare dso_local i32 @dma_pool_free(i32, i8*, i32) #1

declare dso_local i8** @nvme_pci_iod_list(%struct.request*) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @mempool_free(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
