; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_sli4_bsg_diag_loopback_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_sli4_bsg_diag_loopback_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i32, i32, %struct.TYPE_10__*, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.bsg_job = type { i32, %struct.fc_bsg_reply*, %struct.fc_bsg_request* }
%struct.fc_bsg_reply = type { i32, i64 }
%struct.fc_bsg_request = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.diag_mode_set = type { i32, i32, i32 }

@KERN_WARNING = common dso_local global i32 0, align 4
@LOG_LIBDFC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"3011 Received DIAG MODE request size:%d below the minimum size:%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DISABLE_LOOP_BACK = common dso_local global i32 0, align 4
@LPFC_DIAG_LOOPBACK_TYPE_DISABLE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@LS_LOOPBACK_MODE = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"3129 Bring link to diagnostic state.\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"3130 Failed to bring link to diagnostic state, rc:x%x\0A\00", align 1
@LPFC_LINK_DOWN = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [65 x i8] c"3131 Timeout waiting for link to diagnostic mode, timeout:%d ms\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"3132 Set up loopback mode:x%x\0A\00", align 1
@LPFC_DIAG_LOOPBACK_TYPE_INTERNAL = common dso_local global i32 0, align 4
@ELNRNG = common dso_local global i32 0, align 4
@LPFC_DIAG_LOOPBACK_TYPE_EXTERNAL_TRUNKED = common dso_local global i32 0, align 4
@LPFC_DIAG_LOOPBACK_TYPE_SERDES = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"3141 Loopback mode:x%x not supported\0A\00", align 1
@LPFC_LINK_UP = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [66 x i8] c"3137 Timeout waiting for link up in loopback mode, timeout:%d ms\0A\00", align 1
@LPFC_HBA_READY = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [66 x i8] c"3133 Timeout waiting for port loopback mode ready, timeout:%d ms\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, %struct.bsg_job*)* @lpfc_sli4_bsg_diag_loopback_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli4_bsg_diag_loopback_mode(%struct.lpfc_hba* %0, %struct.bsg_job* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.bsg_job*, align 8
  %5 = alloca %struct.fc_bsg_request*, align 8
  %6 = alloca %struct.fc_bsg_reply*, align 8
  %7 = alloca %struct.diag_mode_set*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.bsg_job* %1, %struct.bsg_job** %4, align 8
  %13 = load %struct.bsg_job*, %struct.bsg_job** %4, align 8
  %14 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %13, i32 0, i32 2
  %15 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %14, align 8
  store %struct.fc_bsg_request* %15, %struct.fc_bsg_request** %5, align 8
  %16 = load %struct.bsg_job*, %struct.bsg_job** %4, align 8
  %17 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %16, i32 0, i32 1
  %18 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %17, align 8
  store %struct.fc_bsg_reply* %18, %struct.fc_bsg_reply** %6, align 8
  store i32 0, i32* %12, align 4
  %19 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %6, align 8
  %20 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = load %struct.bsg_job*, %struct.bsg_job** %4, align 8
  %22 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = icmp ult i64 %24, 20
  br i1 %25, label %26, label %36

26:                                               ; preds = %2
  %27 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %28 = load i32, i32* @KERN_WARNING, align 4
  %29 = load i32, i32* @LOG_LIBDFC, align 4
  %30 = load %struct.bsg_job*, %struct.bsg_job** %4, align 8
  %31 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %27, i32 %28, i32 %29, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %32, i32 20)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %12, align 4
  br label %345

36:                                               ; preds = %2
  %37 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %5, align 8
  %38 = getelementptr inbounds %struct.fc_bsg_request, %struct.fc_bsg_request* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to %struct.diag_mode_set*
  store %struct.diag_mode_set* %42, %struct.diag_mode_set** %7, align 8
  %43 = load %struct.diag_mode_set*, %struct.diag_mode_set** %7, align 8
  %44 = getelementptr inbounds %struct.diag_mode_set, %struct.diag_mode_set* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %8, align 4
  %46 = load %struct.diag_mode_set*, %struct.diag_mode_set** %7, align 8
  %47 = getelementptr inbounds %struct.diag_mode_set, %struct.diag_mode_set* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %48, 100
  store i32 %49, i32* %9, align 4
  %50 = load %struct.diag_mode_set*, %struct.diag_mode_set** %7, align 8
  %51 = getelementptr inbounds %struct.diag_mode_set, %struct.diag_mode_set* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %60

54:                                               ; preds = %36
  %55 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %56 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %10, align 4
  br label %64

60:                                               ; preds = %36
  %61 = load %struct.diag_mode_set*, %struct.diag_mode_set** %7, align 8
  %62 = getelementptr inbounds %struct.diag_mode_set, %struct.diag_mode_set* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %60, %54
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @DISABLE_LOOP_BACK, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %86

68:                                               ; preds = %64
  %69 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %70 = load i32, i32* @LPFC_DIAG_LOOPBACK_TYPE_DISABLE, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @lpfc_sli4_bsg_set_loopback_mode(%struct.lpfc_hba* %69, i32 %70, i32 %71)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %85, label %75

75:                                               ; preds = %68
  %76 = load i32, i32* %10, align 4
  %77 = shl i32 1, %76
  %78 = shl i32 %77, 4
  %79 = xor i32 %78, -1
  %80 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %81 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = and i32 %83, %79
  store i32 %84, i32* %82, align 8
  br label %85

85:                                               ; preds = %75, %68
  br label %345

86:                                               ; preds = %64
  %87 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %88 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %10, align 4
  %92 = shl i32 1, %91
  %93 = shl i32 %92, 4
  %94 = and i32 %90, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %86
  %97 = load i32, i32* @EPERM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %12, align 4
  br label %345

99:                                               ; preds = %86
  br label %100

100:                                              ; preds = %99
  %101 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %102 = call i32 @lpfc_bsg_diag_mode_enter(%struct.lpfc_hba* %101)
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %12, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  br label %345

106:                                              ; preds = %100
  %107 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %108 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %107, i32 0, i32 1
  %109 = call i32 @spin_lock_irq(i32* %108)
  %110 = load i32, i32* @LS_LOOPBACK_MODE, align 4
  %111 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %112 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 4
  %115 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %116 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %115, i32 0, i32 1
  %117 = call i32 @spin_unlock_irq(i32* %116)
  %118 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %119 = call i32 @lpfc_selective_reset(%struct.lpfc_hba* %118)
  store i32 %119, i32* %12, align 4
  %120 = load i32, i32* %12, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %106
  br label %345

123:                                              ; preds = %106
  %124 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %125 = load i32, i32* @KERN_INFO, align 4
  %126 = load i32, i32* @LOG_LIBDFC, align 4
  %127 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %124, i32 %125, i32 %126, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %128 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %129 = call i32 @lpfc_sli4_bsg_set_link_diag_state(%struct.lpfc_hba* %128, i32 1)
  store i32 %129, i32* %12, align 4
  %130 = load i32, i32* %12, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %123
  %133 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %134 = load i32, i32* @KERN_WARNING, align 4
  %135 = load i32, i32* @LOG_LIBDFC, align 4
  %136 = load i32, i32* %12, align 4
  %137 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %133, i32 %134, i32 %135, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %136)
  br label %326

138:                                              ; preds = %123
  store i32 0, i32* %11, align 4
  br label %139

139:                                              ; preds = %159, %138
  %140 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %141 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @LPFC_LINK_DOWN, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %161

145:                                              ; preds = %139
  %146 = load i32, i32* %11, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %11, align 4
  %148 = load i32, i32* %9, align 4
  %149 = icmp sgt i32 %146, %148
  br i1 %149, label %150, label %159

150:                                              ; preds = %145
  %151 = load i32, i32* @ETIMEDOUT, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %12, align 4
  %153 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %154 = load i32, i32* @KERN_INFO, align 4
  %155 = load i32, i32* @LOG_LIBDFC, align 4
  %156 = load i32, i32* %9, align 4
  %157 = mul nsw i32 %156, 10
  %158 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %153, i32 %154, i32 %155, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0), i32 %157)
  br label %326

159:                                              ; preds = %145
  %160 = call i32 @msleep(i32 10)
  br label %139

161:                                              ; preds = %139
  %162 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %163 = load i32, i32* @KERN_INFO, align 4
  %164 = load i32, i32* @LOG_LIBDFC, align 4
  %165 = load i32, i32* %8, align 4
  %166 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %162, i32 %163, i32 %164, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %165)
  %167 = load i32, i32* %8, align 4
  switch i32 %167, label %250 [
    i32 128, label %168
    i32 129, label %209
  ]

168:                                              ; preds = %161
  %169 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %170 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %169, i32 0, i32 4
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* %10, align 4
  %174 = shl i32 1, %173
  %175 = and i32 %172, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %168
  %178 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %179 = load i32, i32* @LPFC_DIAG_LOOPBACK_TYPE_INTERNAL, align 4
  %180 = load i32, i32* %10, align 4
  %181 = call i32 @lpfc_sli4_bsg_set_loopback_mode(%struct.lpfc_hba* %178, i32 %179, i32 %180)
  store i32 %181, i32* %12, align 4
  br label %196

182:                                              ; preds = %168
  %183 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %184 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %183, i32 0, i32 4
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %182
  %189 = load i32, i32* @ELNRNG, align 4
  %190 = sub nsw i32 0, %189
  store i32 %190, i32* %12, align 4
  br label %326

191:                                              ; preds = %182
  %192 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %193 = load i32, i32* @LPFC_DIAG_LOOPBACK_TYPE_INTERNAL, align 4
  %194 = load i32, i32* %10, align 4
  %195 = call i32 @lpfc_sli4_bsg_set_loopback_mode(%struct.lpfc_hba* %192, i32 %193, i32 %194)
  store i32 %195, i32* %12, align 4
  br label %196

196:                                              ; preds = %191, %177
  %197 = load i32, i32* %12, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %208, label %199

199:                                              ; preds = %196
  %200 = load i32, i32* %10, align 4
  %201 = shl i32 1, %200
  %202 = shl i32 %201, 4
  %203 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %204 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %203, i32 0, i32 4
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = or i32 %206, %202
  store i32 %207, i32* %205, align 8
  br label %208

208:                                              ; preds = %199, %196
  br label %258

209:                                              ; preds = %161
  %210 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %211 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %210, i32 0, i32 4
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* %10, align 4
  %215 = shl i32 1, %214
  %216 = and i32 %213, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %223

218:                                              ; preds = %209
  %219 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %220 = load i32, i32* @LPFC_DIAG_LOOPBACK_TYPE_EXTERNAL_TRUNKED, align 4
  %221 = load i32, i32* %10, align 4
  %222 = call i32 @lpfc_sli4_bsg_set_loopback_mode(%struct.lpfc_hba* %219, i32 %220, i32 %221)
  store i32 %222, i32* %12, align 4
  br label %237

223:                                              ; preds = %209
  %224 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %225 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %224, i32 0, i32 4
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %232

229:                                              ; preds = %223
  %230 = load i32, i32* @ELNRNG, align 4
  %231 = sub nsw i32 0, %230
  store i32 %231, i32* %12, align 4
  br label %326

232:                                              ; preds = %223
  %233 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %234 = load i32, i32* @LPFC_DIAG_LOOPBACK_TYPE_SERDES, align 4
  %235 = load i32, i32* %10, align 4
  %236 = call i32 @lpfc_sli4_bsg_set_loopback_mode(%struct.lpfc_hba* %233, i32 %234, i32 %235)
  store i32 %236, i32* %12, align 4
  br label %237

237:                                              ; preds = %232, %218
  %238 = load i32, i32* %12, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %249, label %240

240:                                              ; preds = %237
  %241 = load i32, i32* %10, align 4
  %242 = shl i32 1, %241
  %243 = shl i32 %242, 4
  %244 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %245 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %244, i32 0, i32 4
  %246 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = or i32 %247, %243
  store i32 %248, i32* %246, align 8
  br label %249

249:                                              ; preds = %240, %237
  br label %258

250:                                              ; preds = %161
  %251 = load i32, i32* @EINVAL, align 4
  %252 = sub nsw i32 0, %251
  store i32 %252, i32* %12, align 4
  %253 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %254 = load i32, i32* @KERN_ERR, align 4
  %255 = load i32, i32* @LOG_LIBDFC, align 4
  %256 = load i32, i32* %8, align 4
  %257 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %253, i32 %254, i32 %255, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %256)
  br label %326

258:                                              ; preds = %249, %208
  %259 = load i32, i32* %12, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %286, label %261

261:                                              ; preds = %258
  %262 = call i32 @msleep(i32 100)
  store i32 0, i32* %11, align 4
  br label %263

263:                                              ; preds = %283, %261
  %264 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %265 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = load i64, i64* @LPFC_LINK_UP, align 8
  %268 = icmp slt i64 %266, %267
  br i1 %268, label %269, label %285

269:                                              ; preds = %263
  %270 = load i32, i32* %11, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %11, align 4
  %272 = load i32, i32* %9, align 4
  %273 = icmp sgt i32 %270, %272
  br i1 %273, label %274, label %283

274:                                              ; preds = %269
  %275 = load i32, i32* @ETIMEDOUT, align 4
  %276 = sub nsw i32 0, %275
  store i32 %276, i32* %12, align 4
  %277 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %278 = load i32, i32* @KERN_INFO, align 4
  %279 = load i32, i32* @LOG_LIBDFC, align 4
  %280 = load i32, i32* %9, align 4
  %281 = mul nsw i32 %280, 10
  %282 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %277, i32 %278, i32 %279, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.6, i64 0, i64 0), i32 %281)
  br label %285

283:                                              ; preds = %269
  %284 = call i32 @msleep(i32 10)
  br label %263

285:                                              ; preds = %274, %263
  br label %286

286:                                              ; preds = %285, %258
  %287 = load i32, i32* %12, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %296, label %289

289:                                              ; preds = %286
  %290 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %291 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %290, i32 0, i32 3
  %292 = load %struct.TYPE_10__*, %struct.TYPE_10__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %292, i32 0, i32 0
  store i32 1, i32* %293, align 4
  %294 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %295 = call i32 @lpfc_sli4_diag_fcport_reg_setup(%struct.lpfc_hba* %294)
  store i32 %295, i32* %12, align 4
  br label %297

296:                                              ; preds = %286
  br label %326

297:                                              ; preds = %289
  %298 = load i32, i32* %12, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %325, label %300

300:                                              ; preds = %297
  %301 = call i32 @msleep(i32 100)
  store i32 0, i32* %11, align 4
  br label %302

302:                                              ; preds = %322, %300
  %303 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %304 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = load i64, i64* @LPFC_HBA_READY, align 8
  %307 = icmp ne i64 %305, %306
  br i1 %307, label %308, label %324

308:                                              ; preds = %302
  %309 = load i32, i32* %11, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %11, align 4
  %311 = load i32, i32* %9, align 4
  %312 = icmp sgt i32 %309, %311
  br i1 %312, label %313, label %322

313:                                              ; preds = %308
  %314 = load i32, i32* @ETIMEDOUT, align 4
  %315 = sub nsw i32 0, %314
  store i32 %315, i32* %12, align 4
  %316 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %317 = load i32, i32* @KERN_INFO, align 4
  %318 = load i32, i32* @LOG_LIBDFC, align 4
  %319 = load i32, i32* %9, align 4
  %320 = mul nsw i32 %319, 10
  %321 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %316, i32 %317, i32 %318, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.7, i64 0, i64 0), i32 %320)
  br label %324

322:                                              ; preds = %308
  %323 = call i32 @msleep(i32 10)
  br label %302

324:                                              ; preds = %313, %302
  br label %325

325:                                              ; preds = %324, %297
  br label %326

326:                                              ; preds = %325, %296, %250, %229, %188, %150, %132
  %327 = load i32, i32* %12, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %342

329:                                              ; preds = %326
  %330 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %331 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %330, i32 0, i32 1
  %332 = call i32 @spin_lock_irq(i32* %331)
  %333 = load i32, i32* @LS_LOOPBACK_MODE, align 4
  %334 = xor i32 %333, -1
  %335 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %336 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %335, i32 0, i32 2
  %337 = load i32, i32* %336, align 4
  %338 = and i32 %337, %334
  store i32 %338, i32* %336, align 4
  %339 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %340 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %339, i32 0, i32 1
  %341 = call i32 @spin_unlock_irq(i32* %340)
  br label %342

342:                                              ; preds = %329, %326
  %343 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %344 = call i32 @lpfc_bsg_diag_mode_exit(%struct.lpfc_hba* %343)
  br label %345

345:                                              ; preds = %342, %122, %105, %96, %85, %26
  %346 = load i32, i32* %12, align 4
  %347 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %6, align 8
  %348 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %347, i32 0, i32 0
  store i32 %346, i32* %348, align 8
  %349 = load i32, i32* %12, align 4
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %351, label %360

351:                                              ; preds = %345
  %352 = load %struct.bsg_job*, %struct.bsg_job** %4, align 8
  %353 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %6, align 8
  %354 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 8
  %356 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %6, align 8
  %357 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %356, i32 0, i32 1
  %358 = load i64, i64* %357, align 8
  %359 = call i32 @bsg_job_done(%struct.bsg_job* %352, i32 %355, i64 %358)
  br label %360

360:                                              ; preds = %351, %345
  %361 = load i32, i32* %12, align 4
  ret i32 %361
}

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, ...) #1

declare dso_local i32 @lpfc_sli4_bsg_set_loopback_mode(%struct.lpfc_hba*, i32, i32) #1

declare dso_local i32 @lpfc_bsg_diag_mode_enter(%struct.lpfc_hba*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @lpfc_selective_reset(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli4_bsg_set_link_diag_state(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @lpfc_sli4_diag_fcport_reg_setup(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_bsg_diag_mode_exit(%struct.lpfc_hba*) #1

declare dso_local i32 @bsg_job_done(%struct.bsg_job*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
