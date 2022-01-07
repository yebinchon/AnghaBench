; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-audio/extr_bcm2835-pcm.c_snd_bcm2835_playback_open_generic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-audio/extr_bcm2835-pcm.c_snd_bcm2835_playback_open_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, %struct.bcm2835_alsa_stream* }
%struct.bcm2835_alsa_stream = type { i32, %struct.snd_pcm_substream*, %struct.bcm2835_chip* }
%struct.bcm2835_chip = type { i32, i32, %struct.bcm2835_alsa_stream**, i64, i32 }

@EBUSY = common dso_local global i32 0, align 4
@MAX_SUBSTREAMS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"substream(%d) device doesn't exist max(%d) substreams allowed\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@snd_bcm2835_playback_free = common dso_local global i32 0, align 4
@snd_bcm2835_playback_spdif_hw = common dso_local global i32 0, align 4
@snd_bcm2835_playback_hw = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIOD_BYTES = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIOD_TIME = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_bcm2835_playback_open_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_bcm2835_playback_open_generic(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bcm2835_chip*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca %struct.bcm2835_alsa_stream*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = call %struct.bcm2835_chip* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %10)
  store %struct.bcm2835_chip* %11, %struct.bcm2835_chip** %5, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %12, i32 0, i32 1
  %14 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %13, align 8
  store %struct.snd_pcm_runtime* %14, %struct.snd_pcm_runtime** %6, align 8
  %15 = load %struct.bcm2835_chip*, %struct.bcm2835_chip** %5, align 8
  %16 = getelementptr inbounds %struct.bcm2835_chip, %struct.bcm2835_chip* %15, i32 0, i32 1
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %2
  %24 = load %struct.bcm2835_chip*, %struct.bcm2835_chip** %5, align 8
  %25 = getelementptr inbounds %struct.bcm2835_chip, %struct.bcm2835_chip* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %9, align 4
  br label %124

31:                                               ; preds = %23, %2
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %31
  %35 = load %struct.bcm2835_chip*, %struct.bcm2835_chip** %5, align 8
  %36 = getelementptr inbounds %struct.bcm2835_chip, %struct.bcm2835_chip* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = shl i32 1, %38
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i32, i32* @EBUSY, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %9, align 4
  br label %124

45:                                               ; preds = %34, %31
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @MAX_SUBSTREAMS, align 4
  %49 = icmp sge i32 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %46
  %51 = load %struct.bcm2835_chip*, %struct.bcm2835_chip** %5, align 8
  %52 = getelementptr inbounds %struct.bcm2835_chip, %struct.bcm2835_chip* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @MAX_SUBSTREAMS, align 4
  %56 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %55)
  %57 = load i32, i32* @ENODEV, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %9, align 4
  br label %124

59:                                               ; preds = %46
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call %struct.bcm2835_alsa_stream* @kzalloc(i32 24, i32 %60)
  store %struct.bcm2835_alsa_stream* %61, %struct.bcm2835_alsa_stream** %7, align 8
  %62 = load %struct.bcm2835_alsa_stream*, %struct.bcm2835_alsa_stream** %7, align 8
  %63 = icmp ne %struct.bcm2835_alsa_stream* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %59
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %9, align 4
  br label %124

67:                                               ; preds = %59
  %68 = load %struct.bcm2835_chip*, %struct.bcm2835_chip** %5, align 8
  %69 = load %struct.bcm2835_alsa_stream*, %struct.bcm2835_alsa_stream** %7, align 8
  %70 = getelementptr inbounds %struct.bcm2835_alsa_stream, %struct.bcm2835_alsa_stream* %69, i32 0, i32 2
  store %struct.bcm2835_chip* %68, %struct.bcm2835_chip** %70, align 8
  %71 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %72 = load %struct.bcm2835_alsa_stream*, %struct.bcm2835_alsa_stream** %7, align 8
  %73 = getelementptr inbounds %struct.bcm2835_alsa_stream, %struct.bcm2835_alsa_stream* %72, i32 0, i32 1
  store %struct.snd_pcm_substream* %71, %struct.snd_pcm_substream** %73, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.bcm2835_alsa_stream*, %struct.bcm2835_alsa_stream** %7, align 8
  %76 = getelementptr inbounds %struct.bcm2835_alsa_stream, %struct.bcm2835_alsa_stream* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.bcm2835_alsa_stream*, %struct.bcm2835_alsa_stream** %7, align 8
  %78 = call i32 @bcm2835_audio_open(%struct.bcm2835_alsa_stream* %77)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %67
  %82 = load %struct.bcm2835_alsa_stream*, %struct.bcm2835_alsa_stream** %7, align 8
  %83 = call i32 @kfree(%struct.bcm2835_alsa_stream* %82)
  br label %124

84:                                               ; preds = %67
  %85 = load %struct.bcm2835_alsa_stream*, %struct.bcm2835_alsa_stream** %7, align 8
  %86 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %87 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %86, i32 0, i32 2
  store %struct.bcm2835_alsa_stream* %85, %struct.bcm2835_alsa_stream** %87, align 8
  %88 = load i32, i32* @snd_bcm2835_playback_free, align 4
  %89 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %90 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* %4, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %84
  %94 = load i32, i32* @snd_bcm2835_playback_spdif_hw, align 4
  %95 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %96 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  br label %103

97:                                               ; preds = %84
  %98 = load %struct.bcm2835_chip*, %struct.bcm2835_chip** %5, align 8
  %99 = getelementptr inbounds %struct.bcm2835_chip, %struct.bcm2835_chip* %98, i32 0, i32 3
  store i64 0, i64* %99, align 8
  %100 = load i32, i32* @snd_bcm2835_playback_hw, align 4
  %101 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %102 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  br label %103

103:                                              ; preds = %97, %93
  %104 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %105 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_BYTES, align 4
  %106 = call i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime* %104, i32 0, i32 %105, i32 16)
  %107 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %108 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIOD_TIME, align 4
  %109 = load i32, i32* @UINT_MAX, align 4
  %110 = call i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime* %107, i32 %108, i32 10000, i32 %109)
  %111 = load %struct.bcm2835_alsa_stream*, %struct.bcm2835_alsa_stream** %7, align 8
  %112 = load %struct.bcm2835_chip*, %struct.bcm2835_chip** %5, align 8
  %113 = getelementptr inbounds %struct.bcm2835_chip, %struct.bcm2835_chip* %112, i32 0, i32 2
  %114 = load %struct.bcm2835_alsa_stream**, %struct.bcm2835_alsa_stream*** %113, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.bcm2835_alsa_stream*, %struct.bcm2835_alsa_stream** %114, i64 %116
  store %struct.bcm2835_alsa_stream* %111, %struct.bcm2835_alsa_stream** %117, align 8
  %118 = load i32, i32* %8, align 4
  %119 = shl i32 1, %118
  %120 = load %struct.bcm2835_chip*, %struct.bcm2835_chip** %5, align 8
  %121 = getelementptr inbounds %struct.bcm2835_chip, %struct.bcm2835_chip* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 8
  br label %124

124:                                              ; preds = %103, %81, %64, %50, %42, %28
  %125 = load %struct.bcm2835_chip*, %struct.bcm2835_chip** %5, align 8
  %126 = getelementptr inbounds %struct.bcm2835_chip, %struct.bcm2835_chip* %125, i32 0, i32 1
  %127 = call i32 @mutex_unlock(i32* %126)
  %128 = load i32, i32* %9, align 4
  ret i32 %128
}

declare dso_local %struct.bcm2835_chip* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local %struct.bcm2835_alsa_stream* @kzalloc(i32, i32) #1

declare dso_local i32 @bcm2835_audio_open(%struct.bcm2835_alsa_stream*) #1

declare dso_local i32 @kfree(%struct.bcm2835_alsa_stream*) #1

declare dso_local i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime*, i32, i32, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_minmax(%struct.snd_pcm_runtime*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
