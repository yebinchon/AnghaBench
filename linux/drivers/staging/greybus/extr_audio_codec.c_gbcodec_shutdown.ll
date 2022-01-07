; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_audio_codec.c_gbcodec_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_audio_codec.c_gbcodec_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i32, i32 }
%struct.gbaudio_codec_info = type { i32, i32, i32 }
%struct.gbaudio_stream_params = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"No codec module available during shutdown\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to fetch dai_stream pointer\0A\00", align 1
@GBAUDIO_CODEC_SHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @gbcodec_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gbcodec_shutdown(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_soc_dai*, align 8
  %5 = alloca %struct.gbaudio_codec_info*, align 8
  %6 = alloca %struct.gbaudio_stream_params*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %4, align 8
  %7 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %8 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.gbaudio_codec_info* @dev_get_drvdata(i32 %9)
  store %struct.gbaudio_codec_info* %10, %struct.gbaudio_codec_info** %5, align 8
  %11 = load %struct.gbaudio_codec_info*, %struct.gbaudio_codec_info** %5, align 8
  %12 = getelementptr inbounds %struct.gbaudio_codec_info, %struct.gbaudio_codec_info* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.gbaudio_codec_info*, %struct.gbaudio_codec_info** %5, align 8
  %15 = getelementptr inbounds %struct.gbaudio_codec_info, %struct.gbaudio_codec_info* %14, i32 0, i32 2
  %16 = call i64 @list_empty(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.gbaudio_codec_info*, %struct.gbaudio_codec_info** %5, align 8
  %20 = getelementptr inbounds %struct.gbaudio_codec_info, %struct.gbaudio_codec_info* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dev_info(i32 %21, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %18, %2
  %24 = load %struct.gbaudio_codec_info*, %struct.gbaudio_codec_info** %5, align 8
  %25 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %26 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %29 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.gbaudio_stream_params* @find_dai_stream_params(%struct.gbaudio_codec_info* %24, i32 %27, i32 %30)
  store %struct.gbaudio_stream_params* %31, %struct.gbaudio_stream_params** %6, align 8
  %32 = load %struct.gbaudio_stream_params*, %struct.gbaudio_stream_params** %6, align 8
  %33 = icmp ne %struct.gbaudio_stream_params* %32, null
  br i1 %33, label %42, label %34

34:                                               ; preds = %23
  %35 = load %struct.gbaudio_codec_info*, %struct.gbaudio_codec_info** %5, align 8
  %36 = getelementptr inbounds %struct.gbaudio_codec_info, %struct.gbaudio_codec_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.gbaudio_codec_info*, %struct.gbaudio_codec_info** %5, align 8
  %40 = getelementptr inbounds %struct.gbaudio_codec_info, %struct.gbaudio_codec_info* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  br label %53

42:                                               ; preds = %23
  %43 = load i32, i32* @GBAUDIO_CODEC_SHUTDOWN, align 4
  %44 = load %struct.gbaudio_stream_params*, %struct.gbaudio_stream_params** %6, align 8
  %45 = getelementptr inbounds %struct.gbaudio_stream_params, %struct.gbaudio_stream_params* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.gbaudio_codec_info*, %struct.gbaudio_codec_info** %5, align 8
  %47 = getelementptr inbounds %struct.gbaudio_codec_info, %struct.gbaudio_codec_info* %46, i32 0, i32 0
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %4, align 8
  %50 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @pm_relax(i32 %51)
  br label %53

53:                                               ; preds = %42, %34
  ret void
}

declare dso_local %struct.gbaudio_codec_info* @dev_get_drvdata(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local %struct.gbaudio_stream_params* @find_dai_stream_params(%struct.gbaudio_codec_info*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pm_relax(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
