; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nvme.c_lpfc_nvme_prep_io_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_nvme.c_lpfc_nvme_prep_io_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32, i32, i32, i64 }
%struct.lpfc_io_buf = type { i64, %struct.sli4_sge*, %struct.TYPE_6__, %struct.nvmefc_fcp_req* }
%struct.sli4_sge = type { i32, i8*, i8*, i8* }
%struct.TYPE_6__ = type { %union.lpfc_wqe128 }
%union.lpfc_wqe128 = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.sli4_sge }
%struct.nvmefc_fcp_req = type { i32, i32, %struct.scatterlist* }
%struct.scatterlist = type { i32, i32 }
%struct.sli4_hybrid_sgl = type { i64, i32 }
%struct.ulp_bde64 = type { %struct.TYPE_8__, i8*, i8* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@lpfc_nvme_template = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_NVME_IOERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"6058 Too many sg segments from NVME Transport.  Max %d, nvmeIO sg_cnt %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"6059 dptr err %d, nseg %d\0A\00", align 1
@lpfc_sli4_sge_last = common dso_local global i32 0, align 4
@lpfc_sli4_sge_type = common dso_local global i32 0, align 4
@LPFC_SGE_TYPE_DATA = common dso_local global i32 0, align 4
@LPFC_SGE_TYPE_LSP = common dso_local global i32 0, align 4
@lpfc_sli4_sge_offset = common dso_local global i32 0, align 4
@BUFF_TYPE_BDE_64 = common dso_local global i32 0, align 4
@wqe_pbde = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"6063 NVME DMA Prep Err: sg_cnt %d payload_length x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_vport*, %struct.lpfc_io_buf*)* @lpfc_nvme_prep_io_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_nvme_prep_io_dma(%struct.lpfc_vport* %0, %struct.lpfc_io_buf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpfc_vport*, align 8
  %5 = alloca %struct.lpfc_io_buf*, align 8
  %6 = alloca %struct.lpfc_hba*, align 8
  %7 = alloca %struct.nvmefc_fcp_req*, align 8
  %8 = alloca %union.lpfc_wqe128*, align 8
  %9 = alloca %struct.sli4_sge*, align 8
  %10 = alloca %struct.sli4_hybrid_sgl*, align 8
  %11 = alloca %struct.scatterlist*, align 8
  %12 = alloca %struct.sli4_sge*, align 8
  %13 = alloca %struct.ulp_bde64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %4, align 8
  store %struct.lpfc_io_buf* %1, %struct.lpfc_io_buf** %5, align 8
  %22 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %23 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %22, i32 0, i32 0
  %24 = load %struct.lpfc_hba*, %struct.lpfc_hba** %23, align 8
  store %struct.lpfc_hba* %24, %struct.lpfc_hba** %6, align 8
  %25 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %26 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %25, i32 0, i32 3
  %27 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %26, align 8
  store %struct.nvmefc_fcp_req* %27, %struct.nvmefc_fcp_req** %7, align 8
  %28 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %29 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store %union.lpfc_wqe128* %30, %union.lpfc_wqe128** %8, align 8
  %31 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %32 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %31, i32 0, i32 1
  %33 = load %struct.sli4_sge*, %struct.sli4_sge** %32, align 8
  store %struct.sli4_sge* %33, %struct.sli4_sge** %9, align 8
  store %struct.sli4_hybrid_sgl* null, %struct.sli4_hybrid_sgl** %10, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %21, align 4
  %34 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %35 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %36 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %7, align 8
  %37 = call i32 @lpfc_nvme_adj_fcp_sgls(%struct.lpfc_vport* %34, %struct.lpfc_io_buf* %35, %struct.nvmefc_fcp_req* %36)
  %38 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %7, align 8
  %39 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %303

42:                                               ; preds = %2
  %43 = load %struct.sli4_sge*, %struct.sli4_sge** %9, align 8
  %44 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %43, i64 2
  store %struct.sli4_sge* %44, %struct.sli4_sge** %9, align 8
  %45 = load %struct.sli4_sge*, %struct.sli4_sge** %9, align 8
  store %struct.sli4_sge* %45, %struct.sli4_sge** %12, align 8
  %46 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %7, align 8
  %47 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %51 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %53 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @lpfc_nvme_template, i32 0, i32 0), align 8
  %56 = icmp sgt i64 %54, %55
  br i1 %56, label %57, label %72

57:                                               ; preds = %42
  %58 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %59 = load i32, i32* @KERN_ERR, align 4
  %60 = load i32, i32* @LOG_NVME_IOERR, align 4
  %61 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %62 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 1
  %65 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %66 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %58, i32 %59, i32 %60, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %68)
  %70 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %71 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %70, i32 0, i32 0
  store i64 0, i64* %71, align 8
  store i32 1, i32* %3, align 4
  br label %323

72:                                               ; preds = %42
  %73 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %7, align 8
  %74 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %18, align 4
  %76 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %7, align 8
  %77 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %76, i32 0, i32 2
  %78 = load %struct.scatterlist*, %struct.scatterlist** %77, align 8
  store %struct.scatterlist* %78, %struct.scatterlist** %11, align 8
  store i32 2, i32* %20, align 4
  store i32 0, i32* %19, align 4
  br label %79

79:                                               ; preds = %245, %72
  %80 = load i32, i32* %19, align 4
  %81 = load i32, i32* %18, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %248

83:                                               ; preds = %79
  %84 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %85 = icmp eq %struct.scatterlist* %84, null
  br i1 %85, label %86, label %95

86:                                               ; preds = %83
  %87 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %88 = load i32, i32* @KERN_ERR, align 4
  %89 = load i32, i32* @LOG_NVME_IOERR, align 4
  %90 = load i32, i32* %19, align 4
  %91 = load i32, i32* %18, align 4
  %92 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %87, i32 %88, i32 %89, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %90, i32 %91)
  %93 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %94 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %93, i32 0, i32 0
  store i64 0, i64* %94, align 8
  store i32 1, i32* %3, align 4
  br label %323

95:                                               ; preds = %83
  %96 = load %struct.sli4_sge*, %struct.sli4_sge** %9, align 8
  %97 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %96, i32 0, i32 0
  store i32 0, i32* %97, align 8
  %98 = load i32, i32* %15, align 4
  %99 = add nsw i32 %98, 1
  %100 = load i32, i32* %18, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %110

102:                                              ; preds = %95
  %103 = load i32, i32* @lpfc_sli4_sge_last, align 4
  %104 = load %struct.sli4_sge*, %struct.sli4_sge** %9, align 8
  %105 = call i32 @bf_set(i32 %103, %struct.sli4_sge* %104, i32 1)
  %106 = load i32, i32* @lpfc_sli4_sge_type, align 4
  %107 = load %struct.sli4_sge*, %struct.sli4_sge** %9, align 8
  %108 = load i32, i32* @LPFC_SGE_TYPE_DATA, align 4
  %109 = call i32 @bf_set(i32 %106, %struct.sli4_sge* %107, i32 %108)
  br label %167

110:                                              ; preds = %95
  %111 = load i32, i32* @lpfc_sli4_sge_last, align 4
  %112 = load %struct.sli4_sge*, %struct.sli4_sge** %9, align 8
  %113 = call i32 @bf_set(i32 %111, %struct.sli4_sge* %112, i32 0)
  %114 = load i32, i32* %21, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %161, label %116

116:                                              ; preds = %110
  %117 = load i32, i32* %20, align 4
  %118 = add nsw i32 %117, 1
  %119 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %120 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = srem i32 %118, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %161, label %124

124:                                              ; preds = %116
  %125 = load i32, i32* %18, align 4
  %126 = sub nsw i32 %125, 1
  %127 = load i32, i32* %19, align 4
  %128 = icmp ne i32 %126, %127
  br i1 %128, label %129, label %161

129:                                              ; preds = %124
  %130 = load i32, i32* @lpfc_sli4_sge_type, align 4
  %131 = load %struct.sli4_sge*, %struct.sli4_sge** %9, align 8
  %132 = load i32, i32* @LPFC_SGE_TYPE_LSP, align 4
  %133 = call i32 @bf_set(i32 %130, %struct.sli4_sge* %131, i32 %132)
  %134 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %135 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %136 = call %struct.sli4_hybrid_sgl* @lpfc_get_sgl_per_hdwq(%struct.lpfc_hba* %134, %struct.lpfc_io_buf* %135)
  store %struct.sli4_hybrid_sgl* %136, %struct.sli4_hybrid_sgl** %10, align 8
  %137 = load %struct.sli4_hybrid_sgl*, %struct.sli4_hybrid_sgl** %10, align 8
  %138 = icmp ne %struct.sli4_hybrid_sgl* %137, null
  %139 = xor i1 %138, true
  %140 = zext i1 %139 to i32
  %141 = call i64 @unlikely(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %129
  %144 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %145 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %144, i32 0, i32 0
  store i64 0, i64* %145, align 8
  store i32 1, i32* %3, align 4
  br label %323

146:                                              ; preds = %129
  %147 = load %struct.sli4_hybrid_sgl*, %struct.sli4_hybrid_sgl** %10, align 8
  %148 = getelementptr inbounds %struct.sli4_hybrid_sgl, %struct.sli4_hybrid_sgl* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @putPaddrLow(i32 %149)
  %151 = call i8* @cpu_to_le32(i32 %150)
  %152 = load %struct.sli4_sge*, %struct.sli4_sge** %9, align 8
  %153 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %152, i32 0, i32 3
  store i8* %151, i8** %153, align 8
  %154 = load %struct.sli4_hybrid_sgl*, %struct.sli4_hybrid_sgl** %10, align 8
  %155 = getelementptr inbounds %struct.sli4_hybrid_sgl, %struct.sli4_hybrid_sgl* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @putPaddrHigh(i32 %156)
  %158 = call i8* @cpu_to_le32(i32 %157)
  %159 = load %struct.sli4_sge*, %struct.sli4_sge** %9, align 8
  %160 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %159, i32 0, i32 2
  store i8* %158, i8** %160, align 8
  br label %166

161:                                              ; preds = %124, %116, %110
  %162 = load i32, i32* @lpfc_sli4_sge_type, align 4
  %163 = load %struct.sli4_sge*, %struct.sli4_sge** %9, align 8
  %164 = load i32, i32* @LPFC_SGE_TYPE_DATA, align 4
  %165 = call i32 @bf_set(i32 %162, %struct.sli4_sge* %163, i32 %164)
  br label %166

166:                                              ; preds = %161, %146
  br label %167

167:                                              ; preds = %166, %102
  %168 = load i32, i32* @lpfc_sli4_sge_type, align 4
  %169 = load %struct.sli4_sge*, %struct.sli4_sge** %9, align 8
  %170 = call i32 @bf_get(i32 %168, %struct.sli4_sge* %169)
  %171 = load i32, i32* @LPFC_SGE_TYPE_LSP, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %222, label %174

174:                                              ; preds = %167
  %175 = load i32, i32* %18, align 4
  %176 = sub nsw i32 %175, 1
  %177 = load i32, i32* %19, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %183

179:                                              ; preds = %174
  %180 = load i32, i32* @lpfc_sli4_sge_last, align 4
  %181 = load %struct.sli4_sge*, %struct.sli4_sge** %9, align 8
  %182 = call i32 @bf_set(i32 %180, %struct.sli4_sge* %181, i32 1)
  br label %183

183:                                              ; preds = %179, %174
  %184 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %185 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  store i32 %186, i32* %14, align 4
  %187 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %188 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  store i32 %189, i32* %16, align 4
  %190 = load i32, i32* %14, align 4
  %191 = call i32 @putPaddrLow(i32 %190)
  %192 = call i8* @cpu_to_le32(i32 %191)
  %193 = load %struct.sli4_sge*, %struct.sli4_sge** %9, align 8
  %194 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %193, i32 0, i32 3
  store i8* %192, i8** %194, align 8
  %195 = load i32, i32* %14, align 4
  %196 = call i32 @putPaddrHigh(i32 %195)
  %197 = call i8* @cpu_to_le32(i32 %196)
  %198 = load %struct.sli4_sge*, %struct.sli4_sge** %9, align 8
  %199 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %198, i32 0, i32 2
  store i8* %197, i8** %199, align 8
  %200 = load i32, i32* @lpfc_sli4_sge_offset, align 4
  %201 = load %struct.sli4_sge*, %struct.sli4_sge** %9, align 8
  %202 = load i32, i32* %17, align 4
  %203 = call i32 @bf_set(i32 %200, %struct.sli4_sge* %201, i32 %202)
  %204 = load %struct.sli4_sge*, %struct.sli4_sge** %9, align 8
  %205 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = call i8* @cpu_to_le32(i32 %206)
  %208 = ptrtoint i8* %207 to i32
  %209 = load %struct.sli4_sge*, %struct.sli4_sge** %9, align 8
  %210 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %209, i32 0, i32 0
  store i32 %208, i32* %210, align 8
  %211 = load i32, i32* %16, align 4
  %212 = call i8* @cpu_to_le32(i32 %211)
  %213 = load %struct.sli4_sge*, %struct.sli4_sge** %9, align 8
  %214 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %213, i32 0, i32 1
  store i8* %212, i8** %214, align 8
  %215 = load i32, i32* %16, align 4
  %216 = load i32, i32* %17, align 4
  %217 = add nsw i32 %216, %215
  store i32 %217, i32* %17, align 4
  %218 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %219 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %218)
  store %struct.scatterlist* %219, %struct.scatterlist** %11, align 8
  %220 = load %struct.sli4_sge*, %struct.sli4_sge** %9, align 8
  %221 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %220, i32 1
  store %struct.sli4_sge* %221, %struct.sli4_sge** %9, align 8
  store i32 0, i32* %21, align 4
  br label %242

222:                                              ; preds = %167
  %223 = load %struct.sli4_sge*, %struct.sli4_sge** %9, align 8
  %224 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = call i8* @cpu_to_le32(i32 %225)
  %227 = ptrtoint i8* %226 to i32
  %228 = load %struct.sli4_sge*, %struct.sli4_sge** %9, align 8
  %229 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %228, i32 0, i32 0
  store i32 %227, i32* %229, align 8
  %230 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %231 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = call i8* @cpu_to_le32(i32 %232)
  %234 = load %struct.sli4_sge*, %struct.sli4_sge** %9, align 8
  %235 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %234, i32 0, i32 1
  store i8* %233, i8** %235, align 8
  %236 = load %struct.sli4_hybrid_sgl*, %struct.sli4_hybrid_sgl** %10, align 8
  %237 = getelementptr inbounds %struct.sli4_hybrid_sgl, %struct.sli4_hybrid_sgl* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = inttoptr i64 %238 to %struct.sli4_sge*
  store %struct.sli4_sge* %239, %struct.sli4_sge** %9, align 8
  %240 = load i32, i32* %19, align 4
  %241 = sub nsw i32 %240, 1
  store i32 %241, i32* %19, align 4
  store i32 1, i32* %21, align 4
  br label %242

242:                                              ; preds = %222, %183
  %243 = load i32, i32* %20, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %20, align 4
  br label %245

245:                                              ; preds = %242
  %246 = load i32, i32* %19, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %19, align 4
  br label %79

248:                                              ; preds = %79
  %249 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %250 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %249, i32 0, i32 3
  %251 = load i64, i64* %250, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %291

253:                                              ; preds = %248
  %254 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %8, align 8
  %255 = bitcast %union.lpfc_wqe128* %254 to i32**
  %256 = load i32*, i32** %255, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 13
  %258 = bitcast i32* %257 to %struct.ulp_bde64*
  store %struct.ulp_bde64* %258, %struct.ulp_bde64** %13, align 8
  %259 = load %struct.sli4_sge*, %struct.sli4_sge** %12, align 8
  %260 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %259, i32 0, i32 3
  %261 = load i8*, i8** %260, align 8
  %262 = load %struct.ulp_bde64*, %struct.ulp_bde64** %13, align 8
  %263 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %262, i32 0, i32 2
  store i8* %261, i8** %263, align 8
  %264 = load %struct.sli4_sge*, %struct.sli4_sge** %12, align 8
  %265 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %264, i32 0, i32 2
  %266 = load i8*, i8** %265, align 8
  %267 = load %struct.ulp_bde64*, %struct.ulp_bde64** %13, align 8
  %268 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %267, i32 0, i32 1
  store i8* %266, i8** %268, align 8
  %269 = load %struct.sli4_sge*, %struct.sli4_sge** %12, align 8
  %270 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %269, i32 0, i32 1
  %271 = load i8*, i8** %270, align 8
  %272 = call i32 @le32_to_cpu(i8* %271)
  %273 = load %struct.ulp_bde64*, %struct.ulp_bde64** %13, align 8
  %274 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i32 0, i32 1
  %276 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %275, i32 0, i32 1
  store i32 %272, i32* %276, align 4
  %277 = load i32, i32* @BUFF_TYPE_BDE_64, align 4
  %278 = load %struct.ulp_bde64*, %struct.ulp_bde64** %13, align 8
  %279 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %279, i32 0, i32 1
  %281 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %280, i32 0, i32 0
  store i32 %277, i32* %281, align 4
  %282 = load %struct.ulp_bde64*, %struct.ulp_bde64** %13, align 8
  %283 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = call i8* @cpu_to_le32(i32 %285)
  %287 = ptrtoint i8* %286 to i32
  %288 = load %struct.ulp_bde64*, %struct.ulp_bde64** %13, align 8
  %289 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %289, i32 0, i32 0
  store i32 %287, i32* %290, align 8
  br label %302

291:                                              ; preds = %248
  %292 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %8, align 8
  %293 = bitcast %union.lpfc_wqe128* %292 to i32**
  %294 = load i32*, i32** %293, align 8
  %295 = getelementptr inbounds i32, i32* %294, i64 13
  %296 = call i32 @memset(i32* %295, i32 0, i32 12)
  %297 = load i32, i32* @wqe_pbde, align 4
  %298 = load %union.lpfc_wqe128*, %union.lpfc_wqe128** %8, align 8
  %299 = bitcast %union.lpfc_wqe128* %298 to %struct.TYPE_9__*
  %300 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %299, i32 0, i32 0
  %301 = call i32 @bf_set(i32 %297, %struct.sli4_sge* %300, i32 0)
  br label %302

302:                                              ; preds = %291, %253
  br label %322

303:                                              ; preds = %2
  %304 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %305 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %304, i32 0, i32 0
  store i64 0, i64* %305, align 8
  %306 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %7, align 8
  %307 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %321

310:                                              ; preds = %303
  %311 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %312 = load i32, i32* @KERN_ERR, align 4
  %313 = load i32, i32* @LOG_NVME_IOERR, align 4
  %314 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %7, align 8
  %315 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = load %struct.nvmefc_fcp_req*, %struct.nvmefc_fcp_req** %7, align 8
  %318 = getelementptr inbounds %struct.nvmefc_fcp_req, %struct.nvmefc_fcp_req* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 4
  %320 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %311, i32 %312, i32 %313, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %316, i32 %319)
  store i32 1, i32* %3, align 4
  br label %323

321:                                              ; preds = %303
  br label %322

322:                                              ; preds = %321, %302
  store i32 0, i32* %3, align 4
  br label %323

323:                                              ; preds = %322, %310, %143, %86, %57
  %324 = load i32, i32* %3, align 4
  ret i32 %324
}

declare dso_local i32 @lpfc_nvme_adj_fcp_sgls(%struct.lpfc_vport*, %struct.lpfc_io_buf*, %struct.nvmefc_fcp_req*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @bf_set(i32, %struct.sli4_sge*, i32) #1

declare dso_local %struct.sli4_hybrid_sgl* @lpfc_get_sgl_per_hdwq(%struct.lpfc_hba*, %struct.lpfc_io_buf*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @putPaddrLow(i32) #1

declare dso_local i32 @putPaddrHigh(i32) #1

declare dso_local i32 @bf_get(i32, %struct.sli4_sge*) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

declare dso_local i32 @le32_to_cpu(i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
