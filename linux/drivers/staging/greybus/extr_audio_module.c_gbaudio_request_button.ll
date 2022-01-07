; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_audio_module.c_gbaudio_request_button.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_audio_module.c_gbaudio_request_button.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gbaudio_module_info = type { i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { %struct.snd_jack* }
%struct.snd_jack = type { i32 }
%struct.gb_audio_button_event_request = type { i32, i64 }

@.str = private unnamed_addr constant [51 x i8] c"Invalid button event received:type: %u, event: %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Button Event received: id: %u, event: %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Jack not present. Bogus event!!\0A\00", align 1
@SND_JACK_BTN_0 = common dso_local global i32 0, align 4
@SND_JACK_BTN_1 = common dso_local global i32 0, align 4
@SND_JACK_BTN_2 = common dso_local global i32 0, align 4
@SND_JACK_BTN_3 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Invalid button request received\0A\00", align 1
@GB_AUDIO_BUTTON_EVENT_PRESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gbaudio_module_info*, %struct.gb_audio_button_event_request*)* @gbaudio_request_button to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gbaudio_request_button(%struct.gbaudio_module_info* %0, %struct.gb_audio_button_event_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gbaudio_module_info*, align 8
  %5 = alloca %struct.gb_audio_button_event_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_jack*, align 8
  store %struct.gbaudio_module_info* %0, %struct.gbaudio_module_info** %4, align 8
  store %struct.gb_audio_button_event_request* %1, %struct.gb_audio_button_event_request** %5, align 8
  %9 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %10 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.snd_jack*, %struct.snd_jack** %11, align 8
  store %struct.snd_jack* %12, %struct.snd_jack** %8, align 8
  %13 = load %struct.snd_jack*, %struct.snd_jack** %8, align 8
  %14 = icmp ne %struct.snd_jack* %13, null
  br i1 %14, label %28, label %15

15:                                               ; preds = %2
  %16 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %17 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.gb_audio_button_event_request*, %struct.gb_audio_button_event_request** %5, align 8
  %20 = getelementptr inbounds %struct.gb_audio_button_event_request, %struct.gb_audio_button_event_request* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.gb_audio_button_event_request*, %struct.gb_audio_button_event_request** %5, align 8
  %23 = getelementptr inbounds %struct.gb_audio_button_event_request, %struct.gb_audio_button_event_request* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i32 (i32, i8*, ...) @dev_err_ratelimited(i32 %18, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %21, i64 %24)
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %121

28:                                               ; preds = %2
  %29 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %30 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.gb_audio_button_event_request*, %struct.gb_audio_button_event_request** %5, align 8
  %33 = getelementptr inbounds %struct.gb_audio_button_event_request, %struct.gb_audio_button_event_request* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.gb_audio_button_event_request*, %struct.gb_audio_button_event_request** %5, align 8
  %36 = getelementptr inbounds %struct.gb_audio_button_event_request, %struct.gb_audio_button_event_request* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @dev_warn_ratelimited(i32 %31, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %34, i64 %37)
  %39 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %40 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %28
  %44 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %45 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (i32, i8*, ...) @dev_err_ratelimited(i32 %46, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %121

50:                                               ; preds = %28
  %51 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %52 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %55 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %53, %56
  store i32 %57, i32* %7, align 4
  store i32 0, i32* %6, align 4
  %58 = load %struct.gb_audio_button_event_request*, %struct.gb_audio_button_event_request** %5, align 8
  %59 = getelementptr inbounds %struct.gb_audio_button_event_request, %struct.gb_audio_button_event_request* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  switch i32 %60, label %85 [
    i32 1, label %61
    i32 2, label %67
    i32 3, label %73
    i32 4, label %79
  ]

61:                                               ; preds = %50
  %62 = load i32, i32* @SND_JACK_BTN_0, align 4
  %63 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %64 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %62, %65
  store i32 %66, i32* %6, align 4
  br label %85

67:                                               ; preds = %50
  %68 = load i32, i32* @SND_JACK_BTN_1, align 4
  %69 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %70 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %68, %71
  store i32 %72, i32* %6, align 4
  br label %85

73:                                               ; preds = %50
  %74 = load i32, i32* @SND_JACK_BTN_2, align 4
  %75 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %76 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %74, %77
  store i32 %78, i32* %6, align 4
  br label %85

79:                                               ; preds = %50
  %80 = load i32, i32* @SND_JACK_BTN_3, align 4
  %81 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %82 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %80, %83
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %50, %79, %73, %67, %61
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %95, label %88

88:                                               ; preds = %85
  %89 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %90 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = call i32 (i32, i8*, ...) @dev_err_ratelimited(i32 %91, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %121

95:                                               ; preds = %85
  %96 = load %struct.gb_audio_button_event_request*, %struct.gb_audio_button_event_request** %5, align 8
  %97 = getelementptr inbounds %struct.gb_audio_button_event_request, %struct.gb_audio_button_event_request* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @GB_AUDIO_BUTTON_EVENT_PRESS, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %95
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %6, align 4
  %104 = or i32 %102, %103
  store i32 %104, i32* %7, align 4
  br label %110

105:                                              ; preds = %95
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* %6, align 4
  %108 = xor i32 %107, -1
  %109 = and i32 %106, %108
  store i32 %109, i32* %7, align 4
  br label %110

110:                                              ; preds = %105, %101
  %111 = load i32, i32* %7, align 4
  %112 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %113 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  %114 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %115 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %114, i32 0, i32 2
  %116 = load i32, i32* %7, align 4
  %117 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %118 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @snd_soc_jack_report(%struct.TYPE_2__* %115, i32 %116, i32 %119)
  store i32 0, i32* %3, align 4
  br label %121

121:                                              ; preds = %110, %88, %43, %15
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @dev_err_ratelimited(i32, i8*, ...) #1

declare dso_local i32 @dev_warn_ratelimited(i32, i8*, i32, i64) #1

declare dso_local i32 @snd_soc_jack_report(%struct.TYPE_2__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
