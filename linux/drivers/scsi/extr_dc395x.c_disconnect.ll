; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_dc395x.c_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterCtlBlk = type { i64, i8*, %struct.DeviceCtlBlk*, %struct.TYPE_2__ }
%struct.DeviceCtlBlk = type { %struct.ScsiReqBlk*, i32, i32, i32, i32 }
%struct.ScsiReqBlk = type { i32, i32, i32, i8*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"disconnect: No such device\0A\00", align 1
@jiffies = common dso_local global i8* null, align 8
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"disconnectEx\00", align 1
@TRM_S1040_SCSI_CONTROL = common dso_local global i32 0, align 4
@DO_HWRESELECT = common dso_local global i32 0, align 4
@DBG_0 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"disconnect: (0x%p)\0A\00", align 1
@PH_BUS_FREE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"disconnect\00", align 1
@SRB_UNEXPECT_RESEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"disconnect: Unexpected reselection <%02i-%i>\0A\00", align 1
@SRB_ABORT_SENT = common dso_local global i32 0, align 4
@ABORT_DEV_ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"disconnect: SRB_ABORT_SENT\0A\00", align 1
@DID_ABORT = common dso_local global i32 0, align 4
@SRB_START_ = common dso_local global i32 0, align 4
@SRB_MSGOUT = common dso_local global i32 0, align 4
@SRB_DISCONNECT = common dso_local global i32 0, align 4
@SRB_COMPLETED = common dso_local global i32 0, align 4
@SRB_READY = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"disconnect: (0x%p) Unexpected\0A\00", align 1
@SCSI_STAT_SEL_TIMEOUT = common dso_local global i8* null, align 8
@DBG_KG = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [36 x i8] c"disconnect: (0x%p) <%02i-%i> SelTO\0A\00", align 1
@DC395x_MAX_RETRIES = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [26 x i8] c"disconnect: (0x%p) Retry\0A\00", align 1
@TRM_S1040_SCSI_SIGNAL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [64 x i8] c"disconnect: SCSI bus stat  0x%02x: ACK set! Other controllers?\0A\00", align 1
@SRB_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterCtlBlk*)* @disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disconnect(%struct.AdapterCtlBlk* %0) #0 {
  %2 = alloca %struct.AdapterCtlBlk*, align 8
  %3 = alloca %struct.DeviceCtlBlk*, align 8
  %4 = alloca %struct.ScsiReqBlk*, align 8
  %5 = alloca i32, align 4
  store %struct.AdapterCtlBlk* %0, %struct.AdapterCtlBlk** %2, align 8
  %6 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %7 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %6, i32 0, i32 2
  %8 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %7, align 8
  store %struct.DeviceCtlBlk* %8, %struct.DeviceCtlBlk** %3, align 8
  %9 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %3, align 8
  %10 = icmp ne %struct.DeviceCtlBlk* %9, null
  br i1 %10, label %36, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @KERN_ERR, align 4
  %13 = call i32 (i32, i8*, ...) @dprintkl(i32 %12, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @udelay(i32 500)
  %15 = load i8*, i8** @jiffies, align 8
  %16 = load i32, i32* @HZ, align 4
  %17 = sdiv i32 %16, 2
  %18 = sext i32 %17 to i64
  %19 = getelementptr i8, i8* %15, i64 %18
  %20 = load i32, i32* @HZ, align 4
  %21 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %22 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = mul nsw i32 %20, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr i8, i8* %19, i64 %26
  %28 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %29 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %31 = call i32 @clear_fifo(%struct.AdapterCtlBlk* %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %33 = load i32, i32* @TRM_S1040_SCSI_CONTROL, align 4
  %34 = load i32, i32* @DO_HWRESELECT, align 4
  %35 = call i32 @DC395x_write16(%struct.AdapterCtlBlk* %32, i32 %33, i32 %34)
  br label %243

36:                                               ; preds = %1
  %37 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %3, align 8
  %38 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %37, i32 0, i32 0
  %39 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %38, align 8
  store %struct.ScsiReqBlk* %39, %struct.ScsiReqBlk** %4, align 8
  %40 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %41 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %40, i32 0, i32 2
  store %struct.DeviceCtlBlk* null, %struct.DeviceCtlBlk** %41, align 8
  %42 = load i32, i32* @DBG_0, align 4
  %43 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %44 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (i32, i8*, i32, ...) @dprintkdbg(i32 %42, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @PH_BUS_FREE, align 4
  %48 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %49 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 4
  %50 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %51 = call i32 @clear_fifo(%struct.AdapterCtlBlk* %50, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %52 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %53 = load i32, i32* @TRM_S1040_SCSI_CONTROL, align 4
  %54 = load i32, i32* @DO_HWRESELECT, align 4
  %55 = call i32 @DC395x_write16(%struct.AdapterCtlBlk* %52, i32 %53, i32 %54)
  %56 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %57 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @SRB_UNEXPECT_RESEL, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %36
  %63 = load i32, i32* @KERN_ERR, align 4
  %64 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %3, align 8
  %65 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %3, align 8
  %68 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i32, i8*, ...) @dprintkl(i32 %63, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %66, i32 %69)
  %71 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %72 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %71, i32 0, i32 1
  store i32 0, i32* %72, align 4
  %73 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %74 = call i32 @waiting_process_next(%struct.AdapterCtlBlk* %73)
  br label %243

75:                                               ; preds = %36
  %76 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %77 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @SRB_ABORT_SENT, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %107

82:                                               ; preds = %75
  %83 = load i32, i32* @ABORT_DEV_, align 4
  %84 = xor i32 %83, -1
  %85 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %3, align 8
  %86 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, %84
  store i32 %88, i32* %86, align 4
  %89 = load i8*, i8** @jiffies, align 8
  %90 = load i32, i32* @HZ, align 4
  %91 = sdiv i32 %90, 2
  %92 = sext i32 %91 to i64
  %93 = getelementptr i8, i8* %89, i64 %92
  %94 = getelementptr i8, i8* %93, i64 1
  %95 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %96 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %95, i32 0, i32 1
  store i8* %94, i8** %96, align 8
  %97 = load i32, i32* @KERN_ERR, align 4
  %98 = call i32 (i32, i8*, ...) @dprintkl(i32 %97, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %99 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %100 = load i32, i32* @DID_ABORT, align 4
  %101 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %102 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @doing_srb_done(%struct.AdapterCtlBlk* %99, i32 %100, i32 %103, i32 1)
  %105 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %106 = call i32 @waiting_process_next(%struct.AdapterCtlBlk* %105)
  br label %242

107:                                              ; preds = %75
  %108 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %109 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @SRB_START_, align 4
  %112 = load i32, i32* @SRB_MSGOUT, align 4
  %113 = add nsw i32 %111, %112
  %114 = and i32 %110, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %125, label %116

116:                                              ; preds = %107
  %117 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %118 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @SRB_DISCONNECT, align 4
  %121 = load i32, i32* @SRB_COMPLETED, align 4
  %122 = add nsw i32 %120, %121
  %123 = and i32 %119, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %196, label %125

125:                                              ; preds = %116, %107
  %126 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %127 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @SRB_START_, align 4
  %130 = icmp ne i32 %128, %129
  br i1 %130, label %131, label %149

131:                                              ; preds = %125
  %132 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %133 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @SRB_MSGOUT, align 4
  %136 = icmp ne i32 %134, %135
  br i1 %136, label %137, label %149

137:                                              ; preds = %131
  %138 = load i32, i32* @SRB_READY, align 4
  %139 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %140 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 4
  %141 = load i32, i32* @KERN_DEBUG, align 4
  %142 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %143 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 (i32, i8*, ...) @dprintkl(i32 %141, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %144)
  %146 = load i8*, i8** @SCSI_STAT_SEL_TIMEOUT, align 8
  %147 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %148 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %147, i32 0, i32 3
  store i8* %146, i8** %148, align 8
  br label %226

149:                                              ; preds = %131, %125
  %150 = load i32, i32* @DBG_KG, align 4
  %151 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %152 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %3, align 8
  %155 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %3, align 8
  %158 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = call i32 (i32, i8*, i32, ...) @dprintkdbg(i32 %150, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %153, i32 %156, i32 %159)
  %161 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %162 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 8
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %162, align 8
  %165 = sext i32 %163 to i64
  %166 = load i64, i64* @DC395x_MAX_RETRIES, align 8
  %167 = icmp sgt i64 %165, %166
  br i1 %167, label %173, label %168

168:                                              ; preds = %149
  %169 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %170 = getelementptr inbounds %struct.AdapterCtlBlk, %struct.AdapterCtlBlk* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %168, %149
  %174 = load i8*, i8** @SCSI_STAT_SEL_TIMEOUT, align 8
  %175 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %176 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %175, i32 0, i32 3
  store i8* %174, i8** %176, align 8
  br label %226

177:                                              ; preds = %168
  %178 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %3, align 8
  %179 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %180 = call i32 @free_tag(%struct.DeviceCtlBlk* %178, %struct.ScsiReqBlk* %179)
  %181 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %182 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %181, i32 0, i32 2
  %183 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %3, align 8
  %184 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %183, i32 0, i32 1
  %185 = call i32 @list_move(i32* %182, i32* %184)
  %186 = load i32, i32* @DBG_KG, align 4
  %187 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %188 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = call i32 (i32, i8*, i32, ...) @dprintkdbg(i32 %186, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %189)
  %191 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %192 = load i32, i32* @HZ, align 4
  %193 = sdiv i32 %192, 20
  %194 = call i32 @waiting_set_timer(%struct.AdapterCtlBlk* %191, i32 %193)
  br label %195

195:                                              ; preds = %177
  br label %241

196:                                              ; preds = %116
  %197 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %198 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @SRB_DISCONNECT, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %218

203:                                              ; preds = %196
  %204 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %205 = load i32, i32* @TRM_S1040_SCSI_SIGNAL, align 4
  %206 = call i32 @DC395x_read8(%struct.AdapterCtlBlk* %204, i32 %205)
  store i32 %206, i32* %5, align 4
  %207 = load i32, i32* %5, align 4
  %208 = and i32 %207, 64
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %203
  %211 = load i32, i32* @DBG_0, align 4
  %212 = load i32, i32* %5, align 4
  %213 = call i32 (i32, i8*, i32, ...) @dprintkdbg(i32 %211, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.9, i64 0, i64 0), i32 %212)
  br label %217

214:                                              ; preds = %203
  %215 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %216 = call i32 @waiting_process_next(%struct.AdapterCtlBlk* %215)
  br label %217

217:                                              ; preds = %214, %210
  br label %240

218:                                              ; preds = %196
  %219 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %220 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @SRB_COMPLETED, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %239

225:                                              ; preds = %218
  br label %226

226:                                              ; preds = %225, %173, %137
  %227 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %3, align 8
  %228 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %229 = call i32 @free_tag(%struct.DeviceCtlBlk* %227, %struct.ScsiReqBlk* %228)
  %230 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %3, align 8
  %231 = getelementptr inbounds %struct.DeviceCtlBlk, %struct.DeviceCtlBlk* %230, i32 0, i32 0
  store %struct.ScsiReqBlk* null, %struct.ScsiReqBlk** %231, align 8
  %232 = load i32, i32* @SRB_FREE, align 4
  %233 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %234 = getelementptr inbounds %struct.ScsiReqBlk, %struct.ScsiReqBlk* %233, i32 0, i32 1
  store i32 %232, i32* %234, align 4
  %235 = load %struct.AdapterCtlBlk*, %struct.AdapterCtlBlk** %2, align 8
  %236 = load %struct.DeviceCtlBlk*, %struct.DeviceCtlBlk** %3, align 8
  %237 = load %struct.ScsiReqBlk*, %struct.ScsiReqBlk** %4, align 8
  %238 = call i32 @srb_done(%struct.AdapterCtlBlk* %235, %struct.DeviceCtlBlk* %236, %struct.ScsiReqBlk* %237)
  br label %239

239:                                              ; preds = %226, %218
  br label %240

240:                                              ; preds = %239, %217
  br label %241

241:                                              ; preds = %240, %195
  br label %242

242:                                              ; preds = %241, %82
  br label %243

243:                                              ; preds = %11, %242, %62
  ret void
}

declare dso_local i32 @dprintkl(i32, i8*, ...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @clear_fifo(%struct.AdapterCtlBlk*, i8*) #1

declare dso_local i32 @DC395x_write16(%struct.AdapterCtlBlk*, i32, i32) #1

declare dso_local i32 @dprintkdbg(i32, i8*, i32, ...) #1

declare dso_local i32 @waiting_process_next(%struct.AdapterCtlBlk*) #1

declare dso_local i32 @doing_srb_done(%struct.AdapterCtlBlk*, i32, i32, i32) #1

declare dso_local i32 @free_tag(%struct.DeviceCtlBlk*, %struct.ScsiReqBlk*) #1

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local i32 @waiting_set_timer(%struct.AdapterCtlBlk*, i32) #1

declare dso_local i32 @DC395x_read8(%struct.AdapterCtlBlk*, i32) #1

declare dso_local i32 @srb_done(%struct.AdapterCtlBlk*, %struct.DeviceCtlBlk*, %struct.ScsiReqBlk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
