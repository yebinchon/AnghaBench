; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-audio/extr_bcm2835-ctl.c_snd_bcm2835_ctl_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-audio/extr_bcm2835-ctl.c_snd_bcm2835_ctl_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_info = type { i32, %struct.TYPE_4__, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }

@PCM_PLAYBACK_VOLUME = common dso_local global i64 0, align 8
@SNDRV_CTL_ELEM_TYPE_INTEGER = common dso_local global i8* null, align 8
@CTRL_VOL_MIN = common dso_local global i64 0, align 8
@CTRL_VOL_MAX = common dso_local global i32 0, align 4
@PCM_PLAYBACK_MUTE = common dso_local global i64 0, align 8
@SNDRV_CTL_ELEM_TYPE_BOOLEAN = common dso_local global i8* null, align 8
@PCM_PLAYBACK_DEVICE = common dso_local global i64 0, align 8
@AUDIO_DEST_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_info*)* @snd_bcm2835_ctl_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_bcm2835_ctl_info(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_info* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_info*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_info* %1, %struct.snd_ctl_elem_info** %4, align 8
  %5 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %6 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @PCM_PLAYBACK_VOLUME, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %26

10:                                               ; preds = %2
  %11 = load i8*, i8** @SNDRV_CTL_ELEM_TYPE_INTEGER, align 8
  %12 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %13 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %12, i32 0, i32 2
  store i8* %11, i8** %13, align 8
  %14 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %15 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = load i64, i64* @CTRL_VOL_MIN, align 8
  %17 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %18 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  store i64 %16, i64* %20, align 8
  %21 = load i32, i32* @CTRL_VOL_MAX, align 4
  %22 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %23 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i32 %21, i32* %25, align 8
  br label %70

26:                                               ; preds = %2
  %27 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %28 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PCM_PLAYBACK_MUTE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %26
  %33 = load i8*, i8** @SNDRV_CTL_ELEM_TYPE_BOOLEAN, align 8
  %34 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %35 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %34, i32 0, i32 2
  store i8* %33, i8** %35, align 8
  %36 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %37 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %39 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %43 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  br label %69

46:                                               ; preds = %26
  %47 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %48 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @PCM_PLAYBACK_DEVICE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %68

52:                                               ; preds = %46
  %53 = load i8*, i8** @SNDRV_CTL_ELEM_TYPE_INTEGER, align 8
  %54 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %55 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %54, i32 0, i32 2
  store i8* %53, i8** %55, align 8
  %56 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %57 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  %58 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %59 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  %62 = load i32, i32* @AUDIO_DEST_MAX, align 4
  %63 = sub nsw i32 %62, 1
  %64 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %4, align 8
  %65 = getelementptr inbounds %struct.snd_ctl_elem_info, %struct.snd_ctl_elem_info* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store i32 %63, i32* %67, align 8
  br label %68

68:                                               ; preds = %52, %46
  br label %69

69:                                               ; preds = %68, %32
  br label %70

70:                                               ; preds = %69, %10
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
