; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_u_audio.c_uac_pcm_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_u_audio.c_uac_pcm_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64 }
%struct.snd_uac_chip = type { %struct.uac_rtd_params, %struct.uac_rtd_params, %struct.g_audio* }
%struct.uac_rtd_params = type { i32, i32, %struct.snd_pcm_substream*, i32, i64 }
%struct.g_audio = type { %struct.uac_params }
%struct.uac_params = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @uac_pcm_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uac_pcm_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_uac_chip*, align 8
  %6 = alloca %struct.uac_rtd_params*, align 8
  %7 = alloca %struct.g_audio*, align 8
  %8 = alloca %struct.uac_params*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %12 = call %struct.snd_uac_chip* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %11)
  store %struct.snd_uac_chip* %12, %struct.snd_uac_chip** %5, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.snd_uac_chip*, %struct.snd_uac_chip** %5, align 8
  %14 = getelementptr inbounds %struct.snd_uac_chip, %struct.snd_uac_chip* %13, i32 0, i32 2
  %15 = load %struct.g_audio*, %struct.g_audio** %14, align 8
  store %struct.g_audio* %15, %struct.g_audio** %7, align 8
  %16 = load %struct.g_audio*, %struct.g_audio** %7, align 8
  %17 = getelementptr inbounds %struct.g_audio, %struct.g_audio* %16, i32 0, i32 0
  store %struct.uac_params* %17, %struct.uac_params** %8, align 8
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load %struct.snd_uac_chip*, %struct.snd_uac_chip** %5, align 8
  %25 = getelementptr inbounds %struct.snd_uac_chip, %struct.snd_uac_chip* %24, i32 0, i32 1
  store %struct.uac_rtd_params* %25, %struct.uac_rtd_params** %6, align 8
  br label %29

26:                                               ; preds = %2
  %27 = load %struct.snd_uac_chip*, %struct.snd_uac_chip** %5, align 8
  %28 = getelementptr inbounds %struct.snd_uac_chip, %struct.snd_uac_chip* %27, i32 0, i32 0
  store %struct.uac_rtd_params* %28, %struct.uac_rtd_params** %6, align 8
  br label %29

29:                                               ; preds = %26, %23
  %30 = load %struct.uac_rtd_params*, %struct.uac_rtd_params** %6, align 8
  %31 = getelementptr inbounds %struct.uac_rtd_params, %struct.uac_rtd_params* %30, i32 0, i32 3
  %32 = load i64, i64* %9, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load %struct.uac_rtd_params*, %struct.uac_rtd_params** %6, align 8
  %35 = getelementptr inbounds %struct.uac_rtd_params, %struct.uac_rtd_params* %34, i32 0, i32 4
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* %4, align 4
  switch i32 %36, label %44 [
    i32 130, label %37
    i32 131, label %37
    i32 129, label %41
    i32 128, label %41
  ]

37:                                               ; preds = %29, %29
  %38 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %39 = load %struct.uac_rtd_params*, %struct.uac_rtd_params** %6, align 8
  %40 = getelementptr inbounds %struct.uac_rtd_params, %struct.uac_rtd_params* %39, i32 0, i32 2
  store %struct.snd_pcm_substream* %38, %struct.snd_pcm_substream** %40, align 8
  br label %47

41:                                               ; preds = %29, %29
  %42 = load %struct.uac_rtd_params*, %struct.uac_rtd_params** %6, align 8
  %43 = getelementptr inbounds %struct.uac_rtd_params, %struct.uac_rtd_params* %42, i32 0, i32 2
  store %struct.snd_pcm_substream* null, %struct.snd_pcm_substream** %43, align 8
  br label %47

44:                                               ; preds = %29
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %10, align 4
  br label %47

47:                                               ; preds = %44, %41, %37
  %48 = load %struct.uac_rtd_params*, %struct.uac_rtd_params** %6, align 8
  %49 = getelementptr inbounds %struct.uac_rtd_params, %struct.uac_rtd_params* %48, i32 0, i32 3
  %50 = load i64, i64* %9, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  %52 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %53 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %74

57:                                               ; preds = %47
  %58 = load %struct.uac_rtd_params*, %struct.uac_rtd_params** %6, align 8
  %59 = getelementptr inbounds %struct.uac_rtd_params, %struct.uac_rtd_params* %58, i32 0, i32 2
  %60 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %59, align 8
  %61 = icmp ne %struct.snd_pcm_substream* %60, null
  br i1 %61, label %74, label %62

62:                                               ; preds = %57
  %63 = load %struct.uac_rtd_params*, %struct.uac_rtd_params** %6, align 8
  %64 = getelementptr inbounds %struct.uac_rtd_params, %struct.uac_rtd_params* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.uac_rtd_params*, %struct.uac_rtd_params** %6, align 8
  %67 = getelementptr inbounds %struct.uac_rtd_params, %struct.uac_rtd_params* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.uac_params*, %struct.uac_params** %8, align 8
  %70 = getelementptr inbounds %struct.uac_params, %struct.uac_params* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = mul nsw i32 %68, %71
  %73 = call i32 @memset(i32 %65, i32 0, i32 %72)
  br label %74

74:                                               ; preds = %62, %57, %47
  %75 = load i32, i32* %10, align 4
  ret i32 %75
}

declare dso_local %struct.snd_uac_chip* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
