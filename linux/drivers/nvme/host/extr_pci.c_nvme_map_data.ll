; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_map_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_pci.c_nvme_map_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_dev = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.request = type { i32 }
%struct.nvme_command = type { i32 }
%struct.nvme_iod = type { i64, i32, i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.bio_vec = type { i32, i32, i32 }

@BLK_STS_RESOURCE = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@DMA_ATTR_NO_WARN = common dso_local global i32 0, align 4
@BLK_STS_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.nvme_dev*, %struct.request*, %struct.nvme_command*)* @nvme_map_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nvme_map_data(%struct.nvme_dev* %0, %struct.request* %1, %struct.nvme_command* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.nvme_dev*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca %struct.nvme_command*, align 8
  %8 = alloca %struct.nvme_iod*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.bio_vec, align 4
  %12 = alloca { i64, i32 }, align 8
  store %struct.nvme_dev* %0, %struct.nvme_dev** %5, align 8
  store %struct.request* %1, %struct.request** %6, align 8
  store %struct.nvme_command* %2, %struct.nvme_command** %7, align 8
  %13 = load %struct.request*, %struct.request** %6, align 8
  %14 = call %struct.nvme_iod* @blk_mq_rq_to_pdu(%struct.request* %13)
  store %struct.nvme_iod* %14, %struct.nvme_iod** %8, align 8
  %15 = load i64, i64* @BLK_STS_RESOURCE, align 8
  store i64 %15, i64* %9, align 8
  %16 = load %struct.request*, %struct.request** %6, align 8
  %17 = call i32 @blk_rq_nr_phys_segments(%struct.request* %16)
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %68

19:                                               ; preds = %3
  %20 = load %struct.request*, %struct.request** %6, align 8
  %21 = call { i64, i32 } @req_bvec(%struct.request* %20)
  store { i64, i32 } %21, { i64, i32 }* %12, align 8
  %22 = bitcast { i64, i32 }* %12 to i8*
  %23 = bitcast %struct.bio_vec* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 8 %22, i64 12, i1 false)
  %24 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %11, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @is_pci_p2pdma_page(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %67, label %28

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %11, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %11, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %30, %32
  %34 = load %struct.nvme_dev*, %struct.nvme_dev** %5, align 8
  %35 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %37, 2
  %39 = icmp sle i32 %33, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %28
  %41 = load %struct.nvme_dev*, %struct.nvme_dev** %5, align 8
  %42 = load %struct.request*, %struct.request** %6, align 8
  %43 = load %struct.nvme_command*, %struct.nvme_command** %7, align 8
  %44 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %43, i32 0, i32 0
  %45 = call i64 @nvme_setup_prp_simple(%struct.nvme_dev* %41, %struct.request* %42, i32* %44, %struct.bio_vec* %11)
  store i64 %45, i64* %4, align 8
  br label %179

46:                                               ; preds = %28
  %47 = load %struct.nvme_iod*, %struct.nvme_iod** %8, align 8
  %48 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %47, i32 0, i32 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %46
  %54 = load %struct.nvme_dev*, %struct.nvme_dev** %5, align 8
  %55 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 3
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %53
  %61 = load %struct.nvme_dev*, %struct.nvme_dev** %5, align 8
  %62 = load %struct.request*, %struct.request** %6, align 8
  %63 = load %struct.nvme_command*, %struct.nvme_command** %7, align 8
  %64 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %63, i32 0, i32 0
  %65 = call i64 @nvme_setup_sgl_simple(%struct.nvme_dev* %61, %struct.request* %62, i32* %64, %struct.bio_vec* %11)
  store i64 %65, i64* %4, align 8
  br label %179

66:                                               ; preds = %53, %46
  br label %67

67:                                               ; preds = %66, %19
  br label %68

68:                                               ; preds = %67, %3
  %69 = load %struct.nvme_iod*, %struct.nvme_iod** %8, align 8
  %70 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %69, i32 0, i32 3
  store i64 0, i64* %70, align 8
  %71 = load %struct.nvme_dev*, %struct.nvme_dev** %5, align 8
  %72 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @GFP_ATOMIC, align 4
  %75 = call i32 @mempool_alloc(i32 %73, i32 %74)
  %76 = load %struct.nvme_iod*, %struct.nvme_iod** %8, align 8
  %77 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 4
  %78 = load %struct.nvme_iod*, %struct.nvme_iod** %8, align 8
  %79 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %68
  %83 = load i64, i64* @BLK_STS_RESOURCE, align 8
  store i64 %83, i64* %4, align 8
  br label %179

84:                                               ; preds = %68
  %85 = load %struct.nvme_iod*, %struct.nvme_iod** %8, align 8
  %86 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.request*, %struct.request** %6, align 8
  %89 = call i32 @blk_rq_nr_phys_segments(%struct.request* %88)
  %90 = call i32 @sg_init_table(i32 %87, i32 %89)
  %91 = load %struct.request*, %struct.request** %6, align 8
  %92 = getelementptr inbounds %struct.request, %struct.request* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.request*, %struct.request** %6, align 8
  %95 = load %struct.nvme_iod*, %struct.nvme_iod** %8, align 8
  %96 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @blk_rq_map_sg(i32 %93, %struct.request* %94, i32 %97)
  %99 = load %struct.nvme_iod*, %struct.nvme_iod** %8, align 8
  %100 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 8
  %101 = load %struct.nvme_iod*, %struct.nvme_iod** %8, align 8
  %102 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %84
  br label %169

106:                                              ; preds = %84
  %107 = load %struct.nvme_iod*, %struct.nvme_iod** %8, align 8
  %108 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @sg_page(i32 %109)
  %111 = call i64 @is_pci_p2pdma_page(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %127

113:                                              ; preds = %106
  %114 = load %struct.nvme_dev*, %struct.nvme_dev** %5, align 8
  %115 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.nvme_iod*, %struct.nvme_iod** %8, align 8
  %118 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.nvme_iod*, %struct.nvme_iod** %8, align 8
  %121 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.request*, %struct.request** %6, align 8
  %124 = call i32 @rq_dma_dir(%struct.request* %123)
  %125 = load i32, i32* @DMA_ATTR_NO_WARN, align 4
  %126 = call i32 @pci_p2pdma_map_sg_attrs(i32 %116, i32 %119, i32 %122, i32 %124, i32 %125)
  store i32 %126, i32* %10, align 4
  br label %141

127:                                              ; preds = %106
  %128 = load %struct.nvme_dev*, %struct.nvme_dev** %5, align 8
  %129 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.nvme_iod*, %struct.nvme_iod** %8, align 8
  %132 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.nvme_iod*, %struct.nvme_iod** %8, align 8
  %135 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.request*, %struct.request** %6, align 8
  %138 = call i32 @rq_dma_dir(%struct.request* %137)
  %139 = load i32, i32* @DMA_ATTR_NO_WARN, align 4
  %140 = call i32 @dma_map_sg_attrs(i32 %130, i32 %133, i32 %136, i32 %138, i32 %139)
  store i32 %140, i32* %10, align 4
  br label %141

141:                                              ; preds = %127, %113
  %142 = load i32, i32* %10, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %141
  br label %169

145:                                              ; preds = %141
  %146 = load %struct.nvme_dev*, %struct.nvme_dev** %5, align 8
  %147 = load %struct.request*, %struct.request** %6, align 8
  %148 = call i64 @nvme_pci_use_sgls(%struct.nvme_dev* %146, %struct.request* %147)
  %149 = load %struct.nvme_iod*, %struct.nvme_iod** %8, align 8
  %150 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %149, i32 0, i32 0
  store i64 %148, i64* %150, align 8
  %151 = load %struct.nvme_iod*, %struct.nvme_iod** %8, align 8
  %152 = getelementptr inbounds %struct.nvme_iod, %struct.nvme_iod* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %162

155:                                              ; preds = %145
  %156 = load %struct.nvme_dev*, %struct.nvme_dev** %5, align 8
  %157 = load %struct.request*, %struct.request** %6, align 8
  %158 = load %struct.nvme_command*, %struct.nvme_command** %7, align 8
  %159 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %158, i32 0, i32 0
  %160 = load i32, i32* %10, align 4
  %161 = call i64 @nvme_pci_setup_sgls(%struct.nvme_dev* %156, %struct.request* %157, i32* %159, i32 %160)
  store i64 %161, i64* %9, align 8
  br label %168

162:                                              ; preds = %145
  %163 = load %struct.nvme_dev*, %struct.nvme_dev** %5, align 8
  %164 = load %struct.request*, %struct.request** %6, align 8
  %165 = load %struct.nvme_command*, %struct.nvme_command** %7, align 8
  %166 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %165, i32 0, i32 0
  %167 = call i64 @nvme_pci_setup_prps(%struct.nvme_dev* %163, %struct.request* %164, i32* %166)
  store i64 %167, i64* %9, align 8
  br label %168

168:                                              ; preds = %162, %155
  br label %169

169:                                              ; preds = %168, %144, %105
  %170 = load i64, i64* %9, align 8
  %171 = load i64, i64* @BLK_STS_OK, align 8
  %172 = icmp ne i64 %170, %171
  br i1 %172, label %173, label %177

173:                                              ; preds = %169
  %174 = load %struct.nvme_dev*, %struct.nvme_dev** %5, align 8
  %175 = load %struct.request*, %struct.request** %6, align 8
  %176 = call i32 @nvme_unmap_data(%struct.nvme_dev* %174, %struct.request* %175)
  br label %177

177:                                              ; preds = %173, %169
  %178 = load i64, i64* %9, align 8
  store i64 %178, i64* %4, align 8
  br label %179

179:                                              ; preds = %177, %82, %60, %40
  %180 = load i64, i64* %4, align 8
  ret i64 %180
}

declare dso_local %struct.nvme_iod* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i32 @blk_rq_nr_phys_segments(%struct.request*) #1

declare dso_local { i64, i32 } @req_bvec(%struct.request*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @is_pci_p2pdma_page(i32) #1

declare dso_local i64 @nvme_setup_prp_simple(%struct.nvme_dev*, %struct.request*, i32*, %struct.bio_vec*) #1

declare dso_local i64 @nvme_setup_sgl_simple(%struct.nvme_dev*, %struct.request*, i32*, %struct.bio_vec*) #1

declare dso_local i32 @mempool_alloc(i32, i32) #1

declare dso_local i32 @sg_init_table(i32, i32) #1

declare dso_local i32 @blk_rq_map_sg(i32, %struct.request*, i32) #1

declare dso_local i32 @sg_page(i32) #1

declare dso_local i32 @pci_p2pdma_map_sg_attrs(i32, i32, i32, i32, i32) #1

declare dso_local i32 @rq_dma_dir(%struct.request*) #1

declare dso_local i32 @dma_map_sg_attrs(i32, i32, i32, i32, i32) #1

declare dso_local i64 @nvme_pci_use_sgls(%struct.nvme_dev*, %struct.request*) #1

declare dso_local i64 @nvme_pci_setup_sgls(%struct.nvme_dev*, %struct.request*, i32*, i32) #1

declare dso_local i64 @nvme_pci_setup_prps(%struct.nvme_dev*, %struct.request*, i32*) #1

declare dso_local i32 @nvme_unmap_data(%struct.nvme_dev*, %struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
