; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_u_audio.c_uac_pcm_pointer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_u_audio.c_uac_pcm_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, i32 }
%struct.snd_uac_chip = type { %struct.uac_rtd_params, %struct.uac_rtd_params }
%struct.uac_rtd_params = type { i32 }

@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @uac_pcm_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uac_pcm_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_uac_chip*, align 8
  %4 = alloca %struct.uac_rtd_params*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %6 = call %struct.snd_uac_chip* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %5)
  store %struct.snd_uac_chip* %6, %struct.snd_uac_chip** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.snd_uac_chip*, %struct.snd_uac_chip** %3, align 8
  %14 = getelementptr inbounds %struct.snd_uac_chip, %struct.snd_uac_chip* %13, i32 0, i32 1
  store %struct.uac_rtd_params* %14, %struct.uac_rtd_params** %4, align 8
  br label %18

15:                                               ; preds = %1
  %16 = load %struct.snd_uac_chip*, %struct.snd_uac_chip** %3, align 8
  %17 = getelementptr inbounds %struct.snd_uac_chip, %struct.snd_uac_chip* %16, i32 0, i32 0
  store %struct.uac_rtd_params* %17, %struct.uac_rtd_params** %4, align 8
  br label %18

18:                                               ; preds = %15, %12
  %19 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %20 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.uac_rtd_params*, %struct.uac_rtd_params** %4, align 8
  %23 = getelementptr inbounds %struct.uac_rtd_params, %struct.uac_rtd_params* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @bytes_to_frames(i32 %21, i32 %24)
  ret i32 %25
}

declare dso_local %struct.snd_uac_chip* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @bytes_to_frames(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
