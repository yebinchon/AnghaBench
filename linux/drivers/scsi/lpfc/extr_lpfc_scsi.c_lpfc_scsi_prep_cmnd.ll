; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_scsi_prep_cmnd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_scsi_prep_cmnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i64, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32, i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64*, %struct.lpfc_sli4_hdw_queue* }
%struct.lpfc_sli4_hdw_queue = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.lpfc_io_buf = type { i32, i32, %struct.fcp_cmnd*, %struct.scsi_cmnd*, %struct.TYPE_10__*, %struct.lpfc_iocbq }
%struct.fcp_cmnd = type { i64, i32, i32*, i32, i64 }
%struct.scsi_cmnd = type { i32, i64, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.lpfc_iocbq = type { %struct.lpfc_vport*, %struct.TYPE_18__, i32, %struct.lpfc_io_buf* }
%struct.TYPE_18__ = type { i64, i32, i32, i32, %struct.TYPE_16__, i8*, %struct.TYPE_13__, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i64 }
%struct.lpfc_nodelist = type { i32, i64, i32 }

@LPFC_FCP_CDB_LEN = common dso_local global i64 0, align 8
@SIMPLE_Q = common dso_local global i32 0, align 4
@LPFC_SLI_REV4 = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@CMD_FCP_IWRITE64_CR = common dso_local global i32 0, align 4
@PARM_READ_CHECK = common dso_local global i8* null, align 8
@NLP_FIRSTBURST = common dso_local global i32 0, align 4
@WRITE_DATA = common dso_local global i64 0, align 8
@CMD_FCP_IREAD64_CR = common dso_local global i32 0, align 4
@READ_DATA = common dso_local global i64 0, align 8
@CMD_FCP_ICMND64_CR = common dso_local global i32 0, align 4
@LPFC_SLI3_BG_ENABLED = common dso_local global i32 0, align 4
@NLP_FCP_2_DEVICE = common dso_local global i32 0, align 4
@lpfc_scsi_cmd_iocb_cmpl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_vport*, %struct.lpfc_io_buf*, %struct.lpfc_nodelist*)* @lpfc_scsi_prep_cmnd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_scsi_prep_cmnd(%struct.lpfc_vport* %0, %struct.lpfc_io_buf* %1, %struct.lpfc_nodelist* %2) #0 {
  %4 = alloca %struct.lpfc_vport*, align 8
  %5 = alloca %struct.lpfc_io_buf*, align 8
  %6 = alloca %struct.lpfc_nodelist*, align 8
  %7 = alloca %struct.lpfc_hba*, align 8
  %8 = alloca %struct.scsi_cmnd*, align 8
  %9 = alloca %struct.fcp_cmnd*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca %struct.lpfc_iocbq*, align 8
  %12 = alloca %struct.lpfc_sli4_hdw_queue*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %4, align 8
  store %struct.lpfc_io_buf* %1, %struct.lpfc_io_buf** %5, align 8
  store %struct.lpfc_nodelist* %2, %struct.lpfc_nodelist** %6, align 8
  %18 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %19 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %18, i32 0, i32 1
  %20 = load %struct.lpfc_hba*, %struct.lpfc_hba** %19, align 8
  store %struct.lpfc_hba* %20, %struct.lpfc_hba** %7, align 8
  %21 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %22 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %21, i32 0, i32 3
  %23 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %22, align 8
  store %struct.scsi_cmnd* %23, %struct.scsi_cmnd** %8, align 8
  %24 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %25 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %24, i32 0, i32 2
  %26 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %25, align 8
  store %struct.fcp_cmnd* %26, %struct.fcp_cmnd** %9, align 8
  %27 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %28 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %28, i32 0, i32 1
  store %struct.TYPE_18__* %29, %struct.TYPE_18__** %10, align 8
  %30 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %31 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %30, i32 0, i32 5
  store %struct.lpfc_iocbq* %31, %struct.lpfc_iocbq** %11, align 8
  store %struct.lpfc_sli4_hdw_queue* null, %struct.lpfc_sli4_hdw_queue** %12, align 8
  %32 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %33 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %13, align 4
  %35 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %36 = icmp ne %struct.lpfc_nodelist* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %3
  %38 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %39 = call i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37, %3
  br label %309

42:                                               ; preds = %37
  %43 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %44 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %43, i32 0, i32 4
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  %47 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %48 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %47, i32 0, i32 2
  %49 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %48, align 8
  %50 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %49, i32 0, i32 4
  store i64 0, i64* %50, align 8
  %51 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %52 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %51, i32 0, i32 3
  %53 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %52, align 8
  %54 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %53, i32 0, i32 3
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %59 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %58, i32 0, i32 2
  %60 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %59, align 8
  %61 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %60, i32 0, i32 3
  %62 = call i32 @int_to_scsilun(i32 %57, i32* %61)
  %63 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %9, align 8
  %64 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  store i32* %66, i32** %15, align 8
  %67 = load i32*, i32** %15, align 8
  %68 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %69 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %72 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @memcpy(i32* %67, i32 %70, i64 %73)
  %75 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %76 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @LPFC_FCP_CDB_LEN, align 8
  %79 = icmp slt i64 %77, %78
  br i1 %79, label %80, label %93

80:                                               ; preds = %42
  %81 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %82 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i32*, i32** %15, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 %83
  store i32* %85, i32** %15, align 8
  %86 = load i32*, i32** %15, align 8
  %87 = load i64, i64* @LPFC_FCP_CDB_LEN, align 8
  %88 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %89 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = sub nsw i64 %87, %90
  %92 = call i32 @memset(i32* %86, i32 0, i64 %91)
  br label %93

93:                                               ; preds = %80, %42
  %94 = load i32, i32* @SIMPLE_Q, align 4
  %95 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %9, align 8
  %96 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 8
  %97 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %98 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @LPFC_SLI_REV4, align 4
  %101 = icmp eq i32 %99, %100
  %102 = zext i1 %101 to i32
  store i32 %102, i32* %16, align 4
  %103 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %104 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 6
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  store i64 0, i64* %107, align 8
  %108 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %109 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  store i32 %110, i32* %14, align 4
  %111 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %112 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 1
  %114 = load %struct.lpfc_sli4_hdw_queue*, %struct.lpfc_sli4_hdw_queue** %113, align 8
  %115 = icmp ne %struct.lpfc_sli4_hdw_queue* %114, null
  br i1 %115, label %116, label %124

116:                                              ; preds = %93
  %117 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %118 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 1
  %120 = load %struct.lpfc_sli4_hdw_queue*, %struct.lpfc_sli4_hdw_queue** %119, align 8
  %121 = load i32, i32* %14, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.lpfc_sli4_hdw_queue, %struct.lpfc_sli4_hdw_queue* %120, i64 %122
  store %struct.lpfc_sli4_hdw_queue* %123, %struct.lpfc_sli4_hdw_queue** %12, align 8
  br label %124

124:                                              ; preds = %116, %93
  %125 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %126 = call i64 @scsi_sg_count(%struct.scsi_cmnd* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %208

128:                                              ; preds = %124
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* @DMA_TO_DEVICE, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %188

132:                                              ; preds = %128
  %133 = load i32, i32* @CMD_FCP_IWRITE64_CR, align 4
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 7
  store i32 %133, i32* %135, align 8
  %136 = load i8*, i8** @PARM_READ_CHECK, align 8
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 5
  store i8* %136, i8** %138, align 8
  %139 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %140 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %175

143:                                              ; preds = %132
  %144 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %145 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @NLP_FIRSTBURST, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %175

150:                                              ; preds = %143
  %151 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %152 = call i64 @scsi_bufflen(%struct.scsi_cmnd* %151)
  store i64 %152, i64* %17, align 8
  %153 = load i64, i64* %17, align 8
  %154 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %155 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp slt i64 %153, %156
  br i1 %157, label %158, label %165

158:                                              ; preds = %150
  %159 = load i64, i64* %17, align 8
  %160 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %161 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 6
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 0
  store i64 %159, i64* %164, align 8
  br label %174

165:                                              ; preds = %150
  %166 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %167 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %170 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 6
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 0
  store i64 %168, i64* %173, align 8
  br label %174

174:                                              ; preds = %165, %158
  br label %175

175:                                              ; preds = %174, %143, %132
  %176 = load i64, i64* @WRITE_DATA, align 8
  %177 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %9, align 8
  %178 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %177, i32 0, i32 0
  store i64 %176, i64* %178, align 8
  %179 = load %struct.lpfc_sli4_hdw_queue*, %struct.lpfc_sli4_hdw_queue** %12, align 8
  %180 = icmp ne %struct.lpfc_sli4_hdw_queue* %179, null
  br i1 %180, label %181, label %187

181:                                              ; preds = %175
  %182 = load %struct.lpfc_sli4_hdw_queue*, %struct.lpfc_sli4_hdw_queue** %12, align 8
  %183 = getelementptr inbounds %struct.lpfc_sli4_hdw_queue, %struct.lpfc_sli4_hdw_queue* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %184, align 4
  br label %187

187:                                              ; preds = %181, %175
  br label %207

188:                                              ; preds = %128
  %189 = load i32, i32* @CMD_FCP_IREAD64_CR, align 4
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 7
  store i32 %189, i32* %191, align 8
  %192 = load i8*, i8** @PARM_READ_CHECK, align 8
  %193 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %194 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %193, i32 0, i32 5
  store i8* %192, i8** %194, align 8
  %195 = load i64, i64* @READ_DATA, align 8
  %196 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %9, align 8
  %197 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %196, i32 0, i32 0
  store i64 %195, i64* %197, align 8
  %198 = load %struct.lpfc_sli4_hdw_queue*, %struct.lpfc_sli4_hdw_queue** %12, align 8
  %199 = icmp ne %struct.lpfc_sli4_hdw_queue* %198, null
  br i1 %199, label %200, label %206

200:                                              ; preds = %188
  %201 = load %struct.lpfc_sli4_hdw_queue*, %struct.lpfc_sli4_hdw_queue** %12, align 8
  %202 = getelementptr inbounds %struct.lpfc_sli4_hdw_queue, %struct.lpfc_sli4_hdw_queue* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %203, align 4
  br label %206

206:                                              ; preds = %200, %188
  br label %207

207:                                              ; preds = %206, %187
  br label %229

208:                                              ; preds = %124
  %209 = load i32, i32* @CMD_FCP_ICMND64_CR, align 4
  %210 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %211 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %210, i32 0, i32 7
  store i32 %209, i32* %211, align 8
  %212 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %213 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %212, i32 0, i32 6
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 1
  store i64 0, i64* %215, align 8
  %216 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %217 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %216, i32 0, i32 5
  store i8* null, i8** %217, align 8
  %218 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %9, align 8
  %219 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %218, i32 0, i32 0
  store i64 0, i64* %219, align 8
  %220 = load %struct.lpfc_sli4_hdw_queue*, %struct.lpfc_sli4_hdw_queue** %12, align 8
  %221 = icmp ne %struct.lpfc_sli4_hdw_queue* %220, null
  br i1 %221, label %222, label %228

222:                                              ; preds = %208
  %223 = load %struct.lpfc_sli4_hdw_queue*, %struct.lpfc_sli4_hdw_queue** %12, align 8
  %224 = getelementptr inbounds %struct.lpfc_sli4_hdw_queue, %struct.lpfc_sli4_hdw_queue* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %225, align 4
  br label %228

228:                                              ; preds = %222, %208
  br label %229

229:                                              ; preds = %228, %207
  %230 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %231 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = icmp eq i32 %232, 3
  br i1 %233, label %234, label %249

234:                                              ; preds = %229
  %235 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %236 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* @LPFC_SLI3_BG_ENABLED, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %249, label %241

241:                                              ; preds = %234
  %242 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %243 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %242, i32 0, i32 4
  %244 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %9, align 8
  %248 = call i32 @lpfc_fcpcmd_to_iocb(i32 %246, %struct.fcp_cmnd* %247)
  br label %249

249:                                              ; preds = %241, %234, %229
  %250 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %251 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %250, i32 0, i32 1
  %252 = load i64, i64* %251, align 8
  %253 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %254 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %254, i32 0, i32 0
  store i64 %252, i64* %255, align 8
  %256 = load i32, i32* %16, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %271

258:                                              ; preds = %249
  %259 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %260 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %259, i32 0, i32 2
  %261 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %260, i32 0, i32 0
  %262 = load i64*, i64** %261, align 8
  %263 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %264 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %263, i32 0, i32 1
  %265 = load i64, i64* %264, align 8
  %266 = getelementptr inbounds i64, i64* %262, i64 %265
  %267 = load i64, i64* %266, align 8
  %268 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %269 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %269, i32 0, i32 0
  store i64 %267, i64* %270, align 8
  br label %271

271:                                              ; preds = %258, %249
  %272 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %273 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 8
  %275 = load i32, i32* @NLP_FCP_2_DEVICE, align 4
  %276 = and i32 %274, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %282

278:                                              ; preds = %271
  %279 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %280 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %279, i32 0, i32 1
  %281 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %280, i32 0, i32 1
  store i32 1, i32* %281, align 8
  br label %286

282:                                              ; preds = %271
  %283 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %284 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %283, i32 0, i32 1
  %285 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %284, i32 0, i32 1
  store i32 0, i32* %285, align 8
  br label %286

286:                                              ; preds = %282, %278
  %287 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %6, align 8
  %288 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 8
  %290 = and i32 %289, 15
  %291 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %292 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %291, i32 0, i32 1
  %293 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %292, i32 0, i32 2
  store i32 %290, i32* %293, align 4
  %294 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %295 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %296 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %295, i32 0, i32 3
  store %struct.lpfc_io_buf* %294, %struct.lpfc_io_buf** %296, align 8
  %297 = load i32, i32* @lpfc_scsi_cmd_iocb_cmpl, align 4
  %298 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %299 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %298, i32 0, i32 2
  store i32 %297, i32* %299, align 8
  %300 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %301 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %304 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %303, i32 0, i32 1
  %305 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %304, i32 0, i32 3
  store i32 %302, i32* %305, align 8
  %306 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %307 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %11, align 8
  %308 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %307, i32 0, i32 0
  store %struct.lpfc_vport* %306, %struct.lpfc_vport** %308, align 8
  br label %309

309:                                              ; preds = %286, %41
  ret void
}

declare dso_local i32 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local i32 @int_to_scsilun(i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i64 @scsi_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i64 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @lpfc_fcpcmd_to_iocb(i32, %struct.fcp_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
