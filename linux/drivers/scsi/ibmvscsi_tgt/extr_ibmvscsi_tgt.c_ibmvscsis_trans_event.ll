; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_trans_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_trans_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_info = type { i32, i64, i64, i32, i32, i32, i32, i32 }
%struct.viosrp_crq = type { i32, i64 }

@ADAPT_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"trans_event: format %d, flags 0x%x, state 0x%hx\0A\00", align 1
@PREP_FOR_SUSPEND_OVERWRITE = common dso_local global i32 0, align 4
@RESPONSE_Q_DOWN = common dso_local global i32 0, align 4
@TRANS_EVENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"debit %d, sched %d, wait %d, active %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"connection lost with outstanding work\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"trans_event: SRP Processing, but no outstanding work\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Prep for Suspend, crq status = 0x%x\0A\00", align 1
@PREP_FOR_SUSPEND_PENDING = common dso_local global i32 0, align 4
@CRQ_ENTRY_OVERWRITTEN = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [57 x i8] c"Invalid state for Prepare for Suspend Trans Event: 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"Resume from Suspend, crq status = 0x%x\0A\00", align 1
@PREP_FOR_SUSPEND_ABORTED = common dso_local global i32 0, align 4
@ERROR = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [32 x i8] c"trans_event: invalid format %d\0A\00", align 1
@SCHEDULE_DISCONNECT = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [54 x i8] c"Leaving trans_event: flags 0x%x, state 0x%hx, rc %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.scsi_info*, %struct.viosrp_crq*)* @ibmvscsis_trans_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ibmvscsis_trans_event(%struct.scsi_info* %0, %struct.viosrp_crq* %1) #0 {
  %3 = alloca %struct.scsi_info*, align 8
  %4 = alloca %struct.viosrp_crq*, align 8
  %5 = alloca i64, align 8
  store %struct.scsi_info* %0, %struct.scsi_info** %3, align 8
  store %struct.viosrp_crq* %1, %struct.viosrp_crq** %4, align 8
  %6 = load i64, i64* @ADAPT_SUCCESS, align 8
  store i64 %6, i64* %5, align 8
  %7 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %8 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %7, i32 0, i32 3
  %9 = load %struct.viosrp_crq*, %struct.viosrp_crq** %4, align 8
  %10 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %13 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %16 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %8, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %14, i64 %17)
  %19 = load %struct.viosrp_crq*, %struct.viosrp_crq** %4, align 8
  %20 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %209 [
    i32 139, label %22
    i32 136, label %22
    i32 137, label %22
    i32 135, label %118
    i32 134, label %165
  ]

22:                                               ; preds = %2, %2, %2
  %23 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %24 = call i32 @ibmvscsis_delete_client_info(%struct.scsi_info* %23, i32 1)
  %25 = load %struct.viosrp_crq*, %struct.viosrp_crq** %4, align 8
  %26 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 139
  br i1 %28, label %29, label %36

29:                                               ; preds = %22
  %30 = load i32, i32* @PREP_FOR_SUSPEND_OVERWRITE, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %33 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 8
  br label %36

36:                                               ; preds = %29, %22
  %37 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %38 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  switch i64 %39, label %117 [
    i64 138, label %40
    i64 141, label %40
    i64 131, label %40
    i64 132, label %41
    i64 129, label %49
    i64 130, label %50
    i64 143, label %51
    i64 133, label %57
    i64 142, label %109
    i64 140, label %109
    i64 128, label %109
  ]

40:                                               ; preds = %36, %36, %36
  br label %117

41:                                               ; preds = %36
  %42 = load i32, i32* @RESPONSE_Q_DOWN, align 4
  %43 = load i32, i32* @TRANS_EVENT, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %46 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 8
  br label %117

49:                                               ; preds = %36
  br label %117

50:                                               ; preds = %36
  br label %117

51:                                               ; preds = %36
  %52 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %53 = load i32, i32* @RESPONSE_Q_DOWN, align 4
  %54 = load i32, i32* @TRANS_EVENT, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @ibmvscsis_post_disconnect(%struct.scsi_info* %52, i32 128, i32 %55)
  br label %117

57:                                               ; preds = %36
  %58 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %59 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 8
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %77, label %62

62:                                               ; preds = %57
  %63 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %64 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %63, i32 0, i32 6
  %65 = call i64 @list_empty(i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %62
  %68 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %69 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %68, i32 0, i32 5
  %70 = call i64 @list_empty(i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %74 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %73, i32 0, i32 4
  %75 = call i64 @list_empty(i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %99, label %77

77:                                               ; preds = %72, %67, %62, %57
  %78 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %79 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %78, i32 0, i32 3
  %80 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %81 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %84 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %83, i32 0, i32 6
  %85 = call i64 @list_empty(i32* %84)
  %86 = trunc i64 %85 to i32
  %87 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %88 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %87, i32 0, i32 5
  %89 = call i64 @list_empty(i32* %88)
  %90 = trunc i64 %89 to i32
  %91 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %92 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %91, i32 0, i32 4
  %93 = call i64 @list_empty(i32* %92)
  %94 = trunc i64 %93 to i32
  %95 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %79, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %82, i32 %86, i32 %90, i32 %94)
  %96 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %97 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %96, i32 0, i32 3
  %98 = call i32 @dev_warn(i32* %97, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %103

99:                                               ; preds = %72
  %100 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %101 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %100, i32 0, i32 3
  %102 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %101, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  br label %103

103:                                              ; preds = %99, %77
  %104 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %105 = load i32, i32* @RESPONSE_Q_DOWN, align 4
  %106 = load i32, i32* @TRANS_EVENT, align 4
  %107 = or i32 %105, %106
  %108 = call i32 @ibmvscsis_post_disconnect(%struct.scsi_info* %104, i32 128, i32 %107)
  br label %117

109:                                              ; preds = %36, %36, %36
  %110 = load i32, i32* @RESPONSE_Q_DOWN, align 4
  %111 = load i32, i32* @TRANS_EVENT, align 4
  %112 = or i32 %110, %111
  %113 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %114 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 8
  br label %117

117:                                              ; preds = %36, %109, %103, %51, %50, %49, %41, %40
  br label %221

118:                                              ; preds = %2
  %119 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %120 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %119, i32 0, i32 3
  %121 = load %struct.viosrp_crq*, %struct.viosrp_crq** %4, align 8
  %122 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = trunc i64 %123 to i32
  %125 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %120, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %124)
  %126 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %127 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  switch i64 %128, label %164 [
    i64 141, label %129
    i64 130, label %129
    i64 143, label %129
    i64 133, label %132
    i64 138, label %157
    i64 131, label %157
    i64 132, label %157
    i64 129, label %157
    i64 142, label %157
    i64 140, label %157
    i64 128, label %157
  ]

129:                                              ; preds = %118, %118, %118
  %130 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %131 = call i32 @ibmvscsis_ready_for_suspend(%struct.scsi_info* %130, i32 0)
  br label %164

132:                                              ; preds = %118
  %133 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %134 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %137 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %136, i32 0, i32 2
  store i64 %135, i64* %137, align 8
  %138 = load i32, i32* @PREP_FOR_SUSPEND_PENDING, align 4
  %139 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %140 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = or i32 %141, %138
  store i32 %142, i32* %140, align 8
  %143 = load %struct.viosrp_crq*, %struct.viosrp_crq** %4, align 8
  %144 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @CRQ_ENTRY_OVERWRITTEN, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %154

148:                                              ; preds = %132
  %149 = load i32, i32* @PREP_FOR_SUSPEND_OVERWRITE, align 4
  %150 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %151 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = or i32 %152, %149
  store i32 %153, i32* %151, align 8
  br label %154

154:                                              ; preds = %148, %132
  %155 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %156 = call i32 @ibmvscsis_post_disconnect(%struct.scsi_info* %155, i32 128, i32 0)
  br label %164

157:                                              ; preds = %118, %118, %118, %118, %118, %118, %118
  %158 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %159 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %158, i32 0, i32 3
  %160 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %161 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = call i32 @dev_err(i32* %159, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0), i64 %162)
  br label %164

164:                                              ; preds = %118, %157, %154, %129
  br label %221

165:                                              ; preds = %2
  %166 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %167 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %166, i32 0, i32 3
  %168 = load %struct.viosrp_crq*, %struct.viosrp_crq** %4, align 8
  %169 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = trunc i64 %170 to i32
  %172 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %167, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %171)
  %173 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %174 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @PREP_FOR_SUSPEND_PENDING, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %165
  %180 = load i32, i32* @PREP_FOR_SUSPEND_ABORTED, align 4
  %181 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %182 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = or i32 %183, %180
  store i32 %184, i32* %182, align 8
  br label %208

185:                                              ; preds = %165
  %186 = load %struct.viosrp_crq*, %struct.viosrp_crq** %4, align 8
  %187 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @CRQ_ENTRY_OVERWRITTEN, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %198, label %191

191:                                              ; preds = %185
  %192 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %193 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @PREP_FOR_SUSPEND_OVERWRITE, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %207

198:                                              ; preds = %191, %185
  %199 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %200 = call i32 @ibmvscsis_post_disconnect(%struct.scsi_info* %199, i32 140, i32 0)
  %201 = load i32, i32* @PREP_FOR_SUSPEND_OVERWRITE, align 4
  %202 = xor i32 %201, -1
  %203 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %204 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = and i32 %205, %202
  store i32 %206, i32* %204, align 8
  br label %207

207:                                              ; preds = %198, %191
  br label %208

208:                                              ; preds = %207, %179
  br label %221

209:                                              ; preds = %2
  %210 = load i64, i64* @ERROR, align 8
  store i64 %210, i64* %5, align 8
  %211 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %212 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %211, i32 0, i32 3
  %213 = load %struct.viosrp_crq*, %struct.viosrp_crq** %4, align 8
  %214 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = sext i32 %215 to i64
  %217 = call i32 @dev_err(i32* %212, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i64 %216)
  %218 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %219 = load i32, i32* @RESPONSE_Q_DOWN, align 4
  %220 = call i32 @ibmvscsis_post_disconnect(%struct.scsi_info* %218, i32 142, i32 %219)
  br label %221

221:                                              ; preds = %209, %208, %164, %117
  %222 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %223 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = sext i32 %224 to i64
  %226 = load i64, i64* @SCHEDULE_DISCONNECT, align 8
  %227 = and i64 %225, %226
  store i64 %227, i64* %5, align 8
  %228 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %229 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %228, i32 0, i32 3
  %230 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %231 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %234 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* %5, align 8
  %237 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %229, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i64 0, i64 0), i32 %232, i64 %235, i64 %236)
  %238 = load i64, i64* %5, align 8
  ret i64 %238
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @ibmvscsis_delete_client_info(%struct.scsi_info*, i32) #1

declare dso_local i32 @ibmvscsis_post_disconnect(%struct.scsi_info*, i32, i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @ibmvscsis_ready_for_suspend(%struct.scsi_info*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
