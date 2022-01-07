; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-audio/extr_bcm2835-pcm.c_snd_bcm2835_pcm_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-audio/extr_bcm2835-pcm.c_snd_bcm2835_pcm_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.bcm2835_alsa_stream* }
%struct.bcm2835_alsa_stream = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_bcm2835_pcm_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_bcm2835_pcm_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca %struct.bcm2835_alsa_stream*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 0
  %10 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  store %struct.snd_pcm_runtime* %10, %struct.snd_pcm_runtime** %6, align 8
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %11, i32 0, i32 0
  %13 = load %struct.bcm2835_alsa_stream*, %struct.bcm2835_alsa_stream** %12, align 8
  store %struct.bcm2835_alsa_stream* %13, %struct.bcm2835_alsa_stream** %7, align 8
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %26 [
    i32 129, label %15
    i32 130, label %18
    i32 128, label %23
  ]

15:                                               ; preds = %2
  %16 = load %struct.bcm2835_alsa_stream*, %struct.bcm2835_alsa_stream** %7, align 8
  %17 = call i32 @bcm2835_audio_start(%struct.bcm2835_alsa_stream* %16)
  store i32 %17, i32* %3, align 4
  br label %29

18:                                               ; preds = %2
  %19 = load %struct.bcm2835_alsa_stream*, %struct.bcm2835_alsa_stream** %7, align 8
  %20 = getelementptr inbounds %struct.bcm2835_alsa_stream, %struct.bcm2835_alsa_stream* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  %21 = load %struct.bcm2835_alsa_stream*, %struct.bcm2835_alsa_stream** %7, align 8
  %22 = call i32 @bcm2835_audio_drain(%struct.bcm2835_alsa_stream* %21)
  store i32 %22, i32* %3, align 4
  br label %29

23:                                               ; preds = %2
  %24 = load %struct.bcm2835_alsa_stream*, %struct.bcm2835_alsa_stream** %7, align 8
  %25 = call i32 @bcm2835_audio_stop(%struct.bcm2835_alsa_stream* %24)
  store i32 %25, i32* %3, align 4
  br label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %26, %23, %18, %15
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @bcm2835_audio_start(%struct.bcm2835_alsa_stream*) #1

declare dso_local i32 @bcm2835_audio_drain(%struct.bcm2835_alsa_stream*) #1

declare dso_local i32 @bcm2835_audio_stop(%struct.bcm2835_alsa_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
