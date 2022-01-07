; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_core.c_sync_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_core.c_sync_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vchiq_state = type { i32, i32, %struct.TYPE_3__*, %struct.vchiq_shared_state* }
%struct.TYPE_3__ = type { i32 }
%struct.vchiq_shared_state = type { i32 }
%struct.vchiq_header = type { i32, i32, i64 }
%struct.vchiq_service = type { i32, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.vchiq_openack_payload = type { i32 }

@vchiq_sync_log_level = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"%d: sf %s@%pK (%d->%d) - invalid/closed service %d\00", align 1
@VCHIQ_LOG_TRACE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"Rcvd Msg %s from %c%c%c%c s:%d d:%d len:%d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Rcvd\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"%d: sf OPENACK@%pK,%x (%d->%d) v:%d\00", align 1
@VCHIQ_SRVSTATE_OPENING = common dso_local global i32 0, align 4
@VCHIQ_SRVSTATE_OPENSYNC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"%d: sf DATA@%pK,%x (%d->%d)\00", align 1
@VCHIQ_MESSAGE_AVAILABLE = common dso_local global i32 0, align 4
@VCHIQ_RETRY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [55 x i8] c"synchronous callback to service %d returns VCHIQ_RETRY\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"%d: sf unexpected msgid %x@%pK,%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @sync_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sync_func(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vchiq_state*, align 8
  %4 = alloca %struct.vchiq_shared_state*, align 8
  %5 = alloca %struct.vchiq_header*, align 8
  %6 = alloca %struct.vchiq_service*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.vchiq_openack_payload*, align 8
  store i8* %0, i8** %2, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = bitcast i8* %14 to %struct.vchiq_state*
  store %struct.vchiq_state* %15, %struct.vchiq_state** %3, align 8
  %16 = load %struct.vchiq_state*, %struct.vchiq_state** %3, align 8
  %17 = getelementptr inbounds %struct.vchiq_state, %struct.vchiq_state* %16, i32 0, i32 3
  %18 = load %struct.vchiq_shared_state*, %struct.vchiq_shared_state** %17, align 8
  store %struct.vchiq_shared_state* %18, %struct.vchiq_shared_state** %4, align 8
  %19 = load %struct.vchiq_state*, %struct.vchiq_state** %3, align 8
  %20 = load %struct.vchiq_state*, %struct.vchiq_state** %3, align 8
  %21 = getelementptr inbounds %struct.vchiq_state, %struct.vchiq_state* %20, i32 0, i32 2
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @SLOT_DATA_FROM_INDEX(%struct.vchiq_state* %19, i32 %24)
  %26 = inttoptr i64 %25 to %struct.vchiq_header*
  store %struct.vchiq_header* %26, %struct.vchiq_header** %5, align 8
  br label %27

27:                                               ; preds = %1, %51, %197
  %28 = load %struct.vchiq_state*, %struct.vchiq_state** %3, align 8
  %29 = getelementptr inbounds %struct.vchiq_state, %struct.vchiq_state* %28, i32 0, i32 1
  %30 = load %struct.vchiq_shared_state*, %struct.vchiq_shared_state** %4, align 8
  %31 = getelementptr inbounds %struct.vchiq_shared_state, %struct.vchiq_shared_state* %30, i32 0, i32 0
  %32 = call i32 @remote_event_wait(i32* %29, i32* %31)
  %33 = call i32 (...) @rmb()
  %34 = load %struct.vchiq_header*, %struct.vchiq_header** %5, align 8
  %35 = getelementptr inbounds %struct.vchiq_header, %struct.vchiq_header* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %7, align 4
  %37 = load %struct.vchiq_header*, %struct.vchiq_header** %5, align 8
  %38 = getelementptr inbounds %struct.vchiq_header, %struct.vchiq_header* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @VCHIQ_MSG_TYPE(i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @VCHIQ_MSG_DSTPORT(i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @VCHIQ_MSG_SRCPORT(i32 %44)
  store i32 %45, i32* %11, align 4
  %46 = load %struct.vchiq_state*, %struct.vchiq_state** %3, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call %struct.vchiq_service* @find_service_by_port(%struct.vchiq_state* %46, i32 %47)
  store %struct.vchiq_service* %48, %struct.vchiq_service** %6, align 8
  %49 = load %struct.vchiq_service*, %struct.vchiq_service** %6, align 8
  %50 = icmp ne %struct.vchiq_service* %49, null
  br i1 %50, label %66, label %51

51:                                               ; preds = %27
  %52 = load i64, i64* @vchiq_sync_log_level, align 8
  %53 = load %struct.vchiq_state*, %struct.vchiq_state** %3, align 8
  %54 = getelementptr inbounds %struct.vchiq_state, %struct.vchiq_state* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @msg_type_str(i32 %56)
  %58 = load %struct.vchiq_header*, %struct.vchiq_header** %5, align 8
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = call i32 (i64, i8*, i32, ...) @vchiq_log_error(i64 %52, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %57, %struct.vchiq_header* %58, i32 %59, i32 %60, i32 %61)
  %63 = load %struct.vchiq_state*, %struct.vchiq_state** %3, align 8
  %64 = load %struct.vchiq_header*, %struct.vchiq_header** %5, align 8
  %65 = call i32 @release_message_sync(%struct.vchiq_state* %63, %struct.vchiq_header* %64)
  br label %27

66:                                               ; preds = %27
  %67 = load i64, i64* @vchiq_sync_log_level, align 8
  %68 = load i64, i64* @VCHIQ_LOG_TRACE, align 8
  %69 = icmp sge i64 %67, %68
  br i1 %69, label %70, label %101

70:                                               ; preds = %66
  %71 = load %struct.vchiq_service*, %struct.vchiq_service** %6, align 8
  %72 = icmp ne %struct.vchiq_service* %71, null
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load %struct.vchiq_service*, %struct.vchiq_service** %6, align 8
  %75 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %74, i32 0, i32 5
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  br label %80

78:                                               ; preds = %70
  %79 = call i32 @VCHIQ_MAKE_FOURCC(i8 signext 63, i8 signext 63, i8 signext 63, i8 signext 63)
  br label %80

80:                                               ; preds = %78, %73
  %81 = phi i32 [ %77, %73 ], [ %79, %78 ]
  store i32 %81, i32* %12, align 4
  %82 = load i64, i64* @vchiq_sync_log_level, align 8
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @msg_type_str(i32 %83)
  %85 = load i32, i32* %12, align 4
  %86 = call %struct.vchiq_header* @VCHIQ_FOURCC_AS_4CHARS(i32 %85)
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @vchiq_log_trace(i64 %82, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %84, %struct.vchiq_header* %86, i32 %87, i32 %88, i32 %89)
  %91 = load i32, i32* %8, align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %80
  %94 = load %struct.vchiq_header*, %struct.vchiq_header** %5, align 8
  %95 = getelementptr inbounds %struct.vchiq_header, %struct.vchiq_header* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @min(i32 16, i32 %97)
  %99 = call i32 @vchiq_log_dump_mem(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 0, i64 %96, i32 %98)
  br label %100

100:                                              ; preds = %93, %80
  br label %101

101:                                              ; preds = %100, %66
  %102 = load i32, i32* %9, align 4
  switch i32 %102, label %185 [
    i32 128, label %103
    i32 129, label %151
  ]

103:                                              ; preds = %101
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = icmp uge i64 %105, 4
  br i1 %106, label %107, label %117

107:                                              ; preds = %103
  %108 = load %struct.vchiq_header*, %struct.vchiq_header** %5, align 8
  %109 = getelementptr inbounds %struct.vchiq_header, %struct.vchiq_header* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = inttoptr i64 %110 to %struct.vchiq_openack_payload*
  store %struct.vchiq_openack_payload* %111, %struct.vchiq_openack_payload** %13, align 8
  %112 = load %struct.vchiq_openack_payload*, %struct.vchiq_openack_payload** %13, align 8
  %113 = getelementptr inbounds %struct.vchiq_openack_payload, %struct.vchiq_openack_payload* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.vchiq_service*, %struct.vchiq_service** %6, align 8
  %116 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %115, i32 0, i32 4
  store i32 %114, i32* %116, align 4
  br label %117

117:                                              ; preds = %107, %103
  %118 = load i64, i64* @vchiq_sync_log_level, align 8
  %119 = load %struct.vchiq_state*, %struct.vchiq_state** %3, align 8
  %120 = getelementptr inbounds %struct.vchiq_state, %struct.vchiq_state* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.vchiq_header*, %struct.vchiq_header** %5, align 8
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* %10, align 4
  %126 = load %struct.vchiq_service*, %struct.vchiq_service** %6, align 8
  %127 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @vchiq_log_info(i64 %118, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %121, %struct.vchiq_header* %122, i32 %123, i32 %124, i32 %125, i32 %128)
  %130 = load %struct.vchiq_service*, %struct.vchiq_service** %6, align 8
  %131 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @VCHIQ_SRVSTATE_OPENING, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %147

135:                                              ; preds = %117
  %136 = load i32, i32* %11, align 4
  %137 = load %struct.vchiq_service*, %struct.vchiq_service** %6, align 8
  %138 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 4
  %139 = load %struct.vchiq_service*, %struct.vchiq_service** %6, align 8
  %140 = load i32, i32* @VCHIQ_SRVSTATE_OPENSYNC, align 4
  %141 = call i32 @vchiq_set_service_state(%struct.vchiq_service* %139, i32 %140)
  %142 = load %struct.vchiq_service*, %struct.vchiq_service** %6, align 8
  %143 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %142, i32 0, i32 1
  store i32 1, i32* %143, align 4
  %144 = load %struct.vchiq_service*, %struct.vchiq_service** %6, align 8
  %145 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %144, i32 0, i32 3
  %146 = call i32 @complete(i32* %145)
  br label %147

147:                                              ; preds = %135, %117
  %148 = load %struct.vchiq_state*, %struct.vchiq_state** %3, align 8
  %149 = load %struct.vchiq_header*, %struct.vchiq_header** %5, align 8
  %150 = call i32 @release_message_sync(%struct.vchiq_state* %148, %struct.vchiq_header* %149)
  br label %197

151:                                              ; preds = %101
  %152 = load i64, i64* @vchiq_sync_log_level, align 8
  %153 = load %struct.vchiq_state*, %struct.vchiq_state** %3, align 8
  %154 = getelementptr inbounds %struct.vchiq_state, %struct.vchiq_state* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.vchiq_header*, %struct.vchiq_header** %5, align 8
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* %11, align 4
  %159 = load i32, i32* %10, align 4
  %160 = call i32 @vchiq_log_trace(i64 %152, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %155, %struct.vchiq_header* %156, i32 %157, i32 %158, i32 %159)
  %161 = load %struct.vchiq_service*, %struct.vchiq_service** %6, align 8
  %162 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %11, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %184

166:                                              ; preds = %151
  %167 = load %struct.vchiq_service*, %struct.vchiq_service** %6, align 8
  %168 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @VCHIQ_SRVSTATE_OPENSYNC, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %184

172:                                              ; preds = %166
  %173 = load %struct.vchiq_service*, %struct.vchiq_service** %6, align 8
  %174 = load i32, i32* @VCHIQ_MESSAGE_AVAILABLE, align 4
  %175 = load %struct.vchiq_header*, %struct.vchiq_header** %5, align 8
  %176 = call i32 @make_service_callback(%struct.vchiq_service* %173, i32 %174, %struct.vchiq_header* %175, i32* null)
  %177 = load i32, i32* @VCHIQ_RETRY, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %183

179:                                              ; preds = %172
  %180 = load i64, i64* @vchiq_sync_log_level, align 8
  %181 = load i32, i32* %10, align 4
  %182 = call i32 (i64, i8*, i32, ...) @vchiq_log_error(i64 %180, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0), i32 %181)
  br label %183

183:                                              ; preds = %179, %172
  br label %184

184:                                              ; preds = %183, %166, %151
  br label %197

185:                                              ; preds = %101
  %186 = load i64, i64* @vchiq_sync_log_level, align 8
  %187 = load %struct.vchiq_state*, %struct.vchiq_state** %3, align 8
  %188 = getelementptr inbounds %struct.vchiq_state, %struct.vchiq_state* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* %7, align 4
  %191 = load %struct.vchiq_header*, %struct.vchiq_header** %5, align 8
  %192 = load i32, i32* %8, align 4
  %193 = call i32 (i64, i8*, i32, ...) @vchiq_log_error(i64 %186, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %189, i32 %190, %struct.vchiq_header* %191, i32 %192)
  %194 = load %struct.vchiq_state*, %struct.vchiq_state** %3, align 8
  %195 = load %struct.vchiq_header*, %struct.vchiq_header** %5, align 8
  %196 = call i32 @release_message_sync(%struct.vchiq_state* %194, %struct.vchiq_header* %195)
  br label %197

197:                                              ; preds = %185, %184, %147
  %198 = load %struct.vchiq_service*, %struct.vchiq_service** %6, align 8
  %199 = call i32 @unlock_service(%struct.vchiq_service* %198)
  br label %27
}

declare dso_local i64 @SLOT_DATA_FROM_INDEX(%struct.vchiq_state*, i32) #1

declare dso_local i32 @remote_event_wait(i32*, i32*) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @VCHIQ_MSG_TYPE(i32) #1

declare dso_local i32 @VCHIQ_MSG_DSTPORT(i32) #1

declare dso_local i32 @VCHIQ_MSG_SRCPORT(i32) #1

declare dso_local %struct.vchiq_service* @find_service_by_port(%struct.vchiq_state*, i32) #1

declare dso_local i32 @vchiq_log_error(i64, i8*, i32, ...) #1

declare dso_local i32 @msg_type_str(i32) #1

declare dso_local i32 @release_message_sync(%struct.vchiq_state*, %struct.vchiq_header*) #1

declare dso_local i32 @VCHIQ_MAKE_FOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @vchiq_log_trace(i64, i8*, i32, %struct.vchiq_header*, i32, i32, i32) #1

declare dso_local %struct.vchiq_header* @VCHIQ_FOURCC_AS_4CHARS(i32) #1

declare dso_local i32 @vchiq_log_dump_mem(i8*, i32, i64, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @vchiq_log_info(i64, i8*, i32, %struct.vchiq_header*, i32, i32, i32, i32) #1

declare dso_local i32 @vchiq_set_service_state(%struct.vchiq_service*, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @make_service_callback(%struct.vchiq_service*, i32, %struct.vchiq_header*, i32*) #1

declare dso_local i32 @unlock_service(%struct.vchiq_service*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
