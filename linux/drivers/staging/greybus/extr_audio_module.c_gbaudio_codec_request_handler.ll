; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_audio_module.c_gbaudio_codec_request_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_audio_module.c_gbaudio_codec_request_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_operation = type { %struct.TYPE_3__*, %struct.gb_connection* }
%struct.TYPE_3__ = type { %struct.gb_audio_streaming_event_request*, %struct.gb_operation_msg_hdr* }
%struct.gb_audio_streaming_event_request = type { i32 }
%struct.gb_operation_msg_hdr = type { i32 }
%struct.gb_connection = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.gbaudio_module_info = type { i32 }
%struct.gb_audio_jack_event_request = type opaque
%struct.gb_audio_button_event_request = type opaque

@.str = private unnamed_addr constant [30 x i8] c"Invalid Audio Event received\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_operation*)* @gbaudio_codec_request_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gbaudio_codec_request_handler(%struct.gb_operation* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gb_operation*, align 8
  %4 = alloca %struct.gb_connection*, align 8
  %5 = alloca %struct.gbaudio_module_info*, align 8
  %6 = alloca %struct.gb_operation_msg_hdr*, align 8
  %7 = alloca %struct.gb_audio_streaming_event_request*, align 8
  %8 = alloca %struct.gb_audio_jack_event_request*, align 8
  %9 = alloca %struct.gb_audio_button_event_request*, align 8
  %10 = alloca i32, align 4
  store %struct.gb_operation* %0, %struct.gb_operation** %3, align 8
  %11 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %12 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %11, i32 0, i32 1
  %13 = load %struct.gb_connection*, %struct.gb_connection** %12, align 8
  store %struct.gb_connection* %13, %struct.gb_connection** %4, align 8
  %14 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %15 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = call %struct.gbaudio_module_info* @greybus_get_drvdata(%struct.TYPE_4__* %16)
  store %struct.gbaudio_module_info* %17, %struct.gbaudio_module_info** %5, align 8
  %18 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %19 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load %struct.gb_operation_msg_hdr*, %struct.gb_operation_msg_hdr** %21, align 8
  store %struct.gb_operation_msg_hdr* %22, %struct.gb_operation_msg_hdr** %6, align 8
  %23 = load %struct.gb_operation_msg_hdr*, %struct.gb_operation_msg_hdr** %6, align 8
  %24 = getelementptr inbounds %struct.gb_operation_msg_hdr, %struct.gb_operation_msg_hdr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %57 [
    i32 128, label %26
    i32 129, label %35
    i32 130, label %46
  ]

26:                                               ; preds = %1
  %27 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %28 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load %struct.gb_audio_streaming_event_request*, %struct.gb_audio_streaming_event_request** %30, align 8
  store %struct.gb_audio_streaming_event_request* %31, %struct.gb_audio_streaming_event_request** %7, align 8
  %32 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %5, align 8
  %33 = load %struct.gb_audio_streaming_event_request*, %struct.gb_audio_streaming_event_request** %7, align 8
  %34 = call i32 @gbaudio_request_stream(%struct.gbaudio_module_info* %32, %struct.gb_audio_streaming_event_request* %33)
  store i32 %34, i32* %10, align 4
  br label %65

35:                                               ; preds = %1
  %36 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %37 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load %struct.gb_audio_streaming_event_request*, %struct.gb_audio_streaming_event_request** %39, align 8
  %41 = bitcast %struct.gb_audio_streaming_event_request* %40 to %struct.gb_audio_jack_event_request*
  store %struct.gb_audio_jack_event_request* %41, %struct.gb_audio_jack_event_request** %8, align 8
  %42 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %5, align 8
  %43 = load %struct.gb_audio_jack_event_request*, %struct.gb_audio_jack_event_request** %8, align 8
  %44 = bitcast %struct.gb_audio_jack_event_request* %43 to %struct.gb_audio_streaming_event_request*
  %45 = call i32 @gbaudio_request_jack(%struct.gbaudio_module_info* %42, %struct.gb_audio_streaming_event_request* %44)
  store i32 %45, i32* %10, align 4
  br label %65

46:                                               ; preds = %1
  %47 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %48 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load %struct.gb_audio_streaming_event_request*, %struct.gb_audio_streaming_event_request** %50, align 8
  %52 = bitcast %struct.gb_audio_streaming_event_request* %51 to %struct.gb_audio_button_event_request*
  store %struct.gb_audio_button_event_request* %52, %struct.gb_audio_button_event_request** %9, align 8
  %53 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %5, align 8
  %54 = load %struct.gb_audio_button_event_request*, %struct.gb_audio_button_event_request** %9, align 8
  %55 = bitcast %struct.gb_audio_button_event_request* %54 to %struct.gb_audio_streaming_event_request*
  %56 = call i32 @gbaudio_request_button(%struct.gbaudio_module_info* %53, %struct.gb_audio_streaming_event_request* %55)
  store i32 %56, i32* %10, align 4
  br label %65

57:                                               ; preds = %1
  %58 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %59 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = call i32 @dev_err_ratelimited(i32* %61, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %67

65:                                               ; preds = %46, %35, %26
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %65, %57
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.gbaudio_module_info* @greybus_get_drvdata(%struct.TYPE_4__*) #1

declare dso_local i32 @gbaudio_request_stream(%struct.gbaudio_module_info*, %struct.gb_audio_streaming_event_request*) #1

declare dso_local i32 @gbaudio_request_jack(%struct.gbaudio_module_info*, %struct.gb_audio_streaming_event_request*) #1

declare dso_local i32 @gbaudio_request_button(%struct.gbaudio_module_info*, %struct.gb_audio_streaming_event_request*) #1

declare dso_local i32 @dev_err_ratelimited(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
