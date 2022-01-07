; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_usb.c_usb_stor_control_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_usb.c_usb_stor_control_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32, i64, i32, %struct.scsi_cmnd*, i32, i32, i32, i32 (%struct.scsi_cmnd*, %struct.us_data*)*, i32 }
%struct.scsi_cmnd = type { i32, i64, i64*, i32 (%struct.scsi_cmnd*)*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.Scsi_Host = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"*** thread sleeping\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"*** thread awakened\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"-- exiting\0A\00", align 1
@US_FLIDX_TIMED_OUT = common dso_local global i32 0, align 4
@DID_ABORT = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"UNKNOWN data direction\0A\00", align 1
@DID_ERROR = common dso_local global i32 0, align 4
@US_FL_SCM_MULT_TARG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"Bad target number (%d:%llu)\0A\00", align 1
@DID_BAD_TARGET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"Bad LUN (%d:%llu)\0A\00", align 1
@INQUIRY = common dso_local global i64 0, align 8
@US_FL_FIX_INQUIRY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"Faking INQUIRY command\0A\00", align 1
@SAM_STAT_GOOD = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"scsi command aborted\0A\00", align 1
@US_FLIDX_ABORTING = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"scsi cmd done, result=0x%x\0A\00", align 1
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @usb_stor_control_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_stor_control_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.us_data*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca [36 x i8], align 16
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.us_data*
  store %struct.us_data* %8, %struct.us_data** %3, align 8
  %9 = load %struct.us_data*, %struct.us_data** %3, align 8
  %10 = call %struct.Scsi_Host* @us_to_host(%struct.us_data* %9)
  store %struct.Scsi_Host* %10, %struct.Scsi_Host** %4, align 8
  br label %11

11:                                               ; preds = %224, %1
  %12 = load %struct.us_data*, %struct.us_data** %3, align 8
  %13 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.us_data*, %struct.us_data** %3, align 8
  %15 = getelementptr inbounds %struct.us_data, %struct.us_data* %14, i32 0, i32 8
  %16 = call i64 @wait_for_completion_interruptible(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  br label %225

19:                                               ; preds = %11
  %20 = load %struct.us_data*, %struct.us_data** %3, align 8
  %21 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.us_data*, %struct.us_data** %3, align 8
  %23 = getelementptr inbounds %struct.us_data, %struct.us_data* %22, i32 0, i32 2
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %26 = call i32 @scsi_lock(%struct.Scsi_Host* %25)
  %27 = load %struct.us_data*, %struct.us_data** %3, align 8
  %28 = getelementptr inbounds %struct.us_data, %struct.us_data* %27, i32 0, i32 3
  %29 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %28, align 8
  store %struct.scsi_cmnd* %29, %struct.scsi_cmnd** %5, align 8
  %30 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %31 = icmp eq %struct.scsi_cmnd* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %19
  %33 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %34 = call i32 @scsi_unlock(%struct.Scsi_Host* %33)
  %35 = load %struct.us_data*, %struct.us_data** %3, align 8
  %36 = getelementptr inbounds %struct.us_data, %struct.us_data* %35, i32 0, i32 2
  %37 = call i32 @mutex_unlock(i32* %36)
  %38 = load %struct.us_data*, %struct.us_data** %3, align 8
  %39 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %225

40:                                               ; preds = %19
  %41 = load i32, i32* @US_FLIDX_TIMED_OUT, align 4
  %42 = load %struct.us_data*, %struct.us_data** %3, align 8
  %43 = getelementptr inbounds %struct.us_data, %struct.us_data* %42, i32 0, i32 4
  %44 = call i64 @test_bit(i32 %41, i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load i32, i32* @DID_ABORT, align 4
  %48 = shl i32 %47, 16
  %49 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %50 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  br label %182

51:                                               ; preds = %40
  %52 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %53 = call i32 @scsi_unlock(%struct.Scsi_Host* %52)
  %54 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %55 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @DMA_BIDIRECTIONAL, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %51
  %60 = load %struct.us_data*, %struct.us_data** %3, align 8
  %61 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %60, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %62 = load i32, i32* @DID_ERROR, align 4
  %63 = shl i32 %62, 16
  %64 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %65 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  br label %172

66:                                               ; preds = %51
  %67 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %68 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %67, i32 0, i32 4
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %97

73:                                               ; preds = %66
  %74 = load %struct.us_data*, %struct.us_data** %3, align 8
  %75 = getelementptr inbounds %struct.us_data, %struct.us_data* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @US_FL_SCM_MULT_TARG, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %97, label %80

80:                                               ; preds = %73
  %81 = load %struct.us_data*, %struct.us_data** %3, align 8
  %82 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %83 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %82, i32 0, i32 4
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %88 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %87, i32 0, i32 4
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %81, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i64 %86, i64 %91)
  %93 = load i32, i32* @DID_BAD_TARGET, align 4
  %94 = shl i32 %93, 16
  %95 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %96 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  br label %171

97:                                               ; preds = %73, %66
  %98 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %99 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %98, i32 0, i32 4
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.us_data*, %struct.us_data** %3, align 8
  %104 = getelementptr inbounds %struct.us_data, %struct.us_data* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp sgt i64 %102, %105
  br i1 %106, label %107, label %124

107:                                              ; preds = %97
  %108 = load %struct.us_data*, %struct.us_data** %3, align 8
  %109 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %110 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %109, i32 0, i32 4
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %115 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %114, i32 0, i32 4
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %108, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i64 %113, i64 %118)
  %120 = load i32, i32* @DID_BAD_TARGET, align 4
  %121 = shl i32 %120, 16
  %122 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %123 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  br label %170

124:                                              ; preds = %97
  %125 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %126 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %125, i32 0, i32 2
  %127 = load i64*, i64** %126, align 8
  %128 = getelementptr inbounds i64, i64* %127, i64 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @INQUIRY, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %154

132:                                              ; preds = %124
  %133 = load %struct.us_data*, %struct.us_data** %3, align 8
  %134 = getelementptr inbounds %struct.us_data, %struct.us_data* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @US_FL_FIX_INQUIRY, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %154

139:                                              ; preds = %132
  %140 = bitcast [36 x i8]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %140, i8 0, i64 36, i1 false)
  %141 = bitcast i8* %140 to <{ i8, i8, i8, i8, i8, [31 x i8] }>*
  %142 = getelementptr inbounds <{ i8, i8, i8, i8, i8, [31 x i8] }>, <{ i8, i8, i8, i8, i8, [31 x i8] }>* %141, i32 0, i32 1
  store i8 -128, i8* %142, align 1
  %143 = getelementptr inbounds <{ i8, i8, i8, i8, i8, [31 x i8] }>, <{ i8, i8, i8, i8, i8, [31 x i8] }>* %141, i32 0, i32 2
  store i8 2, i8* %143, align 2
  %144 = getelementptr inbounds <{ i8, i8, i8, i8, i8, [31 x i8] }>, <{ i8, i8, i8, i8, i8, [31 x i8] }>* %141, i32 0, i32 3
  store i8 2, i8* %144, align 1
  %145 = getelementptr inbounds <{ i8, i8, i8, i8, i8, [31 x i8] }>, <{ i8, i8, i8, i8, i8, [31 x i8] }>* %141, i32 0, i32 4
  store i8 31, i8* %145, align 4
  %146 = load %struct.us_data*, %struct.us_data** %3, align 8
  %147 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %146, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %148 = load %struct.us_data*, %struct.us_data** %3, align 8
  %149 = getelementptr inbounds [36 x i8], [36 x i8]* %6, i64 0, i64 0
  %150 = call i32 @fill_inquiry_response(%struct.us_data* %148, i8* %149, i32 36)
  %151 = load i32, i32* @SAM_STAT_GOOD, align 4
  %152 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %153 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %152, i32 0, i32 0
  store i32 %151, i32* %153, align 8
  br label %169

154:                                              ; preds = %132, %124
  %155 = load %struct.us_data*, %struct.us_data** %3, align 8
  %156 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %157 = call i32 @usb_stor_show_command(%struct.us_data* %155, %struct.scsi_cmnd* %156)
  %158 = call i32 @US_DEBUG(i32 %157)
  %159 = load %struct.us_data*, %struct.us_data** %3, align 8
  %160 = getelementptr inbounds %struct.us_data, %struct.us_data* %159, i32 0, i32 7
  %161 = load i32 (%struct.scsi_cmnd*, %struct.us_data*)*, i32 (%struct.scsi_cmnd*, %struct.us_data*)** %160, align 8
  %162 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %163 = load %struct.us_data*, %struct.us_data** %3, align 8
  %164 = call i32 %161(%struct.scsi_cmnd* %162, %struct.us_data* %163)
  %165 = load %struct.us_data*, %struct.us_data** %3, align 8
  %166 = getelementptr inbounds %struct.us_data, %struct.us_data* %165, i32 0, i32 6
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @usb_mark_last_busy(i32 %167)
  br label %169

169:                                              ; preds = %154, %139
  br label %170

170:                                              ; preds = %169, %107
  br label %171

171:                                              ; preds = %170, %80
  br label %172

172:                                              ; preds = %171, %59
  %173 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %174 = call i32 @scsi_lock(%struct.Scsi_Host* %173)
  %175 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %176 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @DID_ABORT, align 4
  %179 = shl i32 %178, 16
  %180 = icmp eq i32 %177, %179
  br i1 %180, label %181, label %185

181:                                              ; preds = %172
  br label %182

182:                                              ; preds = %181, %46
  %183 = load %struct.us_data*, %struct.us_data** %3, align 8
  %184 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %183, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  store %struct.scsi_cmnd* null, %struct.scsi_cmnd** %5, align 8
  br label %185

185:                                              ; preds = %182, %172
  %186 = load i32, i32* @US_FLIDX_TIMED_OUT, align 4
  %187 = load %struct.us_data*, %struct.us_data** %3, align 8
  %188 = getelementptr inbounds %struct.us_data, %struct.us_data* %187, i32 0, i32 4
  %189 = call i64 @test_bit(i32 %186, i32* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %203

191:                                              ; preds = %185
  %192 = load %struct.us_data*, %struct.us_data** %3, align 8
  %193 = getelementptr inbounds %struct.us_data, %struct.us_data* %192, i32 0, i32 5
  %194 = call i32 @complete(i32* %193)
  %195 = load i32, i32* @US_FLIDX_ABORTING, align 4
  %196 = load %struct.us_data*, %struct.us_data** %3, align 8
  %197 = getelementptr inbounds %struct.us_data, %struct.us_data* %196, i32 0, i32 4
  %198 = call i32 @clear_bit(i32 %195, i32* %197)
  %199 = load i32, i32* @US_FLIDX_TIMED_OUT, align 4
  %200 = load %struct.us_data*, %struct.us_data** %3, align 8
  %201 = getelementptr inbounds %struct.us_data, %struct.us_data* %200, i32 0, i32 4
  %202 = call i32 @clear_bit(i32 %199, i32* %201)
  br label %203

203:                                              ; preds = %191, %185
  %204 = load %struct.us_data*, %struct.us_data** %3, align 8
  %205 = getelementptr inbounds %struct.us_data, %struct.us_data* %204, i32 0, i32 3
  store %struct.scsi_cmnd* null, %struct.scsi_cmnd** %205, align 8
  %206 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %207 = call i32 @scsi_unlock(%struct.Scsi_Host* %206)
  %208 = load %struct.us_data*, %struct.us_data** %3, align 8
  %209 = getelementptr inbounds %struct.us_data, %struct.us_data* %208, i32 0, i32 2
  %210 = call i32 @mutex_unlock(i32* %209)
  %211 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %212 = icmp ne %struct.scsi_cmnd* %211, null
  br i1 %212, label %213, label %224

213:                                              ; preds = %203
  %214 = load %struct.us_data*, %struct.us_data** %3, align 8
  %215 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %216 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = call i32 (%struct.us_data*, i8*, ...) @usb_stor_dbg(%struct.us_data* %214, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %217)
  %219 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %220 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %219, i32 0, i32 3
  %221 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %220, align 8
  %222 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %223 = call i32 %221(%struct.scsi_cmnd* %222)
  br label %224

224:                                              ; preds = %213, %203
  br label %11

225:                                              ; preds = %32, %18
  br label %226

226:                                              ; preds = %232, %225
  %227 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %228 = call i32 @set_current_state(i32 %227)
  %229 = call i64 (...) @kthread_should_stop()
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %226
  br label %234

232:                                              ; preds = %226
  %233 = call i32 (...) @schedule()
  br label %226

234:                                              ; preds = %231
  %235 = load i32, i32* @TASK_RUNNING, align 4
  %236 = call i32 @__set_current_state(i32 %235)
  ret i32 0
}

declare dso_local %struct.Scsi_Host* @us_to_host(%struct.us_data*) #1

declare dso_local i32 @usb_stor_dbg(%struct.us_data*, i8*, ...) #1

declare dso_local i64 @wait_for_completion_interruptible(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @scsi_lock(%struct.Scsi_Host*) #1

declare dso_local i32 @scsi_unlock(%struct.Scsi_Host*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @fill_inquiry_response(%struct.us_data*, i8*, i32) #1

declare dso_local i32 @US_DEBUG(i32) #1

declare dso_local i32 @usb_stor_show_command(%struct.us_data*, %struct.scsi_cmnd*) #1

declare dso_local i32 @usb_mark_last_busy(i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @__set_current_state(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
