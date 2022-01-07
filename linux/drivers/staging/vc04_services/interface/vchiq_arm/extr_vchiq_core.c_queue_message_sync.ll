; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_core.c_queue_message_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_core.c_queue_message_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vchiq_state = type { i32, %struct.TYPE_4__*, i32, i32, i32, %struct.vchiq_shared_state* }
%struct.TYPE_4__ = type { i32 }
%struct.vchiq_shared_state = type { i32, i32 }
%struct.vchiq_service = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.vchiq_header = type { i32, i32, i32 }

@VCHIQ_MSG_RESUME = common dso_local global i64 0, align 8
@VCHIQ_RETRY = common dso_local global i32 0, align 4
@VCHIQ_MSGID_PADDING = common dso_local global i32 0, align 4
@vchiq_core_log_level = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"%d: qms - msgid %x, not PADDING\00", align 1
@vchiq_sync_log_level = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"%d: qms %s@%pK,%x (%d->%d)\00", align 1
@error_count = common dso_local global i32 0, align 4
@VCHIQ_ERROR = common dso_local global i32 0, align 4
@VCHIQ_LOG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"Sent\00", align 1
@ctrl_tx_count = common dso_local global i32 0, align 4
@ctrl_tx_bytes = common dso_local global i32 0, align 4
@VCHIQ_LOG_TRACE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [50 x i8] c"Sent Sync Msg %s(%u) to %c%c%c%c s:%u d:%d len:%d\00", align 1
@VCHIQ_MSG_PAUSE = common dso_local global i64 0, align 8
@VCHIQ_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vchiq_state*, %struct.vchiq_service*, i32, i64 (i8*, i8*, i64, i64)*, i8*, i32, i32)* @queue_message_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queue_message_sync(%struct.vchiq_state* %0, %struct.vchiq_service* %1, i32 %2, i64 (i8*, i8*, i64, i64)* %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.vchiq_state*, align 8
  %10 = alloca %struct.vchiq_service*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64 (i8*, i8*, i64, i64)*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.vchiq_shared_state*, align 8
  %17 = alloca %struct.vchiq_header*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.vchiq_state* %0, %struct.vchiq_state** %9, align 8
  store %struct.vchiq_service* %1, %struct.vchiq_service** %10, align 8
  store i32 %2, i32* %11, align 4
  store i64 (i8*, i8*, i64, i64)* %3, i64 (i8*, i8*, i64, i64)** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %21 = load %struct.vchiq_state*, %struct.vchiq_state** %9, align 8
  %22 = getelementptr inbounds %struct.vchiq_state, %struct.vchiq_state* %21, i32 0, i32 5
  %23 = load %struct.vchiq_shared_state*, %struct.vchiq_shared_state** %22, align 8
  store %struct.vchiq_shared_state* %23, %struct.vchiq_shared_state** %16, align 8
  %24 = load i32, i32* %11, align 4
  %25 = call i64 @VCHIQ_MSG_TYPE(i32 %24)
  %26 = load i64, i64* @VCHIQ_MSG_RESUME, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %7
  %29 = load %struct.vchiq_state*, %struct.vchiq_state** %9, align 8
  %30 = getelementptr inbounds %struct.vchiq_state, %struct.vchiq_state* %29, i32 0, i32 0
  %31 = call i64 @mutex_lock_killable(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @VCHIQ_RETRY, align 4
  store i32 %34, i32* %8, align 4
  br label %172

35:                                               ; preds = %28, %7
  %36 = load %struct.vchiq_state*, %struct.vchiq_state** %9, align 8
  %37 = getelementptr inbounds %struct.vchiq_state, %struct.vchiq_state* %36, i32 0, i32 4
  %38 = load %struct.vchiq_shared_state*, %struct.vchiq_shared_state** %16, align 8
  %39 = getelementptr inbounds %struct.vchiq_shared_state, %struct.vchiq_shared_state* %38, i32 0, i32 1
  %40 = call i32 @remote_event_wait(i32* %37, i32* %39)
  %41 = call i32 (...) @rmb()
  %42 = load %struct.vchiq_state*, %struct.vchiq_state** %9, align 8
  %43 = load %struct.vchiq_shared_state*, %struct.vchiq_shared_state** %16, align 8
  %44 = getelementptr inbounds %struct.vchiq_shared_state, %struct.vchiq_shared_state* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @SLOT_DATA_FROM_INDEX(%struct.vchiq_state* %42, i32 %45)
  %47 = inttoptr i64 %46 to %struct.vchiq_header*
  store %struct.vchiq_header* %47, %struct.vchiq_header** %17, align 8
  %48 = load %struct.vchiq_header*, %struct.vchiq_header** %17, align 8
  %49 = getelementptr inbounds %struct.vchiq_header, %struct.vchiq_header* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %19, align 4
  %51 = load i32, i32* %19, align 4
  %52 = load i32, i32* @VCHIQ_MSGID_PADDING, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %35
  %55 = load i32, i32* @vchiq_core_log_level, align 4
  %56 = load %struct.vchiq_state*, %struct.vchiq_state** %9, align 8
  %57 = getelementptr inbounds %struct.vchiq_state, %struct.vchiq_state* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %19, align 4
  %60 = call i32 @vchiq_log_error(i32 %55, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %54, %35
  %62 = load i64, i64* @vchiq_sync_log_level, align 8
  %63 = load %struct.vchiq_state*, %struct.vchiq_state** %9, align 8
  %64 = getelementptr inbounds %struct.vchiq_state, %struct.vchiq_state* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %11, align 4
  %67 = call i64 @VCHIQ_MSG_TYPE(i32 %66)
  %68 = call i32 @msg_type_str(i64 %67)
  %69 = load %struct.vchiq_header*, %struct.vchiq_header** %17, align 8
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @VCHIQ_MSG_SRCPORT(i32 %71)
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @VCHIQ_MSG_DSTPORT(i32 %73)
  %75 = call i32 @vchiq_log_info(i64 %62, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32 %68, %struct.vchiq_header* %69, i32 %70, i32 %72, i32 %74)
  %76 = load i64 (i8*, i8*, i64, i64)*, i64 (i8*, i8*, i64, i64)** %12, align 8
  %77 = load i8*, i8** %13, align 8
  %78 = load %struct.vchiq_header*, %struct.vchiq_header** %17, align 8
  %79 = getelementptr inbounds %struct.vchiq_header, %struct.vchiq_header* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %14, align 4
  %82 = call i64 @copy_message_data(i64 (i8*, i8*, i64, i64)* %76, i8* %77, i32 %80, i32 %81)
  store i64 %82, i64* %18, align 8
  %83 = load i64, i64* %18, align 8
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %61
  %86 = load %struct.vchiq_state*, %struct.vchiq_state** %9, align 8
  %87 = getelementptr inbounds %struct.vchiq_state, %struct.vchiq_state* %86, i32 0, i32 2
  %88 = call i32 @mutex_unlock(i32* %87)
  %89 = load %struct.vchiq_service*, %struct.vchiq_service** %10, align 8
  %90 = load i32, i32* @error_count, align 4
  %91 = call i32 @VCHIQ_SERVICE_STATS_INC(%struct.vchiq_service* %89, i32 %90)
  %92 = load i32, i32* @VCHIQ_ERROR, align 4
  store i32 %92, i32* %8, align 4
  br label %172

93:                                               ; preds = %61
  %94 = load %struct.vchiq_service*, %struct.vchiq_service** %10, align 8
  %95 = icmp ne %struct.vchiq_service* %94, null
  br i1 %95, label %96, label %116

96:                                               ; preds = %93
  %97 = load %struct.vchiq_service*, %struct.vchiq_service** %10, align 8
  %98 = load i32, i32* @VCHIQ_LOG_INFO, align 4
  %99 = call i64 @SRVTRACE_ENABLED(%struct.vchiq_service* %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %96
  %102 = load %struct.vchiq_header*, %struct.vchiq_header** %17, align 8
  %103 = getelementptr inbounds %struct.vchiq_header, %struct.vchiq_header* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load i64, i64* %18, align 8
  %106 = call i32 @min(i64 16, i64 %105)
  %107 = call i32 @vchiq_log_dump_mem(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 %104, i32 %106)
  br label %108

108:                                              ; preds = %101, %96
  %109 = load %struct.vchiq_service*, %struct.vchiq_service** %10, align 8
  %110 = load i32, i32* @ctrl_tx_count, align 4
  %111 = call i32 @VCHIQ_SERVICE_STATS_INC(%struct.vchiq_service* %109, i32 %110)
  %112 = load %struct.vchiq_service*, %struct.vchiq_service** %10, align 8
  %113 = load i32, i32* @ctrl_tx_bytes, align 4
  %114 = load i32, i32* %14, align 4
  %115 = call i32 @VCHIQ_SERVICE_STATS_ADD(%struct.vchiq_service* %112, i32 %113, i32 %114)
  br label %120

116:                                              ; preds = %93
  %117 = load %struct.vchiq_state*, %struct.vchiq_state** %9, align 8
  %118 = load i32, i32* @ctrl_tx_count, align 4
  %119 = call i32 @VCHIQ_STATS_INC(%struct.vchiq_state* %117, i32 %118)
  br label %120

120:                                              ; preds = %116, %108
  %121 = load i32, i32* %14, align 4
  %122 = load %struct.vchiq_header*, %struct.vchiq_header** %17, align 8
  %123 = getelementptr inbounds %struct.vchiq_header, %struct.vchiq_header* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  %124 = load i32, i32* %11, align 4
  %125 = load %struct.vchiq_header*, %struct.vchiq_header** %17, align 8
  %126 = getelementptr inbounds %struct.vchiq_header, %struct.vchiq_header* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 4
  %127 = load i64, i64* @vchiq_sync_log_level, align 8
  %128 = load i64, i64* @VCHIQ_LOG_TRACE, align 8
  %129 = icmp sge i64 %127, %128
  br i1 %129, label %130, label %156

130:                                              ; preds = %120
  %131 = load %struct.vchiq_service*, %struct.vchiq_service** %10, align 8
  %132 = icmp ne %struct.vchiq_service* %131, null
  br i1 %132, label %133, label %138

133:                                              ; preds = %130
  %134 = load %struct.vchiq_service*, %struct.vchiq_service** %10, align 8
  %135 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  br label %140

138:                                              ; preds = %130
  %139 = call i32 @VCHIQ_MAKE_FOURCC(i8 signext 63, i8 signext 63, i8 signext 63, i8 signext 63)
  br label %140

140:                                              ; preds = %138, %133
  %141 = phi i32 [ %137, %133 ], [ %139, %138 ]
  store i32 %141, i32* %20, align 4
  %142 = load i64, i64* @vchiq_sync_log_level, align 8
  %143 = load i32, i32* %11, align 4
  %144 = call i64 @VCHIQ_MSG_TYPE(i32 %143)
  %145 = call i32 @msg_type_str(i64 %144)
  %146 = load i32, i32* %11, align 4
  %147 = call i64 @VCHIQ_MSG_TYPE(i32 %146)
  %148 = load i32, i32* %20, align 4
  %149 = call i32 @VCHIQ_FOURCC_AS_4CHARS(i32 %148)
  %150 = load i32, i32* %11, align 4
  %151 = call i32 @VCHIQ_MSG_SRCPORT(i32 %150)
  %152 = load i32, i32* %11, align 4
  %153 = call i32 @VCHIQ_MSG_DSTPORT(i32 %152)
  %154 = load i32, i32* %14, align 4
  %155 = call i32 @vchiq_log_trace(i64 %142, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %145, i64 %147, i32 %149, i32 %151, i32 %153, i32 %154)
  br label %156

156:                                              ; preds = %140, %120
  %157 = load %struct.vchiq_state*, %struct.vchiq_state** %9, align 8
  %158 = getelementptr inbounds %struct.vchiq_state, %struct.vchiq_state* %157, i32 0, i32 1
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = call i32 @remote_event_signal(i32* %160)
  %162 = load i32, i32* %11, align 4
  %163 = call i64 @VCHIQ_MSG_TYPE(i32 %162)
  %164 = load i64, i64* @VCHIQ_MSG_PAUSE, align 8
  %165 = icmp ne i64 %163, %164
  br i1 %165, label %166, label %170

166:                                              ; preds = %156
  %167 = load %struct.vchiq_state*, %struct.vchiq_state** %9, align 8
  %168 = getelementptr inbounds %struct.vchiq_state, %struct.vchiq_state* %167, i32 0, i32 0
  %169 = call i32 @mutex_unlock(i32* %168)
  br label %170

170:                                              ; preds = %166, %156
  %171 = load i32, i32* @VCHIQ_SUCCESS, align 4
  store i32 %171, i32* %8, align 4
  br label %172

172:                                              ; preds = %170, %85, %33
  %173 = load i32, i32* %8, align 4
  ret i32 %173
}

declare dso_local i64 @VCHIQ_MSG_TYPE(i32) #1

declare dso_local i64 @mutex_lock_killable(i32*) #1

declare dso_local i32 @remote_event_wait(i32*, i32*) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i64 @SLOT_DATA_FROM_INDEX(%struct.vchiq_state*, i32) #1

declare dso_local i32 @vchiq_log_error(i32, i8*, i32, i32) #1

declare dso_local i32 @vchiq_log_info(i64, i8*, i32, i32, %struct.vchiq_header*, i32, i32, i32) #1

declare dso_local i32 @msg_type_str(i64) #1

declare dso_local i32 @VCHIQ_MSG_SRCPORT(i32) #1

declare dso_local i32 @VCHIQ_MSG_DSTPORT(i32) #1

declare dso_local i64 @copy_message_data(i64 (i8*, i8*, i64, i64)*, i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @VCHIQ_SERVICE_STATS_INC(%struct.vchiq_service*, i32) #1

declare dso_local i64 @SRVTRACE_ENABLED(%struct.vchiq_service*, i32) #1

declare dso_local i32 @vchiq_log_dump_mem(i8*, i32, i32, i32) #1

declare dso_local i32 @min(i64, i64) #1

declare dso_local i32 @VCHIQ_SERVICE_STATS_ADD(%struct.vchiq_service*, i32, i32) #1

declare dso_local i32 @VCHIQ_STATS_INC(%struct.vchiq_state*, i32) #1

declare dso_local i32 @VCHIQ_MAKE_FOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @vchiq_log_trace(i64, i8*, i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @VCHIQ_FOURCC_AS_4CHARS(i32) #1

declare dso_local i32 @remote_event_signal(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
