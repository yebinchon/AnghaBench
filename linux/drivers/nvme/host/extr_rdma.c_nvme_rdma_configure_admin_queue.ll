; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_rdma.c_nvme_rdma_configure_admin_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_rdma.c_nvme_rdma_configure_admin_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_rdma_ctrl = type { i32, %struct.TYPE_13__*, %struct.TYPE_15__, %struct.TYPE_12__*, %struct.TYPE_16__, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_12__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32, i8*, i8*, i8*, i32 }

@NVME_AQ_DEPTH = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@SZ_4K = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_rdma_ctrl*, i32)* @nvme_rdma_configure_admin_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_rdma_configure_admin_queue(%struct.nvme_rdma_ctrl* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvme_rdma_ctrl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nvme_rdma_ctrl* %0, %struct.nvme_rdma_ctrl** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %4, align 8
  %8 = load i32, i32* @NVME_AQ_DEPTH, align 4
  %9 = call i32 @nvme_rdma_alloc_queue(%struct.nvme_rdma_ctrl* %7, i32 0, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %213

14:                                               ; preds = %2
  %15 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %4, align 8
  %16 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %15, i32 0, i32 1
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %21 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %4, align 8
  %22 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %21, i32 0, i32 3
  store %struct.TYPE_12__* %20, %struct.TYPE_12__** %22, align 8
  %23 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %4, align 8
  %24 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %23, i32 0, i32 3
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_to_node(i32 %29)
  %31 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %4, align 8
  %32 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 5
  store i32 %30, i32* %33, align 8
  %34 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %4, align 8
  %35 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %34, i32 0, i32 3
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %37, align 8
  %39 = call i32 @nvme_rdma_get_max_fr_pages(%struct.TYPE_14__* %38)
  %40 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %4, align 8
  %41 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %4, align 8
  %43 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %42, i32 0, i32 3
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %45, align 8
  %47 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %4, align 8
  %48 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %47, i32 0, i32 2
  %49 = load i32, i32* @DMA_TO_DEVICE, align 4
  %50 = call i32 @nvme_rdma_alloc_qe(%struct.TYPE_14__* %46, %struct.TYPE_15__* %48, i32 4, i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %14
  br label %206

54:                                               ; preds = %14
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %115

57:                                               ; preds = %54
  %58 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %4, align 8
  %59 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %58, i32 0, i32 4
  %60 = call i8* @nvme_rdma_alloc_tagset(%struct.TYPE_16__* %59, i32 1)
  %61 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %4, align 8
  %62 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 2
  store i8* %60, i8** %63, align 8
  %64 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %4, align 8
  %65 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 2
  %67 = load i8*, i8** %66, align 8
  %68 = call i64 @IS_ERR(i8* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %57
  %71 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %4, align 8
  %72 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 2
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @PTR_ERR(i8* %74)
  store i32 %75, i32* %6, align 4
  br label %193

76:                                               ; preds = %57
  %77 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %4, align 8
  %78 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %77, i32 0, i32 5
  %79 = call i8* @blk_mq_init_queue(i32* %78)
  %80 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %4, align 8
  %81 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 3
  store i8* %79, i8** %82, align 8
  %83 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %4, align 8
  %84 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 3
  %86 = load i8*, i8** %85, align 8
  %87 = call i64 @IS_ERR(i8* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %76
  %90 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %4, align 8
  %91 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %90, i32 0, i32 4
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 3
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @PTR_ERR(i8* %93)
  store i32 %94, i32* %6, align 4
  br label %183

95:                                               ; preds = %76
  %96 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %4, align 8
  %97 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %96, i32 0, i32 5
  %98 = call i8* @blk_mq_init_queue(i32* %97)
  %99 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %4, align 8
  %100 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %99, i32 0, i32 4
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 4
  store i8* %98, i8** %101, align 8
  %102 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %4, align 8
  %103 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %102, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 4
  %105 = load i8*, i8** %104, align 8
  %106 = call i64 @IS_ERR(i8* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %95
  %109 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %4, align 8
  %110 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 4
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @PTR_ERR(i8* %112)
  store i32 %113, i32* %6, align 4
  br label %173

114:                                              ; preds = %95
  br label %115

115:                                              ; preds = %114, %54
  %116 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %4, align 8
  %117 = call i32 @nvme_rdma_start_queue(%struct.nvme_rdma_ctrl* %116, i32 0)
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %6, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  br label %163

121:                                              ; preds = %115
  %122 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %4, align 8
  %123 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %122, i32 0, i32 4
  %124 = call i32 @nvme_enable_ctrl(%struct.TYPE_16__* %123)
  store i32 %124, i32* %6, align 4
  %125 = load i32, i32* %6, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %121
  br label %157

128:                                              ; preds = %121
  %129 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %4, align 8
  %130 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %4, align 8
  %133 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %132, i32 0, i32 4
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 0
  store i32 %131, i32* %134, align 8
  %135 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %4, align 8
  %136 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @SZ_4K, align 4
  %139 = call i32 @ilog2(i32 %138)
  %140 = sub nsw i32 %139, 9
  %141 = shl i32 %137, %140
  %142 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %4, align 8
  %143 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %142, i32 0, i32 4
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 1
  store i32 %141, i32* %144, align 4
  %145 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %4, align 8
  %146 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %145, i32 0, i32 4
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 4
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 @blk_mq_unquiesce_queue(i8* %148)
  %150 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %4, align 8
  %151 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %150, i32 0, i32 4
  %152 = call i32 @nvme_init_identify(%struct.TYPE_16__* %151)
  store i32 %152, i32* %6, align 4
  %153 = load i32, i32* %6, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %128
  br label %157

156:                                              ; preds = %128
  store i32 0, i32* %3, align 4
  br label %213

157:                                              ; preds = %155, %127
  %158 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %4, align 8
  %159 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %158, i32 0, i32 1
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i64 0
  %162 = call i32 @nvme_rdma_stop_queue(%struct.TYPE_13__* %161)
  br label %163

163:                                              ; preds = %157, %120
  %164 = load i32, i32* %5, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %163
  %167 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %4, align 8
  %168 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %167, i32 0, i32 4
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 4
  %170 = load i8*, i8** %169, align 8
  %171 = call i32 @blk_cleanup_queue(i8* %170)
  br label %172

172:                                              ; preds = %166, %163
  br label %173

173:                                              ; preds = %172, %108
  %174 = load i32, i32* %5, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %182

176:                                              ; preds = %173
  %177 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %4, align 8
  %178 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %177, i32 0, i32 4
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 3
  %180 = load i8*, i8** %179, align 8
  %181 = call i32 @blk_cleanup_queue(i8* %180)
  br label %182

182:                                              ; preds = %176, %173
  br label %183

183:                                              ; preds = %182, %89
  %184 = load i32, i32* %5, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %192

186:                                              ; preds = %183
  %187 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %4, align 8
  %188 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %187, i32 0, i32 4
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 2
  %190 = load i8*, i8** %189, align 8
  %191 = call i32 @blk_mq_free_tag_set(i8* %190)
  br label %192

192:                                              ; preds = %186, %183
  br label %193

193:                                              ; preds = %192, %70
  %194 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %4, align 8
  %195 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %194, i32 0, i32 3
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %197, align 8
  %199 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %4, align 8
  %200 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %199, i32 0, i32 2
  %201 = load i32, i32* @DMA_TO_DEVICE, align 4
  %202 = call i32 @nvme_rdma_free_qe(%struct.TYPE_14__* %198, %struct.TYPE_15__* %200, i32 4, i32 %201)
  %203 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %4, align 8
  %204 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 0
  store i32* null, i32** %205, align 8
  br label %206

206:                                              ; preds = %193, %53
  %207 = load %struct.nvme_rdma_ctrl*, %struct.nvme_rdma_ctrl** %4, align 8
  %208 = getelementptr inbounds %struct.nvme_rdma_ctrl, %struct.nvme_rdma_ctrl* %207, i32 0, i32 1
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i64 0
  %211 = call i32 @nvme_rdma_free_queue(%struct.TYPE_13__* %210)
  %212 = load i32, i32* %6, align 4
  store i32 %212, i32* %3, align 4
  br label %213

213:                                              ; preds = %206, %156, %12
  %214 = load i32, i32* %3, align 4
  ret i32 %214
}

declare dso_local i32 @nvme_rdma_alloc_queue(%struct.nvme_rdma_ctrl*, i32, i32) #1

declare dso_local i32 @dev_to_node(i32) #1

declare dso_local i32 @nvme_rdma_get_max_fr_pages(%struct.TYPE_14__*) #1

declare dso_local i32 @nvme_rdma_alloc_qe(%struct.TYPE_14__*, %struct.TYPE_15__*, i32, i32) #1

declare dso_local i8* @nvme_rdma_alloc_tagset(%struct.TYPE_16__*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @blk_mq_init_queue(i32*) #1

declare dso_local i32 @nvme_rdma_start_queue(%struct.nvme_rdma_ctrl*, i32) #1

declare dso_local i32 @nvme_enable_ctrl(%struct.TYPE_16__*) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @blk_mq_unquiesce_queue(i8*) #1

declare dso_local i32 @nvme_init_identify(%struct.TYPE_16__*) #1

declare dso_local i32 @nvme_rdma_stop_queue(%struct.TYPE_13__*) #1

declare dso_local i32 @blk_cleanup_queue(i8*) #1

declare dso_local i32 @blk_mq_free_tag_set(i8*) #1

declare dso_local i32 @nvme_rdma_free_qe(%struct.TYPE_14__*, %struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @nvme_rdma_free_queue(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
