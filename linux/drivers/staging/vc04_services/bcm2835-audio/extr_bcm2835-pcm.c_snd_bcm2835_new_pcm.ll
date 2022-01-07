; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-audio/extr_bcm2835-pcm.c_snd_bcm2835_new_pcm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-audio/extr_bcm2835-pcm.c_snd_bcm2835_new_pcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_chip = type { i32, %struct.snd_pcm*, %struct.snd_pcm*, %struct.TYPE_2__*, i32, i64 }
%struct.snd_pcm = type { i32, i32, %struct.bcm2835_chip* }
%struct.TYPE_2__ = type { i32 }

@CTRL_VOL_UNMUTE = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@snd_bcm2835_playback_spdif_ops = common dso_local global i32 0, align 4
@snd_bcm2835_playback_ops = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_DEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_bcm2835_new_pcm(%struct.bcm2835_chip* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.bcm2835_chip*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.snd_pcm*, align 8
  %15 = alloca i32, align 4
  store %struct.bcm2835_chip* %0, %struct.bcm2835_chip** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load %struct.bcm2835_chip*, %struct.bcm2835_chip** %8, align 8
  %17 = getelementptr inbounds %struct.bcm2835_chip, %struct.bcm2835_chip* %16, i32 0, i32 3
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %12, align 4
  %22 = call i32 @snd_pcm_new(%struct.TYPE_2__* %18, i8* %19, i32 %20, i32 %21, i32 0, %struct.snd_pcm** %14)
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* %15, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %6
  %26 = load i32, i32* %15, align 4
  store i32 %26, i32* %7, align 4
  br label %76

27:                                               ; preds = %6
  %28 = load %struct.bcm2835_chip*, %struct.bcm2835_chip** %8, align 8
  %29 = load %struct.snd_pcm*, %struct.snd_pcm** %14, align 8
  %30 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %29, i32 0, i32 2
  store %struct.bcm2835_chip* %28, %struct.bcm2835_chip** %30, align 8
  %31 = load %struct.snd_pcm*, %struct.snd_pcm** %14, align 8
  %32 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load %struct.snd_pcm*, %struct.snd_pcm** %14, align 8
  %34 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %9, align 8
  %37 = call i32 @strcpy(i32 %35, i8* %36)
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %27
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.bcm2835_chip*, %struct.bcm2835_chip** %8, align 8
  %43 = getelementptr inbounds %struct.bcm2835_chip, %struct.bcm2835_chip* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.bcm2835_chip*, %struct.bcm2835_chip** %8, align 8
  %45 = getelementptr inbounds %struct.bcm2835_chip, %struct.bcm2835_chip* %44, i32 0, i32 5
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* @CTRL_VOL_UNMUTE, align 4
  %47 = load %struct.bcm2835_chip*, %struct.bcm2835_chip** %8, align 8
  %48 = getelementptr inbounds %struct.bcm2835_chip, %struct.bcm2835_chip* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %40, %27
  %50 = load %struct.snd_pcm*, %struct.snd_pcm** %14, align 8
  %51 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32* @snd_bcm2835_playback_spdif_ops, i32* @snd_bcm2835_playback_ops
  %56 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %50, i32 %51, i32* %55)
  %57 = load %struct.snd_pcm*, %struct.snd_pcm** %14, align 8
  %58 = load i32, i32* @SNDRV_DMA_TYPE_DEV, align 4
  %59 = load %struct.bcm2835_chip*, %struct.bcm2835_chip** %8, align 8
  %60 = getelementptr inbounds %struct.bcm2835_chip, %struct.bcm2835_chip* %59, i32 0, i32 3
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %57, i32 %58, i32 %63, i32 131072, i32 131072)
  %65 = load i32, i32* %13, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %49
  %68 = load %struct.snd_pcm*, %struct.snd_pcm** %14, align 8
  %69 = load %struct.bcm2835_chip*, %struct.bcm2835_chip** %8, align 8
  %70 = getelementptr inbounds %struct.bcm2835_chip, %struct.bcm2835_chip* %69, i32 0, i32 2
  store %struct.snd_pcm* %68, %struct.snd_pcm** %70, align 8
  br label %75

71:                                               ; preds = %49
  %72 = load %struct.snd_pcm*, %struct.snd_pcm** %14, align 8
  %73 = load %struct.bcm2835_chip*, %struct.bcm2835_chip** %8, align 8
  %74 = getelementptr inbounds %struct.bcm2835_chip, %struct.bcm2835_chip* %73, i32 0, i32 1
  store %struct.snd_pcm* %72, %struct.snd_pcm** %74, align 8
  br label %75

75:                                               ; preds = %71, %67
  store i32 0, i32* %7, align 4
  br label %76

76:                                               ; preds = %75, %25
  %77 = load i32, i32* %7, align 4
  ret i32 %77
}

declare dso_local i32 @snd_pcm_new(%struct.TYPE_2__*, i8*, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i32, i32*) #1

declare dso_local i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
