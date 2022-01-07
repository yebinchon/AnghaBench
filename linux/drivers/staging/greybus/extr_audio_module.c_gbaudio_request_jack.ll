; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_audio_module.c_gbaudio_request_jack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_audio_module.c_gbaudio_request_jack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gbaudio_module_info = type { i32, i32, i32, %struct.TYPE_2__, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.snd_jack* }
%struct.snd_jack = type { i32 }
%struct.gb_audio_jack_event_request = type { i32, i32 }

@.str = private unnamed_addr constant [49 x i8] c"Invalid jack event received:type: %u, event: %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Jack Event received: type: %u, event: %u\0A\00", align 1
@GB_AUDIO_JACK_EVENT_REMOVAL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"Modifying jack from %d to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gbaudio_module_info*, %struct.gb_audio_jack_event_request*)* @gbaudio_request_jack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gbaudio_request_jack(%struct.gbaudio_module_info* %0, %struct.gb_audio_jack_event_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gbaudio_module_info*, align 8
  %5 = alloca %struct.gb_audio_jack_event_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_jack*, align 8
  %8 = alloca %struct.snd_jack*, align 8
  store %struct.gbaudio_module_info* %0, %struct.gbaudio_module_info** %4, align 8
  store %struct.gb_audio_jack_event_request* %1, %struct.gb_audio_jack_event_request** %5, align 8
  %9 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %10 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.snd_jack*, %struct.snd_jack** %11, align 8
  store %struct.snd_jack* %12, %struct.snd_jack** %7, align 8
  %13 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %14 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %13, i32 0, i32 6
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.snd_jack*, %struct.snd_jack** %15, align 8
  store %struct.snd_jack* %16, %struct.snd_jack** %8, align 8
  %17 = load %struct.snd_jack*, %struct.snd_jack** %7, align 8
  %18 = icmp ne %struct.snd_jack* %17, null
  br i1 %18, label %32, label %19

19:                                               ; preds = %2
  %20 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %21 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.gb_audio_jack_event_request*, %struct.gb_audio_jack_event_request** %5, align 8
  %24 = getelementptr inbounds %struct.gb_audio_jack_event_request, %struct.gb_audio_jack_event_request* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.gb_audio_jack_event_request*, %struct.gb_audio_jack_event_request** %5, align 8
  %27 = getelementptr inbounds %struct.gb_audio_jack_event_request, %struct.gb_audio_jack_event_request* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dev_err_ratelimited(i32 %22, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %123

32:                                               ; preds = %2
  %33 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %34 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.gb_audio_jack_event_request*, %struct.gb_audio_jack_event_request** %5, align 8
  %37 = getelementptr inbounds %struct.gb_audio_jack_event_request, %struct.gb_audio_jack_event_request* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.gb_audio_jack_event_request*, %struct.gb_audio_jack_event_request** %5, align 8
  %40 = getelementptr inbounds %struct.gb_audio_jack_event_request, %struct.gb_audio_jack_event_request* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dev_warn_ratelimited(i32 %35, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %41)
  %43 = load %struct.gb_audio_jack_event_request*, %struct.gb_audio_jack_event_request** %5, align 8
  %44 = getelementptr inbounds %struct.gb_audio_jack_event_request, %struct.gb_audio_jack_event_request* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* @GB_AUDIO_JACK_EVENT_REMOVAL, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %75

49:                                               ; preds = %32
  %50 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %51 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %50, i32 0, i32 0
  store i32 0, i32* %51, align 8
  %52 = load %struct.snd_jack*, %struct.snd_jack** %8, align 8
  %53 = icmp ne %struct.snd_jack* %52, null
  br i1 %53, label %54, label %68

54:                                               ; preds = %49
  %55 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %56 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %55, i32 0, i32 5
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %54
  %60 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %61 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %60, i32 0, i32 6
  %62 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %63 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @snd_soc_jack_report(%struct.TYPE_2__* %61, i32 0, i32 %64)
  %66 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %67 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %66, i32 0, i32 5
  store i64 0, i64* %67, align 8
  br label %68

68:                                               ; preds = %59, %54, %49
  %69 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %70 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %69, i32 0, i32 3
  %71 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %72 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @snd_soc_jack_report(%struct.TYPE_2__* %70, i32 0, i32 %73)
  store i32 0, i32* %3, align 4
  br label %123

75:                                               ; preds = %32
  %76 = load %struct.gb_audio_jack_event_request*, %struct.gb_audio_jack_event_request** %5, align 8
  %77 = getelementptr inbounds %struct.gb_audio_jack_event_request, %struct.gb_audio_jack_event_request* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %80 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = and i32 %78, %81
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %98, label %85

85:                                               ; preds = %75
  %86 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %87 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.gb_audio_jack_event_request*, %struct.gb_audio_jack_event_request** %5, align 8
  %90 = getelementptr inbounds %struct.gb_audio_jack_event_request, %struct.gb_audio_jack_event_request* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.gb_audio_jack_event_request*, %struct.gb_audio_jack_event_request** %5, align 8
  %93 = getelementptr inbounds %struct.gb_audio_jack_event_request, %struct.gb_audio_jack_event_request* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @dev_err_ratelimited(i32 %88, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %91, i32 %94)
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %3, align 4
  br label %123

98:                                               ; preds = %75
  %99 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %100 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %98
  %104 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %105 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %108 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @dev_warn_ratelimited(i32 %106, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %103, %98
  %113 = load i32, i32* %6, align 4
  %114 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %115 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  %116 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %117 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %116, i32 0, i32 3
  %118 = load i32, i32* %6, align 4
  %119 = load %struct.gbaudio_module_info*, %struct.gbaudio_module_info** %4, align 8
  %120 = getelementptr inbounds %struct.gbaudio_module_info, %struct.gbaudio_module_info* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @snd_soc_jack_report(%struct.TYPE_2__* %117, i32 %118, i32 %121)
  store i32 0, i32* %3, align 4
  br label %123

123:                                              ; preds = %112, %85, %68, %19
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @dev_err_ratelimited(i32, i8*, i32, i32) #1

declare dso_local i32 @dev_warn_ratelimited(i32, i8*, i32, i32) #1

declare dso_local i32 @snd_soc_jack_report(%struct.TYPE_2__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
