; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_u_uac1_legacy.c_u_audio_playback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_u_uac1_legacy.c_u_audio_playback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gaudio = type { %struct.gaudio_snd_dev }
%struct.gaudio_snd_dev = type { %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@SNDRV_PCM_STATE_XRUN = common dso_local global i64 0, align 8
@SNDRV_PCM_STATE_SUSPENDED = common dso_local global i64 0, align 8
@SNDRV_PCM_IOCTL_PREPARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Preparing sound card failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Playback error: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @u_audio_playback(%struct.gaudio* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.gaudio*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.gaudio_snd_dev*, align 8
  %9 = alloca %struct.snd_pcm_substream*, align 8
  %10 = alloca %struct.snd_pcm_runtime*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.gaudio* %0, %struct.gaudio** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.gaudio*, %struct.gaudio** %5, align 8
  %14 = getelementptr inbounds %struct.gaudio, %struct.gaudio* %13, i32 0, i32 0
  store %struct.gaudio_snd_dev* %14, %struct.gaudio_snd_dev** %8, align 8
  %15 = load %struct.gaudio_snd_dev*, %struct.gaudio_snd_dev** %8, align 8
  %16 = getelementptr inbounds %struct.gaudio_snd_dev, %struct.gaudio_snd_dev* %15, i32 0, i32 0
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %16, align 8
  store %struct.snd_pcm_substream* %17, %struct.snd_pcm_substream** %9, align 8
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %9, align 8
  %19 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %18, i32 0, i32 0
  %20 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %19, align 8
  store %struct.snd_pcm_runtime* %20, %struct.snd_pcm_runtime** %10, align 8
  br label %21

21:                                               ; preds = %63, %3
  %22 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %23 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SNDRV_PCM_STATE_XRUN, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %37, label %29

29:                                               ; preds = %21
  %30 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %31 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SNDRV_PCM_STATE_SUSPENDED, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %29, %21
  %38 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %9, align 8
  %39 = load i32, i32* @SNDRV_PCM_IOCTL_PREPARE, align 4
  %40 = call i64 @snd_pcm_kernel_ioctl(%struct.snd_pcm_substream* %38, i32 %39, i32* null)
  store i64 %40, i64* %11, align 8
  %41 = load i64, i64* %11, align 8
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load %struct.gaudio*, %struct.gaudio** %5, align 8
  %45 = load i64, i64* %11, align 8
  %46 = trunc i64 %45 to i32
  %47 = call i32 @ERROR(%struct.gaudio* %44, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i64, i64* %11, align 8
  store i64 %48, i64* %4, align 8
  br label %69

49:                                               ; preds = %37
  br label %50

50:                                               ; preds = %49, %29
  %51 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  %52 = load i64, i64* %7, align 8
  %53 = call i64 @bytes_to_frames(%struct.snd_pcm_runtime* %51, i64 %52)
  store i64 %53, i64* %12, align 8
  %54 = load %struct.gaudio_snd_dev*, %struct.gaudio_snd_dev** %8, align 8
  %55 = getelementptr inbounds %struct.gaudio_snd_dev, %struct.gaudio_snd_dev* %54, i32 0, i32 0
  %56 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %55, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = load i64, i64* %12, align 8
  %59 = call i64 @snd_pcm_kernel_write(%struct.snd_pcm_substream* %56, i8* %57, i64 %58)
  store i64 %59, i64* %11, align 8
  %60 = load i64, i64* %11, align 8
  %61 = load i64, i64* %12, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %50
  %64 = load %struct.gaudio*, %struct.gaudio** %5, align 8
  %65 = load i64, i64* %11, align 8
  %66 = trunc i64 %65 to i32
  %67 = call i32 @ERROR(%struct.gaudio* %64, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  br label %21

68:                                               ; preds = %50
  store i64 0, i64* %4, align 8
  br label %69

69:                                               ; preds = %68, %43
  %70 = load i64, i64* %4, align 8
  ret i64 %70
}

declare dso_local i64 @snd_pcm_kernel_ioctl(%struct.snd_pcm_substream*, i32, i32*) #1

declare dso_local i32 @ERROR(%struct.gaudio*, i8*, i32) #1

declare dso_local i64 @bytes_to_frames(%struct.snd_pcm_runtime*, i64) #1

declare dso_local i64 @snd_pcm_kernel_write(%struct.snd_pcm_substream*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
