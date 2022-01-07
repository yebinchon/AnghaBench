; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_sli3_bsg_diag_loopback_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_sli3_bsg_diag_loopback_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i32, i32, i32 }
%struct.bsg_job = type { i32, %struct.fc_bsg_reply*, %struct.fc_bsg_request* }
%struct.fc_bsg_reply = type { i32, i64 }
%struct.fc_bsg_request = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.diag_mode_set = type { i64, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64, i8*, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }

@MBX_SUCCESS = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@LOG_LIBDFC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"2738 Received DIAG MODE request size:%d below the minimum size:%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MBX_DOWN_LINK = common dso_local global i32 0, align 4
@OWN_HOST = common dso_local global i8* null, align 8
@LPFC_MBOX_TMO = common dso_local global i32 0, align 4
@LPFC_LINK_DOWN = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@INTERNAL_LOOP_BACK = common dso_local global i64 0, align 8
@FLAGS_LOCAL_LB = common dso_local global i32 0, align 4
@FLAGS_TOPOLOGY_MODE_LOOP = common dso_local global i32 0, align 4
@MBX_INIT_LINK = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@LS_LOOPBACK_MODE = common dso_local global i32 0, align 4
@LPFC_HBA_READY = common dso_local global i64 0, align 8
@MBX_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, %struct.bsg_job*)* @lpfc_sli3_bsg_diag_loopback_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli3_bsg_diag_loopback_mode(%struct.lpfc_hba* %0, %struct.bsg_job* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.bsg_job*, align 8
  %5 = alloca %struct.fc_bsg_request*, align 8
  %6 = alloca %struct.fc_bsg_reply*, align 8
  %7 = alloca %struct.diag_mode_set*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.bsg_job* %1, %struct.bsg_job** %4, align 8
  %14 = load %struct.bsg_job*, %struct.bsg_job** %4, align 8
  %15 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %14, i32 0, i32 2
  %16 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %15, align 8
  store %struct.fc_bsg_request* %16, %struct.fc_bsg_request** %5, align 8
  %17 = load %struct.bsg_job*, %struct.bsg_job** %4, align 8
  %18 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %17, i32 0, i32 1
  %19 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %18, align 8
  store %struct.fc_bsg_reply* %19, %struct.fc_bsg_reply** %6, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %10, align 8
  %20 = load i32, i32* @MBX_SUCCESS, align 4
  store i32 %20, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %21 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %6, align 8
  %22 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = load %struct.bsg_job*, %struct.bsg_job** %4, align 8
  %24 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = icmp ult i64 %26, 24
  br i1 %27, label %28, label %38

28:                                               ; preds = %2
  %29 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %30 = load i32, i32* @KERN_WARNING, align 4
  %31 = load i32, i32* @LOG_LIBDFC, align 4
  %32 = load %struct.bsg_job*, %struct.bsg_job** %4, align 8
  %33 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %29, i32 %30, i32 %31, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %34, i32 24)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %13, align 4
  br label %218

38:                                               ; preds = %2
  %39 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %40 = call i32 @lpfc_bsg_diag_mode_enter(%struct.lpfc_hba* %39)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %218

44:                                               ; preds = %38
  %45 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %5, align 8
  %46 = getelementptr inbounds %struct.fc_bsg_request, %struct.fc_bsg_request* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to %struct.diag_mode_set*
  store %struct.diag_mode_set* %50, %struct.diag_mode_set** %7, align 8
  %51 = load %struct.diag_mode_set*, %struct.diag_mode_set** %7, align 8
  %52 = getelementptr inbounds %struct.diag_mode_set, %struct.diag_mode_set* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %8, align 8
  %54 = load %struct.diag_mode_set*, %struct.diag_mode_set** %7, align 8
  %55 = getelementptr inbounds %struct.diag_mode_set, %struct.diag_mode_set* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = mul nsw i32 %56, 100
  %58 = sext i32 %57 to i64
  store i64 %58, i64* %9, align 8
  %59 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %60 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call %struct.TYPE_17__* @mempool_alloc(i32 %61, i32 %62)
  store %struct.TYPE_17__* %63, %struct.TYPE_17__** %10, align 8
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %65 = icmp ne %struct.TYPE_17__* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %44
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %13, align 4
  br label %202

69:                                               ; preds = %44
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %71 = bitcast %struct.TYPE_17__* %70 to i8*
  %72 = call i32 @memset(i8* %71, i32 0, i32 24)
  %73 = load i32, i32* @MBX_DOWN_LINK, align 4
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 2
  store i32 %73, i32* %77, align 8
  %78 = load i8*, i8** @OWN_HOST, align 8
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 1
  store i8* %78, i8** %82, align 8
  %83 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %85 = load i32, i32* @LPFC_MBOX_TMO, align 4
  %86 = call i32 @lpfc_sli_issue_mbox_wait(%struct.lpfc_hba* %83, %struct.TYPE_17__* %84, i32 %85)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* @MBX_SUCCESS, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %198

90:                                               ; preds = %69
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %198

97:                                               ; preds = %90
  store i32 0, i32* %12, align 4
  br label %98

98:                                               ; preds = %113, %97
  %99 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %100 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @LPFC_LINK_DOWN, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %115

104:                                              ; preds = %98
  %105 = load i32, i32* %12, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %12, align 4
  %107 = sext i32 %105 to i64
  %108 = load i64, i64* %9, align 8
  %109 = icmp sgt i64 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %104
  %111 = load i32, i32* @ETIMEDOUT, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %13, align 4
  br label %202

113:                                              ; preds = %104
  %114 = call i32 @msleep(i32 10)
  br label %98

115:                                              ; preds = %98
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %117 = bitcast %struct.TYPE_17__* %116 to i8*
  %118 = call i32 @memset(i8* %117, i32 0, i32 24)
  %119 = load i64, i64* %8, align 8
  %120 = load i64, i64* @INTERNAL_LOOP_BACK, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %130

122:                                              ; preds = %115
  %123 = load i32, i32* @FLAGS_LOCAL_LB, align 4
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 0
  store i32 %123, i32* %129, align 4
  br label %138

130:                                              ; preds = %115
  %131 = load i32, i32* @FLAGS_TOPOLOGY_MODE_LOOP, align 4
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 0
  store i32 %131, i32* %137, align 4
  br label %138

138:                                              ; preds = %130, %122
  %139 = load i32, i32* @MBX_INIT_LINK, align 4
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 2
  store i32 %139, i32* %143, align 8
  %144 = load i8*, i8** @OWN_HOST, align 8
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 1
  store i8* %144, i8** %148, align 8
  %149 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %151 = load i32, i32* @LPFC_MBOX_TMO, align 4
  %152 = call i32 @lpfc_sli_issue_mbox_wait(%struct.lpfc_hba* %149, %struct.TYPE_17__* %150, i32 %151)
  store i32 %152, i32* %11, align 4
  %153 = load i32, i32* %11, align 4
  %154 = load i32, i32* @MBX_SUCCESS, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %163, label %156

156:                                              ; preds = %138
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %156, %138
  %164 = load i32, i32* @ENODEV, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %13, align 4
  br label %197

166:                                              ; preds = %156
  %167 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %168 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %167, i32 0, i32 2
  %169 = call i32 @spin_lock_irq(i32* %168)
  %170 = load i32, i32* @LS_LOOPBACK_MODE, align 4
  %171 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %172 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 8
  %174 = or i32 %173, %170
  store i32 %174, i32* %172, align 8
  %175 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %176 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %175, i32 0, i32 2
  %177 = call i32 @spin_unlock_irq(i32* %176)
  %178 = call i32 @msleep(i32 100)
  store i32 0, i32* %12, align 4
  br label %179

179:                                              ; preds = %194, %166
  %180 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %181 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @LPFC_HBA_READY, align 8
  %184 = icmp ne i64 %182, %183
  br i1 %184, label %185, label %196

185:                                              ; preds = %179
  %186 = load i32, i32* %12, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %12, align 4
  %188 = sext i32 %186 to i64
  %189 = load i64, i64* %9, align 8
  %190 = icmp sgt i64 %188, %189
  br i1 %190, label %191, label %194

191:                                              ; preds = %185
  %192 = load i32, i32* @ETIMEDOUT, align 4
  %193 = sub nsw i32 0, %192
  store i32 %193, i32* %13, align 4
  br label %196

194:                                              ; preds = %185
  %195 = call i32 @msleep(i32 10)
  br label %179

196:                                              ; preds = %191, %179
  br label %197

197:                                              ; preds = %196, %163
  br label %201

198:                                              ; preds = %90, %69
  %199 = load i32, i32* @ENODEV, align 4
  %200 = sub nsw i32 0, %199
  store i32 %200, i32* %13, align 4
  br label %201

201:                                              ; preds = %198, %197
  br label %202

202:                                              ; preds = %201, %110, %66
  %203 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %204 = call i32 @lpfc_bsg_diag_mode_exit(%struct.lpfc_hba* %203)
  %205 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %206 = icmp ne %struct.TYPE_17__* %205, null
  br i1 %206, label %207, label %217

207:                                              ; preds = %202
  %208 = load i32, i32* %11, align 4
  %209 = load i32, i32* @MBX_TIMEOUT, align 4
  %210 = icmp ne i32 %208, %209
  br i1 %210, label %211, label %217

211:                                              ; preds = %207
  %212 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %213 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %214 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @mempool_free(%struct.TYPE_17__* %212, i32 %215)
  br label %217

217:                                              ; preds = %211, %207, %202
  br label %218

218:                                              ; preds = %217, %43, %28
  %219 = load i32, i32* %13, align 4
  %220 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %6, align 8
  %221 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %220, i32 0, i32 0
  store i32 %219, i32* %221, align 8
  %222 = load i32, i32* %13, align 4
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %233

224:                                              ; preds = %218
  %225 = load %struct.bsg_job*, %struct.bsg_job** %4, align 8
  %226 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %6, align 8
  %227 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %6, align 8
  %230 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = call i32 @bsg_job_done(%struct.bsg_job* %225, i32 %228, i64 %231)
  br label %233

233:                                              ; preds = %224, %218
  %234 = load i32, i32* %13, align 4
  ret i32 %234
}

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @lpfc_bsg_diag_mode_enter(%struct.lpfc_hba*) #1

declare dso_local %struct.TYPE_17__* @mempool_alloc(i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @lpfc_sli_issue_mbox_wait(%struct.lpfc_hba*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @lpfc_bsg_diag_mode_exit(%struct.lpfc_hba*) #1

declare dso_local i32 @mempool_free(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @bsg_job_done(%struct.bsg_job*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
