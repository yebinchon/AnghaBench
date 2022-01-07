; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_audio_codec.c_gbcodec_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_audio_codec.c_gbcodec_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i32, i32 }
%struct.gbaudio_codec_info = type { i32, i32, i32 }
%struct.gbaudio_stream_params = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"No codec module available\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to fetch dai_stream pointer\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GBAUDIO_CODEC_STARTUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @gbcodec_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gbcodec_startup(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca %struct.gbaudio_codec_info*, align 8
  %7 = alloca %struct.gbaudio_stream_params*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %5, align 8
  %8 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %9 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.gbaudio_codec_info* @dev_get_drvdata(i32 %10)
  store %struct.gbaudio_codec_info* %11, %struct.gbaudio_codec_info** %6, align 8
  %12 = load %struct.gbaudio_codec_info*, %struct.gbaudio_codec_info** %6, align 8
  %13 = getelementptr inbounds %struct.gbaudio_codec_info, %struct.gbaudio_codec_info* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.gbaudio_codec_info*, %struct.gbaudio_codec_info** %6, align 8
  %16 = getelementptr inbounds %struct.gbaudio_codec_info, %struct.gbaudio_codec_info* %15, i32 0, i32 2
  %17 = call i64 @list_empty(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %2
  %20 = load %struct.gbaudio_codec_info*, %struct.gbaudio_codec_info** %6, align 8
  %21 = getelementptr inbounds %struct.gbaudio_codec_info, %struct.gbaudio_codec_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.gbaudio_codec_info*, %struct.gbaudio_codec_info** %6, align 8
  %25 = getelementptr inbounds %struct.gbaudio_codec_info, %struct.gbaudio_codec_info* %24, i32 0, i32 0
  %26 = call i32 @mutex_unlock(i32* %25)
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %61

29:                                               ; preds = %2
  %30 = load %struct.gbaudio_codec_info*, %struct.gbaudio_codec_info** %6, align 8
  %31 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %32 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %35 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.gbaudio_stream_params* @find_dai_stream_params(%struct.gbaudio_codec_info* %30, i32 %33, i32 %36)
  store %struct.gbaudio_stream_params* %37, %struct.gbaudio_stream_params** %7, align 8
  %38 = load %struct.gbaudio_stream_params*, %struct.gbaudio_stream_params** %7, align 8
  %39 = icmp ne %struct.gbaudio_stream_params* %38, null
  br i1 %39, label %50, label %40

40:                                               ; preds = %29
  %41 = load %struct.gbaudio_codec_info*, %struct.gbaudio_codec_info** %6, align 8
  %42 = getelementptr inbounds %struct.gbaudio_codec_info, %struct.gbaudio_codec_info* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.gbaudio_codec_info*, %struct.gbaudio_codec_info** %6, align 8
  %46 = getelementptr inbounds %struct.gbaudio_codec_info, %struct.gbaudio_codec_info* %45, i32 0, i32 0
  %47 = call i32 @mutex_unlock(i32* %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %61

50:                                               ; preds = %29
  %51 = load i32, i32* @GBAUDIO_CODEC_STARTUP, align 4
  %52 = load %struct.gbaudio_stream_params*, %struct.gbaudio_stream_params** %7, align 8
  %53 = getelementptr inbounds %struct.gbaudio_stream_params, %struct.gbaudio_stream_params* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.gbaudio_codec_info*, %struct.gbaudio_codec_info** %6, align 8
  %55 = getelementptr inbounds %struct.gbaudio_codec_info, %struct.gbaudio_codec_info* %54, i32 0, i32 0
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %58 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @pm_stay_awake(i32 %59)
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %50, %40, %19
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.gbaudio_codec_info* @dev_get_drvdata(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.gbaudio_stream_params* @find_dai_stream_params(%struct.gbaudio_codec_info*, i32, i32) #1

declare dso_local i32 @pm_stay_awake(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
