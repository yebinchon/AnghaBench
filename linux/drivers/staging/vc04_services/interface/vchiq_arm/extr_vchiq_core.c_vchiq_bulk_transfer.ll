; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_core.c_vchiq_bulk_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_core.c_vchiq_bulk_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vchiq_service = type { i64, i32, i32, i32, i32, %struct.vchiq_bulk_queue, %struct.vchiq_bulk_queue, %struct.vchiq_state* }
%struct.vchiq_bulk_queue = type { i64, i64, i32, i32, %struct.vchiq_bulk* }
%struct.vchiq_bulk = type { i32, i32, i64, i64, i8*, i32 }
%struct.vchiq_state = type { i32, i32 }
%struct.bulk_waiter = type { i64, i32, %struct.vchiq_bulk* }

@VCHIQ_BULK_TRANSMIT = common dso_local global i32 0, align 4
@VCHIQ_MSG_BULK_TX = common dso_local global i32 0, align 4
@VCHIQ_MSG_BULK_RX = common dso_local global i32 0, align 4
@VCHIQ_ERROR = common dso_local global i64 0, align 8
@VCHIQ_SRVSTATE_OPEN = common dso_local global i64 0, align 8
@VCHIQ_SUCCESS = common dso_local global i64 0, align 8
@VCHIQ_RETRY = common dso_local global i64 0, align 8
@VCHIQ_NUM_SERVICE_BULKS = common dso_local global i64 0, align 8
@bulk_stalls = common dso_local global i32 0, align 4
@VCHIQ_BULK_ACTUAL_ABORTED = common dso_local global i64 0, align 8
@vchiq_core_log_level = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%d: bt (%d->%d) %cx %x@%pK %pK\00", align 1
@memcpy_copy_callback = common dso_local global i32 0, align 4
@QMFLAGS_IS_BLOCKING = common dso_local global i32 0, align 4
@QMFLAGS_NO_MUTEX_LOCK = common dso_local global i32 0, align 4
@QMFLAGS_NO_MUTEX_UNLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"%d: bt:%d %cx li=%x ri=%x p=%x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vchiq_bulk_transfer(i32 %0, i8* %1, i32 %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.vchiq_service*, align 8
  %15 = alloca %struct.vchiq_bulk_queue*, align 8
  %16 = alloca %struct.vchiq_bulk*, align 8
  %17 = alloca %struct.vchiq_state*, align 8
  %18 = alloca %struct.bulk_waiter*, align 8
  %19 = alloca i8, align 1
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca [2 x i32], align 4
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call %struct.vchiq_service* @find_service_by_handle(i32 %23)
  store %struct.vchiq_service* %24, %struct.vchiq_service** %14, align 8
  store %struct.bulk_waiter* null, %struct.bulk_waiter** %18, align 8
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* @VCHIQ_BULK_TRANSMIT, align 4
  %27 = icmp eq i32 %25, %26
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 116, i32 114
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %19, align 1
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* @VCHIQ_BULK_TRANSMIT, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %6
  %35 = load i32, i32* @VCHIQ_MSG_BULK_TX, align 4
  br label %38

36:                                               ; preds = %6
  %37 = load i32, i32* @VCHIQ_MSG_BULK_RX, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  store i32 %39, i32* %20, align 4
  %40 = load i64, i64* @VCHIQ_ERROR, align 8
  store i64 %40, i64* %21, align 8
  %41 = load %struct.vchiq_service*, %struct.vchiq_service** %14, align 8
  %42 = icmp ne %struct.vchiq_service* %41, null
  br i1 %42, label %43, label %57

43:                                               ; preds = %38
  %44 = load %struct.vchiq_service*, %struct.vchiq_service** %14, align 8
  %45 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @VCHIQ_SRVSTATE_OPEN, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %57, label %49

49:                                               ; preds = %43
  %50 = load i8*, i8** %9, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load %struct.vchiq_service*, %struct.vchiq_service** %14, align 8
  %54 = call i64 @vchiq_check_service(%struct.vchiq_service* %53)
  %55 = load i64, i64* @VCHIQ_SUCCESS, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %52, %49, %43, %38
  br label %305

58:                                               ; preds = %52
  %59 = load i32, i32* %12, align 4
  switch i32 %59, label %77 [
    i32 129, label %60
    i32 130, label %60
    i32 131, label %61
    i32 128, label %71
  ]

60:                                               ; preds = %58, %58
  br label %78

61:                                               ; preds = %58
  %62 = load i8*, i8** %11, align 8
  %63 = bitcast i8* %62 to %struct.bulk_waiter*
  store %struct.bulk_waiter* %63, %struct.bulk_waiter** %18, align 8
  %64 = load %struct.bulk_waiter*, %struct.bulk_waiter** %18, align 8
  %65 = getelementptr inbounds %struct.bulk_waiter, %struct.bulk_waiter* %64, i32 0, i32 1
  %66 = call i32 @init_completion(i32* %65)
  %67 = load %struct.bulk_waiter*, %struct.bulk_waiter** %18, align 8
  %68 = getelementptr inbounds %struct.bulk_waiter, %struct.bulk_waiter* %67, i32 0, i32 0
  store i64 0, i64* %68, align 8
  %69 = load %struct.bulk_waiter*, %struct.bulk_waiter** %18, align 8
  %70 = getelementptr inbounds %struct.bulk_waiter, %struct.bulk_waiter* %69, i32 0, i32 2
  store %struct.vchiq_bulk* null, %struct.vchiq_bulk** %70, align 8
  br label %78

71:                                               ; preds = %58
  %72 = load i8*, i8** %11, align 8
  %73 = bitcast i8* %72 to %struct.bulk_waiter*
  store %struct.bulk_waiter* %73, %struct.bulk_waiter** %18, align 8
  %74 = load %struct.bulk_waiter*, %struct.bulk_waiter** %18, align 8
  %75 = getelementptr inbounds %struct.bulk_waiter, %struct.bulk_waiter* %74, i32 0, i32 2
  %76 = load %struct.vchiq_bulk*, %struct.vchiq_bulk** %75, align 8
  store %struct.vchiq_bulk* %76, %struct.vchiq_bulk** %16, align 8
  br label %266

77:                                               ; preds = %58
  br label %305

78:                                               ; preds = %61, %60
  %79 = load %struct.vchiq_service*, %struct.vchiq_service** %14, align 8
  %80 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %79, i32 0, i32 7
  %81 = load %struct.vchiq_state*, %struct.vchiq_state** %80, align 8
  store %struct.vchiq_state* %81, %struct.vchiq_state** %17, align 8
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* @VCHIQ_BULK_TRANSMIT, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = load %struct.vchiq_service*, %struct.vchiq_service** %14, align 8
  %87 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %86, i32 0, i32 6
  br label %91

88:                                               ; preds = %78
  %89 = load %struct.vchiq_service*, %struct.vchiq_service** %14, align 8
  %90 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %89, i32 0, i32 5
  br label %91

91:                                               ; preds = %88, %85
  %92 = phi %struct.vchiq_bulk_queue* [ %87, %85 ], [ %90, %88 ]
  store %struct.vchiq_bulk_queue* %92, %struct.vchiq_bulk_queue** %15, align 8
  %93 = load %struct.vchiq_service*, %struct.vchiq_service** %14, align 8
  %94 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %93, i32 0, i32 1
  %95 = call i64 @mutex_lock_killable(i32* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = load i64, i64* @VCHIQ_RETRY, align 8
  store i64 %98, i64* %21, align 8
  br label %305

99:                                               ; preds = %91
  %100 = load %struct.vchiq_bulk_queue*, %struct.vchiq_bulk_queue** %15, align 8
  %101 = getelementptr inbounds %struct.vchiq_bulk_queue, %struct.vchiq_bulk_queue* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.vchiq_bulk_queue*, %struct.vchiq_bulk_queue** %15, align 8
  %104 = getelementptr inbounds %struct.vchiq_bulk_queue, %struct.vchiq_bulk_queue* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @VCHIQ_NUM_SERVICE_BULKS, align 8
  %107 = add nsw i64 %105, %106
  %108 = icmp eq i64 %102, %107
  br i1 %108, label %109, label %142

109:                                              ; preds = %99
  %110 = load %struct.vchiq_service*, %struct.vchiq_service** %14, align 8
  %111 = load i32, i32* @bulk_stalls, align 4
  %112 = call i32 @VCHIQ_SERVICE_STATS_INC(%struct.vchiq_service* %110, i32 %111)
  br label %113

113:                                              ; preds = %131, %109
  %114 = load %struct.vchiq_service*, %struct.vchiq_service** %14, align 8
  %115 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %114, i32 0, i32 1
  %116 = call i32 @mutex_unlock(i32* %115)
  %117 = load %struct.vchiq_service*, %struct.vchiq_service** %14, align 8
  %118 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %117, i32 0, i32 4
  %119 = call i64 @wait_for_completion_interruptible(i32* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %113
  %122 = load i64, i64* @VCHIQ_RETRY, align 8
  store i64 %122, i64* %21, align 8
  br label %305

123:                                              ; preds = %113
  %124 = load %struct.vchiq_service*, %struct.vchiq_service** %14, align 8
  %125 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %124, i32 0, i32 1
  %126 = call i64 @mutex_lock_killable(i32* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %123
  %129 = load i64, i64* @VCHIQ_RETRY, align 8
  store i64 %129, i64* %21, align 8
  br label %305

130:                                              ; preds = %123
  br label %131

131:                                              ; preds = %130
  %132 = load %struct.vchiq_bulk_queue*, %struct.vchiq_bulk_queue** %15, align 8
  %133 = getelementptr inbounds %struct.vchiq_bulk_queue, %struct.vchiq_bulk_queue* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.vchiq_bulk_queue*, %struct.vchiq_bulk_queue** %15, align 8
  %136 = getelementptr inbounds %struct.vchiq_bulk_queue, %struct.vchiq_bulk_queue* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @VCHIQ_NUM_SERVICE_BULKS, align 8
  %139 = add nsw i64 %137, %138
  %140 = icmp eq i64 %134, %139
  br i1 %140, label %113, label %141

141:                                              ; preds = %131
  br label %142

142:                                              ; preds = %141, %99
  %143 = load %struct.vchiq_bulk_queue*, %struct.vchiq_bulk_queue** %15, align 8
  %144 = getelementptr inbounds %struct.vchiq_bulk_queue, %struct.vchiq_bulk_queue* %143, i32 0, i32 4
  %145 = load %struct.vchiq_bulk*, %struct.vchiq_bulk** %144, align 8
  %146 = load %struct.vchiq_bulk_queue*, %struct.vchiq_bulk_queue** %15, align 8
  %147 = getelementptr inbounds %struct.vchiq_bulk_queue, %struct.vchiq_bulk_queue* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = call i64 @BULK_INDEX(i64 %148)
  %150 = getelementptr inbounds %struct.vchiq_bulk, %struct.vchiq_bulk* %145, i64 %149
  store %struct.vchiq_bulk* %150, %struct.vchiq_bulk** %16, align 8
  %151 = load i32, i32* %12, align 4
  %152 = load %struct.vchiq_bulk*, %struct.vchiq_bulk** %16, align 8
  %153 = getelementptr inbounds %struct.vchiq_bulk, %struct.vchiq_bulk* %152, i32 0, i32 0
  store i32 %151, i32* %153, align 8
  %154 = load i32, i32* %13, align 4
  %155 = load %struct.vchiq_bulk*, %struct.vchiq_bulk** %16, align 8
  %156 = getelementptr inbounds %struct.vchiq_bulk, %struct.vchiq_bulk* %155, i32 0, i32 5
  store i32 %154, i32* %156, align 8
  %157 = load i8*, i8** %11, align 8
  %158 = load %struct.vchiq_bulk*, %struct.vchiq_bulk** %16, align 8
  %159 = getelementptr inbounds %struct.vchiq_bulk, %struct.vchiq_bulk* %158, i32 0, i32 4
  store i8* %157, i8** %159, align 8
  %160 = load i32, i32* %10, align 4
  %161 = load %struct.vchiq_bulk*, %struct.vchiq_bulk** %16, align 8
  %162 = getelementptr inbounds %struct.vchiq_bulk, %struct.vchiq_bulk* %161, i32 0, i32 1
  store i32 %160, i32* %162, align 4
  %163 = load i64, i64* @VCHIQ_BULK_ACTUAL_ABORTED, align 8
  %164 = load %struct.vchiq_bulk*, %struct.vchiq_bulk** %16, align 8
  %165 = getelementptr inbounds %struct.vchiq_bulk, %struct.vchiq_bulk* %164, i32 0, i32 3
  store i64 %163, i64* %165, align 8
  %166 = load %struct.vchiq_bulk*, %struct.vchiq_bulk** %16, align 8
  %167 = load i8*, i8** %9, align 8
  %168 = load i32, i32* %10, align 4
  %169 = load i32, i32* %13, align 4
  %170 = call i64 @vchiq_prepare_bulk_data(%struct.vchiq_bulk* %166, i8* %167, i32 %168, i32 %169)
  %171 = load i64, i64* @VCHIQ_SUCCESS, align 8
  %172 = icmp ne i64 %170, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %142
  br label %301

174:                                              ; preds = %142
  %175 = call i32 (...) @wmb()
  %176 = load i32, i32* @vchiq_core_log_level, align 4
  %177 = load %struct.vchiq_state*, %struct.vchiq_state** %17, align 8
  %178 = getelementptr inbounds %struct.vchiq_state, %struct.vchiq_state* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.vchiq_service*, %struct.vchiq_service** %14, align 8
  %181 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.vchiq_service*, %struct.vchiq_service** %14, align 8
  %184 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 8
  %186 = load i8, i8* %19, align 1
  %187 = load i32, i32* %10, align 4
  %188 = load %struct.vchiq_bulk*, %struct.vchiq_bulk** %16, align 8
  %189 = getelementptr inbounds %struct.vchiq_bulk, %struct.vchiq_bulk* %188, i32 0, i32 2
  %190 = load i64, i64* %189, align 8
  %191 = load i8*, i8** %11, align 8
  %192 = call i32 @vchiq_log_info(i32 %176, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %179, i32 %182, i32 %185, i8 signext %186, i32 %187, i64 %190, i8* %191)
  %193 = load %struct.vchiq_state*, %struct.vchiq_state** %17, align 8
  %194 = getelementptr inbounds %struct.vchiq_state, %struct.vchiq_state* %193, i32 0, i32 0
  %195 = call i64 @mutex_lock_killable(i32* %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %174
  %198 = load i64, i64* @VCHIQ_RETRY, align 8
  store i64 %198, i64* %21, align 8
  br label %298

199:                                              ; preds = %174
  %200 = load %struct.vchiq_service*, %struct.vchiq_service** %14, align 8
  %201 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @VCHIQ_SRVSTATE_OPEN, align 8
  %204 = icmp ne i64 %202, %203
  br i1 %204, label %205, label %206

205:                                              ; preds = %199
  br label %294

206:                                              ; preds = %199
  %207 = load %struct.vchiq_bulk*, %struct.vchiq_bulk** %16, align 8
  %208 = getelementptr inbounds %struct.vchiq_bulk, %struct.vchiq_bulk* %207, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = trunc i64 %209 to i32
  %211 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 0
  store i32 %210, i32* %211, align 4
  %212 = load %struct.vchiq_bulk*, %struct.vchiq_bulk** %16, align 8
  %213 = getelementptr inbounds %struct.vchiq_bulk, %struct.vchiq_bulk* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 1
  store i32 %214, i32* %215, align 4
  %216 = load %struct.vchiq_state*, %struct.vchiq_state** %17, align 8
  %217 = load i32, i32* %20, align 4
  %218 = load %struct.vchiq_service*, %struct.vchiq_service** %14, align 8
  %219 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.vchiq_service*, %struct.vchiq_service** %14, align 8
  %222 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 8
  %224 = call i32 @VCHIQ_MAKE_MSG(i32 %217, i32 %220, i32 %223)
  %225 = load i32, i32* @memcpy_copy_callback, align 4
  %226 = bitcast [2 x i32]* %22 to i32**
  %227 = load i32, i32* @QMFLAGS_IS_BLOCKING, align 4
  %228 = load i32, i32* @QMFLAGS_NO_MUTEX_LOCK, align 4
  %229 = or i32 %227, %228
  %230 = load i32, i32* @QMFLAGS_NO_MUTEX_UNLOCK, align 4
  %231 = or i32 %229, %230
  %232 = call i64 @queue_message(%struct.vchiq_state* %216, i32* null, i32 %224, i32 %225, i32** %226, i32 8, i32 %231)
  store i64 %232, i64* %21, align 8
  %233 = load i64, i64* %21, align 8
  %234 = load i64, i64* @VCHIQ_SUCCESS, align 8
  %235 = icmp ne i64 %233, %234
  br i1 %235, label %236, label %237

236:                                              ; preds = %206
  br label %294

237:                                              ; preds = %206
  %238 = load %struct.vchiq_bulk_queue*, %struct.vchiq_bulk_queue** %15, align 8
  %239 = getelementptr inbounds %struct.vchiq_bulk_queue, %struct.vchiq_bulk_queue* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = add nsw i64 %240, 1
  store i64 %241, i64* %239, align 8
  %242 = load %struct.vchiq_state*, %struct.vchiq_state** %17, align 8
  %243 = getelementptr inbounds %struct.vchiq_state, %struct.vchiq_state* %242, i32 0, i32 0
  %244 = call i32 @mutex_unlock(i32* %243)
  %245 = load %struct.vchiq_service*, %struct.vchiq_service** %14, align 8
  %246 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %245, i32 0, i32 1
  %247 = call i32 @mutex_unlock(i32* %246)
  %248 = load i32, i32* @vchiq_core_log_level, align 4
  %249 = load %struct.vchiq_state*, %struct.vchiq_state** %17, align 8
  %250 = getelementptr inbounds %struct.vchiq_state, %struct.vchiq_state* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.vchiq_service*, %struct.vchiq_service** %14, align 8
  %253 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 4
  %255 = load i8, i8* %19, align 1
  %256 = load %struct.vchiq_bulk_queue*, %struct.vchiq_bulk_queue** %15, align 8
  %257 = getelementptr inbounds %struct.vchiq_bulk_queue, %struct.vchiq_bulk_queue* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = load %struct.vchiq_bulk_queue*, %struct.vchiq_bulk_queue** %15, align 8
  %260 = getelementptr inbounds %struct.vchiq_bulk_queue, %struct.vchiq_bulk_queue* %259, i32 0, i32 3
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.vchiq_bulk_queue*, %struct.vchiq_bulk_queue** %15, align 8
  %263 = getelementptr inbounds %struct.vchiq_bulk_queue, %struct.vchiq_bulk_queue* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 8
  %265 = call i32 @vchiq_log_trace(i32 %248, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %251, i32 %254, i8 signext %255, i64 %258, i32 %261, i32 %264)
  br label %266

266:                                              ; preds = %237, %71
  %267 = load %struct.vchiq_service*, %struct.vchiq_service** %14, align 8
  %268 = call i32 @unlock_service(%struct.vchiq_service* %267)
  %269 = load i64, i64* @VCHIQ_SUCCESS, align 8
  store i64 %269, i64* %21, align 8
  %270 = load %struct.bulk_waiter*, %struct.bulk_waiter** %18, align 8
  %271 = icmp ne %struct.bulk_waiter* %270, null
  br i1 %271, label %272, label %292

272:                                              ; preds = %266
  %273 = load %struct.vchiq_bulk*, %struct.vchiq_bulk** %16, align 8
  %274 = load %struct.bulk_waiter*, %struct.bulk_waiter** %18, align 8
  %275 = getelementptr inbounds %struct.bulk_waiter, %struct.bulk_waiter* %274, i32 0, i32 2
  store %struct.vchiq_bulk* %273, %struct.vchiq_bulk** %275, align 8
  %276 = load %struct.bulk_waiter*, %struct.bulk_waiter** %18, align 8
  %277 = getelementptr inbounds %struct.bulk_waiter, %struct.bulk_waiter* %276, i32 0, i32 1
  %278 = call i64 @wait_for_completion_interruptible(i32* %277)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %282

280:                                              ; preds = %272
  %281 = load i64, i64* @VCHIQ_RETRY, align 8
  store i64 %281, i64* %21, align 8
  br label %291

282:                                              ; preds = %272
  %283 = load %struct.bulk_waiter*, %struct.bulk_waiter** %18, align 8
  %284 = getelementptr inbounds %struct.bulk_waiter, %struct.bulk_waiter* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = load i64, i64* @VCHIQ_BULK_ACTUAL_ABORTED, align 8
  %287 = icmp eq i64 %285, %286
  br i1 %287, label %288, label %290

288:                                              ; preds = %282
  %289 = load i64, i64* @VCHIQ_ERROR, align 8
  store i64 %289, i64* %21, align 8
  br label %290

290:                                              ; preds = %288, %282
  br label %291

291:                                              ; preds = %290, %280
  br label %292

292:                                              ; preds = %291, %266
  %293 = load i64, i64* %21, align 8
  store i64 %293, i64* %7, align 8
  br label %313

294:                                              ; preds = %236, %205
  %295 = load %struct.vchiq_state*, %struct.vchiq_state** %17, align 8
  %296 = getelementptr inbounds %struct.vchiq_state, %struct.vchiq_state* %295, i32 0, i32 0
  %297 = call i32 @mutex_unlock(i32* %296)
  br label %298

298:                                              ; preds = %294, %197
  %299 = load %struct.vchiq_bulk*, %struct.vchiq_bulk** %16, align 8
  %300 = call i32 @vchiq_complete_bulk(%struct.vchiq_bulk* %299)
  br label %301

301:                                              ; preds = %298, %173
  %302 = load %struct.vchiq_service*, %struct.vchiq_service** %14, align 8
  %303 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %302, i32 0, i32 1
  %304 = call i32 @mutex_unlock(i32* %303)
  br label %305

305:                                              ; preds = %301, %128, %121, %97, %77, %57
  %306 = load %struct.vchiq_service*, %struct.vchiq_service** %14, align 8
  %307 = icmp ne %struct.vchiq_service* %306, null
  br i1 %307, label %308, label %311

308:                                              ; preds = %305
  %309 = load %struct.vchiq_service*, %struct.vchiq_service** %14, align 8
  %310 = call i32 @unlock_service(%struct.vchiq_service* %309)
  br label %311

311:                                              ; preds = %308, %305
  %312 = load i64, i64* %21, align 8
  store i64 %312, i64* %7, align 8
  br label %313

313:                                              ; preds = %311, %292
  %314 = load i64, i64* %7, align 8
  ret i64 %314
}

declare dso_local %struct.vchiq_service* @find_service_by_handle(i32) #1

declare dso_local i64 @vchiq_check_service(%struct.vchiq_service*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i64 @mutex_lock_killable(i32*) #1

declare dso_local i32 @VCHIQ_SERVICE_STATS_INC(%struct.vchiq_service*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @wait_for_completion_interruptible(i32*) #1

declare dso_local i64 @BULK_INDEX(i64) #1

declare dso_local i64 @vchiq_prepare_bulk_data(%struct.vchiq_bulk*, i8*, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @vchiq_log_info(i32, i8*, i32, i32, i32, i8 signext, i32, i64, i8*) #1

declare dso_local i64 @queue_message(%struct.vchiq_state*, i32*, i32, i32, i32**, i32, i32) #1

declare dso_local i32 @VCHIQ_MAKE_MSG(i32, i32, i32) #1

declare dso_local i32 @vchiq_log_trace(i32, i8*, i32, i32, i8 signext, i64, i32, i32) #1

declare dso_local i32 @unlock_service(%struct.vchiq_service*) #1

declare dso_local i32 @vchiq_complete_bulk(%struct.vchiq_bulk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
