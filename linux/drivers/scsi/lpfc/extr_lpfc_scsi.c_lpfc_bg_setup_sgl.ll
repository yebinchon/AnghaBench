; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_bg_setup_sgl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_bg_setup_sgl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32 }
%struct.scsi_cmnd = type { i64 }
%struct.sli4_sge = type { i32, i32, i8*, i8*, i8*, i8*, i8* }
%struct.lpfc_io_buf = type { i64 }
%struct.scatterlist = type { i32 }
%struct.sli4_sge_diseed = type { i32, i32, i8*, i8*, i8*, i8*, i8* }
%struct.sli4_hybrid_sgl = type { i64, i32 }

@lpfc_sli4_sge_type = common dso_local global i32 0, align 4
@LPFC_SGE_TYPE_DISEED = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i64 0, align 8
@LPFC_CHECK_PROTECT_GUARD = common dso_local global i32 0, align 4
@lpfc_sli4_sge_dif_ce = common dso_local global i32 0, align 4
@LPFC_CHECK_PROTECT_REF = common dso_local global i32 0, align 4
@lpfc_sli4_sge_dif_re = common dso_local global i32 0, align 4
@lpfc_sli4_sge_dif_optx = common dso_local global i32 0, align 4
@lpfc_sli4_sge_dif_oprx = common dso_local global i32 0, align 4
@lpfc_sli4_sge_dif_ai = common dso_local global i32 0, align 4
@lpfc_sli4_sge_dif_me = common dso_local global i32 0, align 4
@LPFC_SGE_TYPE_LSP = common dso_local global i32 0, align 4
@LPFC_SGE_TYPE_DATA = common dso_local global i32 0, align 4
@lpfc_sli4_sge_last = common dso_local global i32 0, align 4
@lpfc_sli4_sge_offset = common dso_local global i32 0, align 4
@BG_ERR_CHECK = common dso_local global i32 0, align 4
@BG_ERR_SWAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, %struct.scsi_cmnd*, %struct.sli4_sge*, i32, %struct.lpfc_io_buf*)* @lpfc_bg_setup_sgl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_bg_setup_sgl(%struct.lpfc_hba* %0, %struct.scsi_cmnd* %1, %struct.sli4_sge* %2, i32 %3, %struct.lpfc_io_buf* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.lpfc_hba*, align 8
  %8 = alloca %struct.scsi_cmnd*, align 8
  %9 = alloca %struct.sli4_sge*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.lpfc_io_buf*, align 8
  %12 = alloca %struct.scatterlist*, align 8
  %13 = alloca %struct.sli4_sge_diseed*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.sli4_hybrid_sgl*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %7, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %8, align 8
  store %struct.sli4_sge* %2, %struct.sli4_sge** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.lpfc_io_buf* %4, %struct.lpfc_io_buf** %11, align 8
  store %struct.scatterlist* null, %struct.scatterlist** %12, align 8
  store %struct.sli4_sge_diseed* null, %struct.sli4_sge_diseed** %13, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 1, i32* %21, align 4
  store i32 0, i32* %23, align 4
  store %struct.sli4_hybrid_sgl* null, %struct.sli4_hybrid_sgl** %24, align 8
  store i32 0, i32* %26, align 4
  %27 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %28 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %29 = call i32 @lpfc_sc_to_bg_opcodes(%struct.lpfc_hba* %27, %struct.scsi_cmnd* %28, i32* %19, i32* %20)
  store i32 %29, i32* %17, align 4
  %30 = load i32, i32* %17, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %5
  br label %270

33:                                               ; preds = %5
  %34 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %35 = call i64 @scsi_get_lba(%struct.scsi_cmnd* %34)
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %18, align 4
  %37 = load %struct.sli4_sge*, %struct.sli4_sge** %9, align 8
  %38 = bitcast %struct.sli4_sge* %37 to %struct.sli4_sge_diseed*
  store %struct.sli4_sge_diseed* %38, %struct.sli4_sge_diseed** %13, align 8
  %39 = load %struct.sli4_sge_diseed*, %struct.sli4_sge_diseed** %13, align 8
  %40 = call i32 @memset(%struct.sli4_sge_diseed* %39, i32 0, i32 48)
  %41 = load i32, i32* @lpfc_sli4_sge_type, align 4
  %42 = load %struct.sli4_sge*, %struct.sli4_sge** %9, align 8
  %43 = bitcast %struct.sli4_sge* %42 to %struct.sli4_sge_diseed*
  %44 = load i32, i32* @LPFC_SGE_TYPE_DISEED, align 4
  %45 = call i32 @bf_set(i32 %41, %struct.sli4_sge_diseed* %43, i32 %44)
  %46 = load i32, i32* %18, align 4
  %47 = call i8* @cpu_to_le32(i32 %46)
  %48 = load %struct.sli4_sge_diseed*, %struct.sli4_sge_diseed** %13, align 8
  %49 = getelementptr inbounds %struct.sli4_sge_diseed, %struct.sli4_sge_diseed* %48, i32 0, i32 5
  store i8* %47, i8** %49, align 8
  %50 = load %struct.sli4_sge_diseed*, %struct.sli4_sge_diseed** %13, align 8
  %51 = getelementptr inbounds %struct.sli4_sge_diseed, %struct.sli4_sge_diseed* %50, i32 0, i32 5
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.sli4_sge_diseed*, %struct.sli4_sge_diseed** %13, align 8
  %54 = getelementptr inbounds %struct.sli4_sge_diseed, %struct.sli4_sge_diseed* %53, i32 0, i32 6
  store i8* %52, i8** %54, align 8
  %55 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %56 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %89

60:                                               ; preds = %33
  %61 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %62 = load i32, i32* @LPFC_CHECK_PROTECT_GUARD, align 4
  %63 = call i64 @lpfc_cmd_protect(%struct.scsi_cmnd* %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load i32, i32* @lpfc_sli4_sge_dif_ce, align 4
  %67 = load %struct.sli4_sge_diseed*, %struct.sli4_sge_diseed** %13, align 8
  %68 = load i32, i32* %21, align 4
  %69 = call i32 @bf_set(i32 %66, %struct.sli4_sge_diseed* %67, i32 %68)
  br label %74

70:                                               ; preds = %60
  %71 = load i32, i32* @lpfc_sli4_sge_dif_ce, align 4
  %72 = load %struct.sli4_sge_diseed*, %struct.sli4_sge_diseed** %13, align 8
  %73 = call i32 @bf_set(i32 %71, %struct.sli4_sge_diseed* %72, i32 0)
  br label %74

74:                                               ; preds = %70, %65
  %75 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %76 = load i32, i32* @LPFC_CHECK_PROTECT_REF, align 4
  %77 = call i64 @lpfc_cmd_protect(%struct.scsi_cmnd* %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load i32, i32* @lpfc_sli4_sge_dif_re, align 4
  %81 = load %struct.sli4_sge_diseed*, %struct.sli4_sge_diseed** %13, align 8
  %82 = load i32, i32* %21, align 4
  %83 = call i32 @bf_set(i32 %80, %struct.sli4_sge_diseed* %81, i32 %82)
  br label %88

84:                                               ; preds = %74
  %85 = load i32, i32* @lpfc_sli4_sge_dif_re, align 4
  %86 = load %struct.sli4_sge_diseed*, %struct.sli4_sge_diseed** %13, align 8
  %87 = call i32 @bf_set(i32 %85, %struct.sli4_sge_diseed* %86, i32 0)
  br label %88

88:                                               ; preds = %84, %79
  br label %89

89:                                               ; preds = %88, %33
  %90 = load i32, i32* @lpfc_sli4_sge_dif_optx, align 4
  %91 = load %struct.sli4_sge_diseed*, %struct.sli4_sge_diseed** %13, align 8
  %92 = load i32, i32* %19, align 4
  %93 = call i32 @bf_set(i32 %90, %struct.sli4_sge_diseed* %91, i32 %92)
  %94 = load i32, i32* @lpfc_sli4_sge_dif_oprx, align 4
  %95 = load %struct.sli4_sge_diseed*, %struct.sli4_sge_diseed** %13, align 8
  %96 = load i32, i32* %20, align 4
  %97 = call i32 @bf_set(i32 %94, %struct.sli4_sge_diseed* %95, i32 %96)
  %98 = load i32, i32* @lpfc_sli4_sge_dif_ai, align 4
  %99 = load %struct.sli4_sge_diseed*, %struct.sli4_sge_diseed** %13, align 8
  %100 = call i32 @bf_set(i32 %98, %struct.sli4_sge_diseed* %99, i32 1)
  %101 = load i32, i32* @lpfc_sli4_sge_dif_me, align 4
  %102 = load %struct.sli4_sge_diseed*, %struct.sli4_sge_diseed** %13, align 8
  %103 = call i32 @bf_set(i32 %101, %struct.sli4_sge_diseed* %102, i32 0)
  %104 = load %struct.sli4_sge_diseed*, %struct.sli4_sge_diseed** %13, align 8
  %105 = getelementptr inbounds %struct.sli4_sge_diseed, %struct.sli4_sge_diseed* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i8* @cpu_to_le32(i32 %106)
  %108 = ptrtoint i8* %107 to i32
  %109 = load %struct.sli4_sge_diseed*, %struct.sli4_sge_diseed** %13, align 8
  %110 = getelementptr inbounds %struct.sli4_sge_diseed, %struct.sli4_sge_diseed* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  %111 = load %struct.sli4_sge_diseed*, %struct.sli4_sge_diseed** %13, align 8
  %112 = getelementptr inbounds %struct.sli4_sge_diseed, %struct.sli4_sge_diseed* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i8* @cpu_to_le32(i32 %113)
  %115 = ptrtoint i8* %114 to i32
  %116 = load %struct.sli4_sge_diseed*, %struct.sli4_sge_diseed** %13, align 8
  %117 = getelementptr inbounds %struct.sli4_sge_diseed, %struct.sli4_sge_diseed* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* %16, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %16, align 4
  %120 = load %struct.sli4_sge*, %struct.sli4_sge** %9, align 8
  %121 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %120, i32 1
  store %struct.sli4_sge* %121, %struct.sli4_sge** %9, align 8
  %122 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %123 = call %struct.scatterlist* @scsi_sglist(%struct.scsi_cmnd* %122)
  store %struct.scatterlist* %123, %struct.scatterlist** %12, align 8
  store i32 3, i32* %25, align 4
  store i32 0, i32* %15, align 4
  br label %124

124:                                              ; preds = %266, %89
  %125 = load i32, i32* %15, align 4
  %126 = load i32, i32* %10, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %269

128:                                              ; preds = %124
  %129 = load %struct.sli4_sge*, %struct.sli4_sge** %9, align 8
  %130 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %129, i32 0, i32 0
  store i32 0, i32* %130, align 8
  %131 = load i32, i32* %26, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %179, label %133

133:                                              ; preds = %128
  %134 = load i32, i32* %25, align 4
  %135 = add nsw i32 %134, 1
  %136 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %137 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = srem i32 %135, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %179, label %141

141:                                              ; preds = %133
  %142 = load i32, i32* %10, align 4
  %143 = sub nsw i32 %142, 1
  %144 = load i32, i32* %15, align 4
  %145 = icmp ne i32 %143, %144
  br i1 %145, label %146, label %179

146:                                              ; preds = %141
  %147 = load i32, i32* @lpfc_sli4_sge_type, align 4
  %148 = load %struct.sli4_sge*, %struct.sli4_sge** %9, align 8
  %149 = bitcast %struct.sli4_sge* %148 to %struct.sli4_sge_diseed*
  %150 = load i32, i32* @LPFC_SGE_TYPE_LSP, align 4
  %151 = call i32 @bf_set(i32 %147, %struct.sli4_sge_diseed* %149, i32 %150)
  %152 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %153 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %11, align 8
  %154 = call %struct.sli4_hybrid_sgl* @lpfc_get_sgl_per_hdwq(%struct.lpfc_hba* %152, %struct.lpfc_io_buf* %153)
  store %struct.sli4_hybrid_sgl* %154, %struct.sli4_hybrid_sgl** %24, align 8
  %155 = load %struct.sli4_hybrid_sgl*, %struct.sli4_hybrid_sgl** %24, align 8
  %156 = icmp ne %struct.sli4_hybrid_sgl* %155, null
  %157 = xor i1 %156, true
  %158 = zext i1 %157 to i32
  %159 = call i64 @unlikely(i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %146
  %162 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %11, align 8
  %163 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %162, i32 0, i32 0
  store i64 0, i64* %163, align 8
  store i32 0, i32* %6, align 4
  br label %272

164:                                              ; preds = %146
  %165 = load %struct.sli4_hybrid_sgl*, %struct.sli4_hybrid_sgl** %24, align 8
  %166 = getelementptr inbounds %struct.sli4_hybrid_sgl, %struct.sli4_hybrid_sgl* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @putPaddrLow(i32 %167)
  %169 = call i8* @cpu_to_le32(i32 %168)
  %170 = load %struct.sli4_sge*, %struct.sli4_sge** %9, align 8
  %171 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %170, i32 0, i32 4
  store i8* %169, i8** %171, align 8
  %172 = load %struct.sli4_hybrid_sgl*, %struct.sli4_hybrid_sgl** %24, align 8
  %173 = getelementptr inbounds %struct.sli4_hybrid_sgl, %struct.sli4_hybrid_sgl* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @putPaddrHigh(i32 %174)
  %176 = call i8* @cpu_to_le32(i32 %175)
  %177 = load %struct.sli4_sge*, %struct.sli4_sge** %9, align 8
  %178 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %177, i32 0, i32 3
  store i8* %176, i8** %178, align 8
  br label %185

179:                                              ; preds = %141, %133, %128
  %180 = load i32, i32* @lpfc_sli4_sge_type, align 4
  %181 = load %struct.sli4_sge*, %struct.sli4_sge** %9, align 8
  %182 = bitcast %struct.sli4_sge* %181 to %struct.sli4_sge_diseed*
  %183 = load i32, i32* @LPFC_SGE_TYPE_DATA, align 4
  %184 = call i32 @bf_set(i32 %180, %struct.sli4_sge_diseed* %182, i32 %183)
  br label %185

185:                                              ; preds = %179, %164
  %186 = load i32, i32* @lpfc_sli4_sge_type, align 4
  %187 = load %struct.sli4_sge*, %struct.sli4_sge** %9, align 8
  %188 = bitcast %struct.sli4_sge* %187 to %struct.sli4_sge_diseed*
  %189 = call i32 @bf_get(i32 %186, %struct.sli4_sge_diseed* %188)
  %190 = load i32, i32* @LPFC_SGE_TYPE_LSP, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %243, label %193

193:                                              ; preds = %185
  %194 = load i32, i32* %10, align 4
  %195 = sub nsw i32 %194, 1
  %196 = load i32, i32* %15, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %203

198:                                              ; preds = %193
  %199 = load i32, i32* @lpfc_sli4_sge_last, align 4
  %200 = load %struct.sli4_sge*, %struct.sli4_sge** %9, align 8
  %201 = bitcast %struct.sli4_sge* %200 to %struct.sli4_sge_diseed*
  %202 = call i32 @bf_set(i32 %199, %struct.sli4_sge_diseed* %201, i32 1)
  br label %203

203:                                              ; preds = %198, %193
  %204 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %205 = call i32 @sg_dma_address(%struct.scatterlist* %204)
  store i32 %205, i32* %14, align 4
  %206 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %207 = call i32 @sg_dma_len(%struct.scatterlist* %206)
  store i32 %207, i32* %22, align 4
  %208 = load i32, i32* %14, align 4
  %209 = call i32 @putPaddrLow(i32 %208)
  %210 = call i8* @cpu_to_le32(i32 %209)
  %211 = load %struct.sli4_sge*, %struct.sli4_sge** %9, align 8
  %212 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %211, i32 0, i32 4
  store i8* %210, i8** %212, align 8
  %213 = load i32, i32* %14, align 4
  %214 = call i32 @putPaddrHigh(i32 %213)
  %215 = call i8* @cpu_to_le32(i32 %214)
  %216 = load %struct.sli4_sge*, %struct.sli4_sge** %9, align 8
  %217 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %216, i32 0, i32 3
  store i8* %215, i8** %217, align 8
  %218 = load i32, i32* @lpfc_sli4_sge_offset, align 4
  %219 = load %struct.sli4_sge*, %struct.sli4_sge** %9, align 8
  %220 = bitcast %struct.sli4_sge* %219 to %struct.sli4_sge_diseed*
  %221 = load i32, i32* %23, align 4
  %222 = call i32 @bf_set(i32 %218, %struct.sli4_sge_diseed* %220, i32 %221)
  %223 = load %struct.sli4_sge*, %struct.sli4_sge** %9, align 8
  %224 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = call i8* @cpu_to_le32(i32 %225)
  %227 = ptrtoint i8* %226 to i32
  %228 = load %struct.sli4_sge*, %struct.sli4_sge** %9, align 8
  %229 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %228, i32 0, i32 0
  store i32 %227, i32* %229, align 8
  %230 = load i32, i32* %22, align 4
  %231 = call i8* @cpu_to_le32(i32 %230)
  %232 = load %struct.sli4_sge*, %struct.sli4_sge** %9, align 8
  %233 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %232, i32 0, i32 2
  store i8* %231, i8** %233, align 8
  %234 = load i32, i32* %22, align 4
  %235 = load i32, i32* %23, align 4
  %236 = add nsw i32 %235, %234
  store i32 %236, i32* %23, align 4
  %237 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %238 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %237)
  store %struct.scatterlist* %238, %struct.scatterlist** %12, align 8
  %239 = load %struct.sli4_sge*, %struct.sli4_sge** %9, align 8
  %240 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %239, i32 1
  store %struct.sli4_sge* %240, %struct.sli4_sge** %9, align 8
  %241 = load i32, i32* %16, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %16, align 4
  store i32 0, i32* %26, align 4
  br label %263

243:                                              ; preds = %185
  %244 = load %struct.sli4_sge*, %struct.sli4_sge** %9, align 8
  %245 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = call i8* @cpu_to_le32(i32 %246)
  %248 = ptrtoint i8* %247 to i32
  %249 = load %struct.sli4_sge*, %struct.sli4_sge** %9, align 8
  %250 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %249, i32 0, i32 0
  store i32 %248, i32* %250, align 8
  %251 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %252 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = call i8* @cpu_to_le32(i32 %253)
  %255 = load %struct.sli4_sge*, %struct.sli4_sge** %9, align 8
  %256 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %255, i32 0, i32 2
  store i8* %254, i8** %256, align 8
  %257 = load %struct.sli4_hybrid_sgl*, %struct.sli4_hybrid_sgl** %24, align 8
  %258 = getelementptr inbounds %struct.sli4_hybrid_sgl, %struct.sli4_hybrid_sgl* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = inttoptr i64 %259 to %struct.sli4_sge*
  store %struct.sli4_sge* %260, %struct.sli4_sge** %9, align 8
  %261 = load i32, i32* %15, align 4
  %262 = sub nsw i32 %261, 1
  store i32 %262, i32* %15, align 4
  store i32 1, i32* %26, align 4
  br label %263

263:                                              ; preds = %243, %203
  %264 = load i32, i32* %25, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %25, align 4
  br label %266

266:                                              ; preds = %263
  %267 = load i32, i32* %15, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %15, align 4
  br label %124

269:                                              ; preds = %124
  br label %270

270:                                              ; preds = %269, %32
  %271 = load i32, i32* %16, align 4
  store i32 %271, i32* %6, align 4
  br label %272

272:                                              ; preds = %270, %161
  %273 = load i32, i32* %6, align 4
  ret i32 %273
}

declare dso_local i32 @lpfc_sc_to_bg_opcodes(%struct.lpfc_hba*, %struct.scsi_cmnd*, i32*, i32*) #1

declare dso_local i64 @scsi_get_lba(%struct.scsi_cmnd*) #1

declare dso_local i32 @memset(%struct.sli4_sge_diseed*, i32, i32) #1

declare dso_local i32 @bf_set(i32, %struct.sli4_sge_diseed*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i64 @lpfc_cmd_protect(%struct.scsi_cmnd*, i32) #1

declare dso_local %struct.scatterlist* @scsi_sglist(%struct.scsi_cmnd*) #1

declare dso_local %struct.sli4_hybrid_sgl* @lpfc_get_sgl_per_hdwq(%struct.lpfc_hba*, %struct.lpfc_io_buf*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @putPaddrLow(i32) #1

declare dso_local i32 @putPaddrHigh(i32) #1

declare dso_local i32 @bf_get(i32, %struct.sli4_sge_diseed*) #1

declare dso_local i32 @sg_dma_address(%struct.scatterlist*) #1

declare dso_local i32 @sg_dma_len(%struct.scatterlist*) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
