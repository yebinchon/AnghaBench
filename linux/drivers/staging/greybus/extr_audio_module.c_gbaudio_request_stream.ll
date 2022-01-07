; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_audio_module.c_gbaudio_request_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_audio_module.c_gbaudio_request_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gbaudio_module_info = type { i32 }
%struct.gb_audio_streaming_event_request = type { i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"Audio Event received: cport: %u, event: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gbaudio_module_info*, %struct.gb_audio_streaming_event_request*)* @gbaudio_request_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gbaudio_request_stream(%struct.gbaudio_module_info* %0, %struct.gb_audio_streaming_event_request* %1) #0 {
  %3 = alloca %struct.gbaudio_module_info*, align 8
  %4 = alloca %struct.gb_audio_streaming_event_request*, align 8
  store %struct.gbaudio_module_info* %0, %struct.gbaudio_module_info** %3, align 8
  store %struct.gb_audio_streaming_event_request* %1, %struct.gb_audio_streaming_event_request** %4, align 8
  %5 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %3, align 8
  %6 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.gb_audio_streaming_event_request*, %struct.gb_audio_streaming_event_request** %4, align 8
  %9 = getelementptr inbounds %struct.gb_audio_streaming_event_request, %struct.gb_audio_streaming_event_request* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @le16_to_cpu(i32 %10)
  %12 = load %struct.gb_audio_streaming_event_request*, %struct.gb_audio_streaming_event_request** %4, align 8
  %13 = getelementptr inbounds %struct.gb_audio_streaming_event_request, %struct.gb_audio_streaming_event_request* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dev_warn(i32 %7, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %14)
  ret i32 0
}

declare dso_local i32 @dev_warn(i32, i8*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
