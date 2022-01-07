; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_mem.c_lpfc_mem_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_mem.c_lpfc_mem_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i64, i32*, %struct.TYPE_4__*, %struct.lpfc_dma_pool }
%struct.TYPE_4__ = type { i32 }
%struct.lpfc_dma_pool = type { %struct.TYPE_5__*, i64, i64 }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"lpfc_mbuf_pool\00", align 1
@LPFC_BPL_SIZE = common dso_local global i32 0, align 4
@LPFC_MBUF_POOL_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@LPFC_MEM_POOL_SIZE = common dso_local global i32 0, align 4
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"lpfc_hrb_pool\00", align 1
@LPFC_HDR_BUF_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"lpfc_drb_pool\00", align 1
@LPFC_DATA_BUF_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"lpfc_hbq_pool\00", align 1
@LPFC_DEVICE_DATA_POOL_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_mem_alloc(%struct.lpfc_hba* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lpfc_dma_pool*, align 8
  %7 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %9 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %8, i32 0, i32 11
  store %struct.lpfc_dma_pool* %9, %struct.lpfc_dma_pool** %6, align 8
  %10 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %11 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %10, i32 0, i32 10
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* @LPFC_BPL_SIZE, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i8* @dma_pool_create(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %13, i32 %14, i32 %15, i32 0)
  %17 = bitcast i8* %16 to i32*
  %18 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %19 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %18, i32 0, i32 1
  store i32* %17, i32** %19, align 8
  %20 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %21 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  br label %276

25:                                               ; preds = %2
  %26 = load i32, i32* @LPFC_MBUF_POOL_SIZE, align 4
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.TYPE_5__* @kmalloc_array(i32 %26, i32 4, i32 %27)
  %29 = load %struct.lpfc_dma_pool*, %struct.lpfc_dma_pool** %6, align 8
  %30 = getelementptr inbounds %struct.lpfc_dma_pool, %struct.lpfc_dma_pool* %29, i32 0, i32 0
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %30, align 8
  %31 = load %struct.lpfc_dma_pool*, %struct.lpfc_dma_pool** %6, align 8
  %32 = getelementptr inbounds %struct.lpfc_dma_pool, %struct.lpfc_dma_pool* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = icmp ne %struct.TYPE_5__* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %25
  br label %269

36:                                               ; preds = %25
  %37 = load %struct.lpfc_dma_pool*, %struct.lpfc_dma_pool** %6, align 8
  %38 = getelementptr inbounds %struct.lpfc_dma_pool, %struct.lpfc_dma_pool* %37, i32 0, i32 2
  store i64 0, i64* %38, align 8
  %39 = load %struct.lpfc_dma_pool*, %struct.lpfc_dma_pool** %6, align 8
  %40 = getelementptr inbounds %struct.lpfc_dma_pool, %struct.lpfc_dma_pool* %39, i32 0, i32 1
  store i64 0, i64* %40, align 8
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %84, %36
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @LPFC_MBUF_POOL_SIZE, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %87

45:                                               ; preds = %41
  %46 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %47 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = load %struct.lpfc_dma_pool*, %struct.lpfc_dma_pool** %6, align 8
  %51 = getelementptr inbounds %struct.lpfc_dma_pool, %struct.lpfc_dma_pool* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = call i32 @dma_pool_alloc(i32* %48, i32 %49, i32* %56)
  %58 = load %struct.lpfc_dma_pool*, %struct.lpfc_dma_pool** %6, align 8
  %59 = getelementptr inbounds %struct.lpfc_dma_pool, %struct.lpfc_dma_pool* %58, i32 0, i32 0
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  store i32 %57, i32* %64, align 4
  %65 = load %struct.lpfc_dma_pool*, %struct.lpfc_dma_pool** %6, align 8
  %66 = getelementptr inbounds %struct.lpfc_dma_pool, %struct.lpfc_dma_pool* %65, i32 0, i32 0
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %45
  br label %238

75:                                               ; preds = %45
  %76 = load %struct.lpfc_dma_pool*, %struct.lpfc_dma_pool** %6, align 8
  %77 = getelementptr inbounds %struct.lpfc_dma_pool, %struct.lpfc_dma_pool* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* %77, align 8
  %80 = load %struct.lpfc_dma_pool*, %struct.lpfc_dma_pool** %6, align 8
  %81 = getelementptr inbounds %struct.lpfc_dma_pool, %struct.lpfc_dma_pool* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, 1
  store i64 %83, i64* %81, align 8
  br label %84

84:                                               ; preds = %75
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %7, align 4
  br label %41

87:                                               ; preds = %41
  %88 = load i32, i32* @LPFC_MEM_POOL_SIZE, align 4
  %89 = call i8* @mempool_create_kmalloc_pool(i32 %88, i32 4)
  %90 = bitcast i8* %89 to i32*
  %91 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %92 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %91, i32 0, i32 2
  store i32* %90, i32** %92, align 8
  %93 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %94 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %98, label %97

97:                                               ; preds = %87
  br label %238

98:                                               ; preds = %87
  %99 = load i32, i32* @LPFC_MEM_POOL_SIZE, align 4
  %100 = call i8* @mempool_create_kmalloc_pool(i32 %99, i32 4)
  %101 = bitcast i8* %100 to i32*
  %102 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %103 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %102, i32 0, i32 3
  store i32* %101, i32** %103, align 8
  %104 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %105 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %104, i32 0, i32 3
  %106 = load i32*, i32** %105, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %109, label %108

108:                                              ; preds = %98
  br label %231

109:                                              ; preds = %98
  %110 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %111 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @LPFC_SLI_REV4, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %161

115:                                              ; preds = %109
  %116 = load i32, i32* @LPFC_MEM_POOL_SIZE, align 4
  %117 = call i8* @mempool_create_kmalloc_pool(i32 %116, i32 4)
  %118 = bitcast i8* %117 to i32*
  %119 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %120 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %119, i32 0, i32 4
  store i32* %118, i32** %120, align 8
  %121 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %122 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %121, i32 0, i32 4
  %123 = load i32*, i32** %122, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %126, label %125

125:                                              ; preds = %115
  br label %224

126:                                              ; preds = %115
  %127 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %128 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %127, i32 0, i32 10
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32, i32* @LPFC_HDR_BUF_SIZE, align 4
  %132 = load i32, i32* %5, align 4
  %133 = call i8* @dma_pool_create(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* %130, i32 %131, i32 %132, i32 0)
  %134 = bitcast i8* %133 to i32*
  %135 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %136 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %135, i32 0, i32 5
  store i32* %134, i32** %136, align 8
  %137 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %138 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %137, i32 0, i32 5
  %139 = load i32*, i32** %138, align 8
  %140 = icmp ne i32* %139, null
  br i1 %140, label %142, label %141

141:                                              ; preds = %126
  br label %217

142:                                              ; preds = %126
  %143 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %144 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %143, i32 0, i32 10
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load i32, i32* @LPFC_DATA_BUF_SIZE, align 4
  %148 = load i32, i32* %5, align 4
  %149 = call i8* @dma_pool_create(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* %146, i32 %147, i32 %148, i32 0)
  %150 = bitcast i8* %149 to i32*
  %151 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %152 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %151, i32 0, i32 6
  store i32* %150, i32** %152, align 8
  %153 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %154 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %153, i32 0, i32 6
  %155 = load i32*, i32** %154, align 8
  %156 = icmp ne i32* %155, null
  br i1 %156, label %158, label %157

157:                                              ; preds = %142
  br label %210

158:                                              ; preds = %142
  %159 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %160 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %159, i32 0, i32 9
  store i32* null, i32** %160, align 8
  br label %182

161:                                              ; preds = %109
  %162 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %163 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %162, i32 0, i32 10
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = load i32, i32* @LPFC_BPL_SIZE, align 4
  %167 = load i32, i32* %5, align 4
  %168 = call i8* @dma_pool_create(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32* %165, i32 %166, i32 %167, i32 0)
  %169 = bitcast i8* %168 to i32*
  %170 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %171 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %170, i32 0, i32 9
  store i32* %169, i32** %171, align 8
  %172 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %173 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %172, i32 0, i32 9
  %174 = load i32*, i32** %173, align 8
  %175 = icmp ne i32* %174, null
  br i1 %175, label %177, label %176

176:                                              ; preds = %161
  br label %224

177:                                              ; preds = %161
  %178 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %179 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %178, i32 0, i32 5
  store i32* null, i32** %179, align 8
  %180 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %181 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %180, i32 0, i32 6
  store i32* null, i32** %181, align 8
  br label %182

182:                                              ; preds = %177, %158
  %183 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %184 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %183, i32 0, i32 8
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %199

187:                                              ; preds = %182
  %188 = load i32, i32* @LPFC_DEVICE_DATA_POOL_SIZE, align 4
  %189 = call i8* @mempool_create_kmalloc_pool(i32 %188, i32 4)
  %190 = bitcast i8* %189 to i32*
  %191 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %192 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %191, i32 0, i32 7
  store i32* %190, i32** %192, align 8
  %193 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %194 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %193, i32 0, i32 7
  %195 = load i32*, i32** %194, align 8
  %196 = icmp ne i32* %195, null
  br i1 %196, label %198, label %197

197:                                              ; preds = %187
  br label %203

198:                                              ; preds = %187
  br label %202

199:                                              ; preds = %182
  %200 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %201 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %200, i32 0, i32 7
  store i32* null, i32** %201, align 8
  br label %202

202:                                              ; preds = %199, %198
  store i32 0, i32* %3, align 4
  br label %279

203:                                              ; preds = %197
  %204 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %205 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %204, i32 0, i32 6
  %206 = load i32*, i32** %205, align 8
  %207 = call i32 @dma_pool_destroy(i32* %206)
  %208 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %209 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %208, i32 0, i32 6
  store i32* null, i32** %209, align 8
  br label %210

210:                                              ; preds = %203, %157
  %211 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %212 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %211, i32 0, i32 5
  %213 = load i32*, i32** %212, align 8
  %214 = call i32 @dma_pool_destroy(i32* %213)
  %215 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %216 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %215, i32 0, i32 5
  store i32* null, i32** %216, align 8
  br label %217

217:                                              ; preds = %210, %141
  %218 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %219 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %218, i32 0, i32 4
  %220 = load i32*, i32** %219, align 8
  %221 = call i32 @mempool_destroy(i32* %220)
  %222 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %223 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %222, i32 0, i32 4
  store i32* null, i32** %223, align 8
  br label %224

224:                                              ; preds = %217, %176, %125
  %225 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %226 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %225, i32 0, i32 3
  %227 = load i32*, i32** %226, align 8
  %228 = call i32 @mempool_destroy(i32* %227)
  %229 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %230 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %229, i32 0, i32 3
  store i32* null, i32** %230, align 8
  br label %231

231:                                              ; preds = %224, %108
  %232 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %233 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %232, i32 0, i32 2
  %234 = load i32*, i32** %233, align 8
  %235 = call i32 @mempool_destroy(i32* %234)
  %236 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %237 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %236, i32 0, i32 2
  store i32* null, i32** %237, align 8
  br label %238

238:                                              ; preds = %231, %97, %74
  br label %239

239:                                              ; preds = %243, %238
  %240 = load i32, i32* %7, align 4
  %241 = add nsw i32 %240, -1
  store i32 %241, i32* %7, align 4
  %242 = icmp ne i32 %240, 0
  br i1 %242, label %243, label %264

243:                                              ; preds = %239
  %244 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %245 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %244, i32 0, i32 1
  %246 = load i32*, i32** %245, align 8
  %247 = load %struct.lpfc_dma_pool*, %struct.lpfc_dma_pool** %6, align 8
  %248 = getelementptr inbounds %struct.lpfc_dma_pool, %struct.lpfc_dma_pool* %247, i32 0, i32 0
  %249 = load %struct.TYPE_5__*, %struct.TYPE_5__** %248, align 8
  %250 = load i32, i32* %7, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %249, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.lpfc_dma_pool*, %struct.lpfc_dma_pool** %6, align 8
  %256 = getelementptr inbounds %struct.lpfc_dma_pool, %struct.lpfc_dma_pool* %255, i32 0, i32 0
  %257 = load %struct.TYPE_5__*, %struct.TYPE_5__** %256, align 8
  %258 = load i32, i32* %7, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i64 %259
  %261 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @dma_pool_free(i32* %246, i32 %254, i32 %262)
  br label %239

264:                                              ; preds = %239
  %265 = load %struct.lpfc_dma_pool*, %struct.lpfc_dma_pool** %6, align 8
  %266 = getelementptr inbounds %struct.lpfc_dma_pool, %struct.lpfc_dma_pool* %265, i32 0, i32 0
  %267 = load %struct.TYPE_5__*, %struct.TYPE_5__** %266, align 8
  %268 = call i32 @kfree(%struct.TYPE_5__* %267)
  br label %269

269:                                              ; preds = %264, %35
  %270 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %271 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %270, i32 0, i32 1
  %272 = load i32*, i32** %271, align 8
  %273 = call i32 @dma_pool_destroy(i32* %272)
  %274 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %275 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %274, i32 0, i32 1
  store i32* null, i32** %275, align 8
  br label %276

276:                                              ; preds = %269, %24
  %277 = load i32, i32* @ENOMEM, align 4
  %278 = sub nsw i32 0, %277
  store i32 %278, i32* %3, align 4
  br label %279

279:                                              ; preds = %276, %202
  %280 = load i32, i32* %3, align 4
  ret i32 %280
}

declare dso_local i8* @dma_pool_create(i8*, i32*, i32, i32, i32) #1

declare dso_local %struct.TYPE_5__* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @dma_pool_alloc(i32*, i32, i32*) #1

declare dso_local i8* @mempool_create_kmalloc_pool(i32, i32) #1

declare dso_local i32 @dma_pool_destroy(i32*) #1

declare dso_local i32 @mempool_destroy(i32*) #1

declare dso_local i32 @dma_pool_free(i32*, i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
