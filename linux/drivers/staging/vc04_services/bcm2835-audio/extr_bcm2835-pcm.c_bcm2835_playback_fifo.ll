; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-audio/extr_bcm2835-pcm.c_bcm2835_playback_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-audio/extr_bcm2835-pcm.c_bcm2835_playback_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_alsa_stream = type { i32, i32, i32, i32, i32, i64, %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { i32 }

@SNDRV_PCM_STATE_SETUP = common dso_local global i32 0, align 4
@SNDRV_PCM_STATE_XRUN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bcm2835_playback_fifo(%struct.bcm2835_alsa_stream* %0, i32 %1) #0 {
  %3 = alloca %struct.bcm2835_alsa_stream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcm_substream*, align 8
  %6 = alloca i32, align 4
  store %struct.bcm2835_alsa_stream* %0, %struct.bcm2835_alsa_stream** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.bcm2835_alsa_stream*, %struct.bcm2835_alsa_stream** %3, align 8
  %8 = getelementptr inbounds %struct.bcm2835_alsa_stream, %struct.bcm2835_alsa_stream* %7, i32 0, i32 6
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  store %struct.snd_pcm_substream* %9, %struct.snd_pcm_substream** %5, align 8
  %10 = load %struct.bcm2835_alsa_stream*, %struct.bcm2835_alsa_stream** %3, align 8
  %11 = getelementptr inbounds %struct.bcm2835_alsa_stream, %struct.bcm2835_alsa_stream* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %79

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.bcm2835_alsa_stream*, %struct.bcm2835_alsa_stream** %3, align 8
  %18 = getelementptr inbounds %struct.bcm2835_alsa_stream, %struct.bcm2835_alsa_stream* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp uge i32 %16, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %15
  %22 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %23 = call i32 @snd_pcm_stream_lock(%struct.snd_pcm_substream* %22)
  %24 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %25 = load %struct.bcm2835_alsa_stream*, %struct.bcm2835_alsa_stream** %3, align 8
  %26 = getelementptr inbounds %struct.bcm2835_alsa_stream, %struct.bcm2835_alsa_stream* %25, i32 0, i32 5
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* @SNDRV_PCM_STATE_SETUP, align 4
  br label %33

31:                                               ; preds = %21
  %32 = load i32, i32* @SNDRV_PCM_STATE_XRUN, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  %35 = call i32 @snd_pcm_stop(%struct.snd_pcm_substream* %24, i32 %34)
  %36 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %37 = call i32 @snd_pcm_stream_unlock(%struct.snd_pcm_substream* %36)
  br label %79

38:                                               ; preds = %15
  %39 = load %struct.bcm2835_alsa_stream*, %struct.bcm2835_alsa_stream** %3, align 8
  %40 = getelementptr inbounds %struct.bcm2835_alsa_stream, %struct.bcm2835_alsa_stream* %39, i32 0, i32 4
  %41 = call i32 @atomic_read(i32* %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %6, align 4
  %44 = add i32 %43, %42
  store i32 %44, i32* %6, align 4
  %45 = load %struct.bcm2835_alsa_stream*, %struct.bcm2835_alsa_stream** %3, align 8
  %46 = getelementptr inbounds %struct.bcm2835_alsa_stream, %struct.bcm2835_alsa_stream* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %6, align 4
  %49 = urem i32 %48, %47
  store i32 %49, i32* %6, align 4
  %50 = load %struct.bcm2835_alsa_stream*, %struct.bcm2835_alsa_stream** %3, align 8
  %51 = getelementptr inbounds %struct.bcm2835_alsa_stream, %struct.bcm2835_alsa_stream* %50, i32 0, i32 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @atomic_set(i32* %51, i32 %52)
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.bcm2835_alsa_stream*, %struct.bcm2835_alsa_stream** %3, align 8
  %56 = getelementptr inbounds %struct.bcm2835_alsa_stream, %struct.bcm2835_alsa_stream* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = add i32 %57, %54
  store i32 %58, i32* %56, align 8
  %59 = call i32 (...) @ktime_get()
  %60 = load %struct.bcm2835_alsa_stream*, %struct.bcm2835_alsa_stream** %3, align 8
  %61 = getelementptr inbounds %struct.bcm2835_alsa_stream, %struct.bcm2835_alsa_stream* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  %62 = load %struct.bcm2835_alsa_stream*, %struct.bcm2835_alsa_stream** %3, align 8
  %63 = getelementptr inbounds %struct.bcm2835_alsa_stream, %struct.bcm2835_alsa_stream* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.bcm2835_alsa_stream*, %struct.bcm2835_alsa_stream** %3, align 8
  %66 = getelementptr inbounds %struct.bcm2835_alsa_stream, %struct.bcm2835_alsa_stream* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp uge i32 %64, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %38
  %70 = load %struct.bcm2835_alsa_stream*, %struct.bcm2835_alsa_stream** %3, align 8
  %71 = getelementptr inbounds %struct.bcm2835_alsa_stream, %struct.bcm2835_alsa_stream* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.bcm2835_alsa_stream*, %struct.bcm2835_alsa_stream** %3, align 8
  %74 = getelementptr inbounds %struct.bcm2835_alsa_stream, %struct.bcm2835_alsa_stream* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = urem i32 %75, %72
  store i32 %76, i32* %74, align 8
  %77 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %5, align 8
  %78 = call i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream* %77)
  br label %79

79:                                               ; preds = %14, %33, %69, %38
  ret void
}

declare dso_local i32 @snd_pcm_stream_lock(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_stop(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @snd_pcm_stream_unlock(%struct.snd_pcm_substream*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @snd_pcm_period_elapsed(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
