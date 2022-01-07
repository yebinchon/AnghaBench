; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_handle_fcp_err.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_handle_fcp_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i64 }
%struct.lpfc_io_buf = type { %struct.TYPE_9__, %struct.fcp_rsp*, %struct.fcp_cmnd*, %struct.scsi_cmnd* }
%struct.TYPE_9__ = type { i32 }
%struct.fcp_rsp = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.fcp_cmnd = type { i32, i64 }
%struct.scsi_cmnd = type { i32, i64, i32, i32*, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.lpfc_iocbq = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@DID_OK = common dso_local global i32 0, align 4
@LOG_FCP = common dso_local global i32 0, align 4
@LOG_FCP_ERROR = common dso_local global i32 0, align 4
@RSP_LEN_VALID = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"2719 Invalid response length: tgt x%x lun x%llx cmnd x%x rsplen x%x\0A\00", align 1
@DID_ERROR = common dso_local global i32 0, align 4
@RSP_NO_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [105 x i8] c"2757 Protocol failure detected during processing of FCP I/O op: tgt x%x lun x%llx cmnd x%x rspInfo3 x%x\0A\00", align 1
@SNS_LEN_VALID = common dso_local global i32 0, align 4
@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@RESID_UNDER = common dso_local global i32 0, align 4
@LOG_FCP_UNDER = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [72 x i8] c"9024 FCP command x%x failed: x%x SNS x%x x%x Data: x%x x%x x%x x%x x%x\0A\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [63 x i8] c"9025 FCP Underrun, expected %d, residual %d Data: x%x x%x x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [62 x i8] c"9026 FCP Read Check Error and Underrun Data: x%x x%x x%x x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [77 x i8] c"9027 FCP command x%x residual underrun converted to error Data: x%x x%x x%x\0A\00", align 1
@RESID_OVER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [60 x i8] c"9028 FCP command x%x residual overrun error. Data: x%x x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [60 x i8] c"9029 FCP %s Check Error xri x%x  Data: x%x x%x x%x x%x x%x\0A\00", align 1
@DMA_FROM_DEVICE = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [5 x i8] c"Read\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"Write\00", align 1
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_vport*, %struct.lpfc_io_buf*, %struct.lpfc_iocbq*)* @lpfc_handle_fcp_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_handle_fcp_err(%struct.lpfc_vport* %0, %struct.lpfc_io_buf* %1, %struct.lpfc_iocbq* %2) #0 {
  %4 = alloca %struct.lpfc_vport*, align 8
  %5 = alloca %struct.lpfc_io_buf*, align 8
  %6 = alloca %struct.lpfc_iocbq*, align 8
  %7 = alloca %struct.lpfc_hba*, align 8
  %8 = alloca %struct.scsi_cmnd*, align 8
  %9 = alloca %struct.fcp_cmnd*, align 8
  %10 = alloca %struct.fcp_rsp*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %4, align 8
  store %struct.lpfc_io_buf* %1, %struct.lpfc_io_buf** %5, align 8
  store %struct.lpfc_iocbq* %2, %struct.lpfc_iocbq** %6, align 8
  %20 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %21 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %20, i32 0, i32 1
  %22 = load %struct.lpfc_hba*, %struct.lpfc_hba** %21, align 8
  store %struct.lpfc_hba* %22, %struct.lpfc_hba** %7, align 8
  %23 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %24 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %23, i32 0, i32 3
  %25 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %24, align 8
  store %struct.scsi_cmnd* %25, %struct.scsi_cmnd** %8, align 8
  %26 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %27 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %26, i32 0, i32 2
  %28 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %27, align 8
  store %struct.fcp_cmnd* %28, %struct.fcp_cmnd** %9, align 8
  %29 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %30 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %29, i32 0, i32 1
  %31 = load %struct.fcp_rsp*, %struct.fcp_rsp** %30, align 8
  store %struct.fcp_rsp* %31, %struct.fcp_rsp** %10, align 8
  %32 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %33 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %11, align 4
  %38 = load %struct.fcp_rsp*, %struct.fcp_rsp** %10, align 8
  %39 = getelementptr inbounds %struct.fcp_rsp, %struct.fcp_rsp* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %12, align 4
  %41 = load %struct.fcp_rsp*, %struct.fcp_rsp** %10, align 8
  %42 = getelementptr inbounds %struct.fcp_rsp, %struct.fcp_rsp* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* @DID_OK, align 4
  store i32 %44, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %45 = load i32, i32* @LOG_FCP, align 4
  %46 = load i32, i32* @LOG_FCP_ERROR, align 4
  %47 = or i32 %45, %46
  store i32 %47, i32* %18, align 4
  %48 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %9, align 8
  %49 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %3
  store i32 0, i32* %13, align 4
  br label %410

53:                                               ; preds = %3
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @RSP_LEN_VALID, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %124

58:                                               ; preds = %53
  %59 = load %struct.fcp_rsp*, %struct.fcp_rsp** %10, align 8
  %60 = getelementptr inbounds %struct.fcp_rsp, %struct.fcp_rsp* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @be32_to_cpu(i32 %61)
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* %16, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %93

65:                                               ; preds = %58
  %66 = load i32, i32* %16, align 4
  %67 = icmp ne i32 %66, 4
  br i1 %67, label %68, label %93

68:                                               ; preds = %65
  %69 = load i32, i32* %16, align 4
  %70 = icmp ne i32 %69, 8
  br i1 %70, label %71, label %93

71:                                               ; preds = %68
  %72 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %73 = load i32, i32* @KERN_ERR, align 4
  %74 = load i32, i32* @LOG_FCP, align 4
  %75 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %76 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %75, i32 0, i32 5
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %81 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %80, i32 0, i32 5
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %86 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %85, i32 0, i32 3
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %16, align 4
  %91 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %72, i32 %73, i32 %74, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %79, i32 %84, i32 %89, i32 %90)
  %92 = load i32, i32* @DID_ERROR, align 4
  store i32 %92, i32* %15, align 4
  br label %410

93:                                               ; preds = %68, %65, %58
  %94 = load %struct.fcp_rsp*, %struct.fcp_rsp** %10, align 8
  %95 = getelementptr inbounds %struct.fcp_rsp, %struct.fcp_rsp* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @RSP_NO_FAILURE, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %123

99:                                               ; preds = %93
  %100 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %101 = load i32, i32* @KERN_ERR, align 4
  %102 = load i32, i32* @LOG_FCP, align 4
  %103 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %104 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %103, i32 0, i32 5
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %109 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %108, i32 0, i32 5
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %114 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %113, i32 0, i32 3
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.fcp_rsp*, %struct.fcp_rsp** %10, align 8
  %119 = getelementptr inbounds %struct.fcp_rsp, %struct.fcp_rsp* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 4
  %121 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %100, i32 %101, i32 %102, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.1, i64 0, i64 0), i32 %107, i32 %112, i32 %117, i32 %120)
  %122 = load i32, i32* @DID_ERROR, align 4
  store i32 %122, i32* %15, align 4
  br label %410

123:                                              ; preds = %93
  br label %124

124:                                              ; preds = %123, %53
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* @SNS_LEN_VALID, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %165

129:                                              ; preds = %124
  %130 = load %struct.fcp_rsp*, %struct.fcp_rsp** %10, align 8
  %131 = getelementptr inbounds %struct.fcp_rsp, %struct.fcp_rsp* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %165

134:                                              ; preds = %129
  %135 = load %struct.fcp_rsp*, %struct.fcp_rsp** %10, align 8
  %136 = getelementptr inbounds %struct.fcp_rsp, %struct.fcp_rsp* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @be32_to_cpu(i32 %137)
  store i32 %138, i32* %19, align 4
  %139 = load i32, i32* %19, align 4
  %140 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %141 = icmp sgt i32 %139, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %134
  %143 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  store i32 %143, i32* %19, align 4
  br label %144

144:                                              ; preds = %142, %134
  %145 = load i32, i32* %12, align 4
  %146 = load i32, i32* @RSP_LEN_VALID, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %144
  %150 = load %struct.fcp_rsp*, %struct.fcp_rsp** %10, align 8
  %151 = getelementptr inbounds %struct.fcp_rsp, %struct.fcp_rsp* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @be32_to_cpu(i32 %152)
  store i32 %153, i32* %16, align 4
  br label %154

154:                                              ; preds = %149, %144
  %155 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %156 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %155, i32 0, i32 4
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.fcp_rsp*, %struct.fcp_rsp** %10, align 8
  %159 = getelementptr inbounds %struct.fcp_rsp, %struct.fcp_rsp* %158, i32 0, i32 6
  %160 = load i32, i32* %16, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %19, align 4
  %164 = call i32 @memcpy(i64 %157, i32* %162, i32 %163)
  br label %165

165:                                              ; preds = %154, %129, %124
  %166 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %167 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %166, i32 0, i32 4
  %168 = load i64, i64* %167, align 8
  %169 = inttoptr i64 %168 to i32*
  store i32* %169, i32** %14, align 8
  %170 = load i32, i32* %13, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %196, label %172

172:                                              ; preds = %165
  %173 = load i32, i32* %12, align 4
  %174 = load i32, i32* @RESID_UNDER, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %196

177:                                              ; preds = %172
  %178 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %179 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @LOG_FCP, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %177
  %185 = load i32, i32* @LOG_FCP_ERROR, align 4
  store i32 %185, i32* %18, align 4
  br label %186

186:                                              ; preds = %184, %177
  %187 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %188 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @LOG_FCP_UNDER, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %186
  %194 = load i32, i32* @LOG_FCP_UNDER, align 4
  store i32 %194, i32* %18, align 4
  br label %195

195:                                              ; preds = %193, %186
  br label %196

196:                                              ; preds = %195, %172, %165
  %197 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %198 = load i32, i32* @KERN_WARNING, align 4
  %199 = load i32, i32* %18, align 4
  %200 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %201 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %200, i32 0, i32 3
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 0
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* %13, align 4
  %206 = load i32*, i32** %14, align 8
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @be32_to_cpu(i32 %207)
  %209 = load i32*, i32** %14, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 3
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @be32_to_cpu(i32 %211)
  %213 = load i32, i32* %12, align 4
  %214 = load %struct.fcp_rsp*, %struct.fcp_rsp** %10, align 8
  %215 = getelementptr inbounds %struct.fcp_rsp, %struct.fcp_rsp* %214, i32 0, i32 4
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @be32_to_cpu(i32 %216)
  %218 = load %struct.fcp_rsp*, %struct.fcp_rsp** %10, align 8
  %219 = getelementptr inbounds %struct.fcp_rsp, %struct.fcp_rsp* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @be32_to_cpu(i32 %220)
  %222 = load %struct.fcp_rsp*, %struct.fcp_rsp** %10, align 8
  %223 = getelementptr inbounds %struct.fcp_rsp, %struct.fcp_rsp* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @be32_to_cpu(i32 %224)
  %226 = load %struct.fcp_rsp*, %struct.fcp_rsp** %10, align 8
  %227 = getelementptr inbounds %struct.fcp_rsp, %struct.fcp_rsp* %226, i32 0, i32 5
  %228 = load i32, i32* %227, align 4
  %229 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %197, i32 %198, i32 %199, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0), i32 %204, i32 %205, i32 %208, i32 %212, i32 %213, i32 %217, i32 %221, i32 %225, i32 %228)
  %230 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %231 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %230, i32 0)
  %232 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %9, align 8
  %233 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = call i32 @be32_to_cpu(i32 %234)
  store i32 %235, i32* %17, align 4
  %236 = load i32, i32* %12, align 4
  %237 = load i32, i32* @RESID_UNDER, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %328

240:                                              ; preds = %196
  %241 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %242 = load %struct.fcp_rsp*, %struct.fcp_rsp** %10, align 8
  %243 = getelementptr inbounds %struct.fcp_rsp, %struct.fcp_rsp* %242, i32 0, i32 4
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @be32_to_cpu(i32 %244)
  %246 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %241, i32 %245)
  %247 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %248 = load i32, i32* @KERN_INFO, align 4
  %249 = load i32, i32* @LOG_FCP_UNDER, align 4
  %250 = load i32, i32* %17, align 4
  %251 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %252 = call i32 @scsi_get_resid(%struct.scsi_cmnd* %251)
  %253 = load i32, i32* %11, align 4
  %254 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %255 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %254, i32 0, i32 3
  %256 = load i32*, i32** %255, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 0
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %260 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %247, i32 %248, i32 %249, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i32 %250, i32 %252, i32 %253, i32 %258, i32 %261)
  %263 = load i32, i32* %11, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %291

265:                                              ; preds = %240
  %266 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %267 = call i32 @scsi_get_resid(%struct.scsi_cmnd* %266)
  %268 = load i32, i32* %11, align 4
  %269 = icmp ne i32 %267, %268
  br i1 %269, label %270, label %291

270:                                              ; preds = %265
  %271 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %272 = load i32, i32* @KERN_WARNING, align 4
  %273 = load i32, i32* @LOG_FCP, align 4
  %274 = load i32, i32* @LOG_FCP_ERROR, align 4
  %275 = or i32 %273, %274
  %276 = load i32, i32* %17, align 4
  %277 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %278 = call i32 @scsi_get_resid(%struct.scsi_cmnd* %277)
  %279 = load i32, i32* %11, align 4
  %280 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %281 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %280, i32 0, i32 3
  %282 = load i32*, i32** %281, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 0
  %284 = load i32, i32* %283, align 4
  %285 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %271, i32 %272, i32 %275, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0), i32 %276, i32 %278, i32 %279, i32 %284)
  %286 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %287 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %288 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %287)
  %289 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %286, i32 %288)
  %290 = load i32, i32* @DID_ERROR, align 4
  store i32 %290, i32* %15, align 4
  br label %291

291:                                              ; preds = %270, %265, %240
  %292 = load i32, i32* %12, align 4
  %293 = load i32, i32* @SNS_LEN_VALID, align 4
  %294 = and i32 %292, %293
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %327, label %296

296:                                              ; preds = %291
  %297 = load i32, i32* %13, align 4
  %298 = icmp eq i32 %297, 128
  br i1 %298, label %299, label %327

299:                                              ; preds = %296
  %300 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %301 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %300)
  %302 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %303 = call i32 @scsi_get_resid(%struct.scsi_cmnd* %302)
  %304 = sub nsw i32 %301, %303
  %305 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %306 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = icmp slt i32 %304, %307
  br i1 %308, label %309, label %327

309:                                              ; preds = %299
  %310 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %311 = load i32, i32* @KERN_INFO, align 4
  %312 = load i32, i32* @LOG_FCP, align 4
  %313 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %314 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %313, i32 0, i32 3
  %315 = load i32*, i32** %314, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 0
  %317 = load i32, i32* %316, align 4
  %318 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %319 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %318)
  %320 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %321 = call i32 @scsi_get_resid(%struct.scsi_cmnd* %320)
  %322 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %323 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %310, i32 %311, i32 %312, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.5, i64 0, i64 0), i32 %317, i32 %319, i32 %321, i32 %324)
  %326 = load i32, i32* @DID_ERROR, align 4
  store i32 %326, i32* %15, align 4
  br label %327

327:                                              ; preds = %309, %299, %296, %291
  br label %409

328:                                              ; preds = %196
  %329 = load i32, i32* %12, align 4
  %330 = load i32, i32* @RESID_OVER, align 4
  %331 = and i32 %329, %330
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %348

333:                                              ; preds = %328
  %334 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %335 = load i32, i32* @KERN_WARNING, align 4
  %336 = load i32, i32* @LOG_FCP, align 4
  %337 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %338 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %337, i32 0, i32 3
  %339 = load i32*, i32** %338, align 8
  %340 = getelementptr inbounds i32, i32* %339, i64 0
  %341 = load i32, i32* %340, align 4
  %342 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %343 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %342)
  %344 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %345 = call i32 @scsi_get_resid(%struct.scsi_cmnd* %344)
  %346 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %334, i32 %335, i32 %336, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i64 0, i64 0), i32 %341, i32 %343, i32 %345)
  %347 = load i32, i32* @DID_ERROR, align 4
  store i32 %347, i32* %15, align 4
  br label %408

348:                                              ; preds = %328
  %349 = load i32, i32* %11, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %407

351:                                              ; preds = %348
  %352 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %353 = load i32, i32* @KERN_WARNING, align 4
  %354 = load i32, i32* @LOG_FCP, align 4
  %355 = load i32, i32* @LOG_FCP_ERROR, align 4
  %356 = or i32 %354, %355
  %357 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %358 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %357, i32 0, i32 1
  %359 = load i64, i64* %358, align 8
  %360 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %361 = icmp eq i64 %359, %360
  %362 = zext i1 %361 to i64
  %363 = select i1 %361, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0)
  %364 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %365 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %364, i32 0, i32 0
  %366 = load i64, i64* %365, align 8
  %367 = load i64, i64* @LPFC_SLI_REV4, align 8
  %368 = icmp eq i64 %366, %367
  br i1 %368, label %369, label %374

369:                                              ; preds = %351
  %370 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %371 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %370, i32 0, i32 0
  %372 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 8
  br label %379

374:                                              ; preds = %351
  %375 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %376 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %375, i32 0, i32 0
  %377 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 4
  br label %379

379:                                              ; preds = %374, %369
  %380 = phi i32 [ %373, %369 ], [ %378, %374 ]
  %381 = load i32, i32* %17, align 4
  %382 = load %struct.fcp_rsp*, %struct.fcp_rsp** %10, align 8
  %383 = getelementptr inbounds %struct.fcp_rsp, %struct.fcp_rsp* %382, i32 0, i32 4
  %384 = load i32, i32* %383, align 4
  %385 = call i32 @be32_to_cpu(i32 %384)
  %386 = load i32, i32* %11, align 4
  %387 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %388 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %387, i32 0, i32 3
  %389 = load i32*, i32** %388, align 8
  %390 = getelementptr inbounds i32, i32* %389, i64 0
  %391 = load i32, i32* %390, align 4
  %392 = load i32, i32* %13, align 4
  %393 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %352, i32 %353, i32 %356, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.7, i64 0, i64 0), i8* %363, i32 %380, i32 %381, i32 %385, i32 %386, i32 %391, i32 %392)
  %394 = load i32, i32* %11, align 4
  %395 = load i32, i32* %17, align 4
  %396 = icmp sgt i32 %394, %395
  br i1 %396, label %397, label %398

397:                                              ; preds = %379
  br label %410

398:                                              ; preds = %379
  %399 = load i32, i32* %13, align 4
  switch i32 %399, label %402 [
    i32 128, label %400
    i32 129, label %400
  ]

400:                                              ; preds = %398, %398
  %401 = load i32, i32* @DID_ERROR, align 4
  store i32 %401, i32* %15, align 4
  br label %402

402:                                              ; preds = %398, %400
  %403 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %404 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %405 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %404)
  %406 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %403, i32 %405)
  br label %407

407:                                              ; preds = %402, %348
  br label %408

408:                                              ; preds = %407, %333
  br label %409

409:                                              ; preds = %408, %327
  br label %410

410:                                              ; preds = %409, %397, %99, %71, %52
  %411 = load i32, i32* %15, align 4
  %412 = shl i32 %411, 16
  %413 = load i32, i32* %13, align 4
  %414 = or i32 %412, %413
  %415 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %416 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %415, i32 0, i32 2
  store i32 %414, i32* %416, align 8
  %417 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %418 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %417, i32 0, i32 1
  %419 = load %struct.lpfc_hba*, %struct.lpfc_hba** %418, align 8
  %420 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %421 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %422 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %423 = call i32 @lpfc_send_scsi_error_event(%struct.lpfc_hba* %419, %struct.lpfc_vport* %420, %struct.lpfc_io_buf* %421, %struct.lpfc_iocbq* %422)
  ret void
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, ...) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

declare dso_local i32 @scsi_set_resid(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @scsi_get_resid(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @lpfc_send_scsi_error_event(%struct.lpfc_hba*, %struct.lpfc_vport*, %struct.lpfc_io_buf*, %struct.lpfc_iocbq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
