; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-audio/extr_bcm2835-ctl.c_snd_bcm2835_ctl_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-audio/extr_bcm2835-ctl.c_snd_bcm2835_ctl_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i64 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.bcm2835_chip = type { i32, i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@PCM_PLAYBACK_VOLUME = common dso_local global i64 0, align 8
@PCM_PLAYBACK_MUTE = common dso_local global i64 0, align 8
@PCM_PLAYBACK_DEVICE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to set ALSA controls..\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_bcm2835_ctl_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_bcm2835_ctl_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_value*, align 8
  %6 = alloca %struct.bcm2835_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %5, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %11 = call %struct.bcm2835_chip* @snd_kcontrol_chip(%struct.snd_kcontrol* %10)
  store %struct.bcm2835_chip* %11, %struct.bcm2835_chip** %6, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %13 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PCM_PLAYBACK_VOLUME, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.bcm2835_chip*, %struct.bcm2835_chip** %6, align 8
  %19 = getelementptr inbounds %struct.bcm2835_chip, %struct.bcm2835_chip* %18, i32 0, i32 0
  store i32* %19, i32** %8, align 8
  br label %43

20:                                               ; preds = %2
  %21 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %22 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PCM_PLAYBACK_MUTE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load %struct.bcm2835_chip*, %struct.bcm2835_chip** %6, align 8
  %28 = getelementptr inbounds %struct.bcm2835_chip, %struct.bcm2835_chip* %27, i32 0, i32 1
  store i32* %28, i32** %8, align 8
  br label %42

29:                                               ; preds = %20
  %30 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %31 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PCM_PLAYBACK_DEVICE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load %struct.bcm2835_chip*, %struct.bcm2835_chip** %6, align 8
  %37 = getelementptr inbounds %struct.bcm2835_chip, %struct.bcm2835_chip* %36, i32 0, i32 2
  store i32* %37, i32** %8, align 8
  br label %41

38:                                               ; preds = %29
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %77

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %41, %26
  br label %43

43:                                               ; preds = %42, %17
  %44 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %5, align 8
  %45 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %7, align 4
  %51 = load %struct.bcm2835_chip*, %struct.bcm2835_chip** %6, align 8
  %52 = getelementptr inbounds %struct.bcm2835_chip, %struct.bcm2835_chip* %51, i32 0, i32 3
  %53 = call i32 @mutex_lock(i32* %52)
  %54 = load i32, i32* %7, align 4
  %55 = load i32*, i32** %8, align 8
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %54, %56
  br i1 %57, label %58, label %72

58:                                               ; preds = %43
  %59 = load i32, i32* %7, align 4
  %60 = load i32*, i32** %8, align 8
  store i32 %59, i32* %60, align 4
  store i32 1, i32* %9, align 4
  %61 = load %struct.bcm2835_chip*, %struct.bcm2835_chip** %6, align 8
  %62 = call i64 @bcm2835_audio_set_chip_ctls(%struct.bcm2835_chip* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %58
  %65 = load %struct.bcm2835_chip*, %struct.bcm2835_chip** %6, align 8
  %66 = getelementptr inbounds %struct.bcm2835_chip, %struct.bcm2835_chip* %65, i32 0, i32 4
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @dev_err(i32 %69, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %71

71:                                               ; preds = %64, %58
  br label %72

72:                                               ; preds = %71, %43
  %73 = load %struct.bcm2835_chip*, %struct.bcm2835_chip** %6, align 8
  %74 = getelementptr inbounds %struct.bcm2835_chip, %struct.bcm2835_chip* %73, i32 0, i32 3
  %75 = call i32 @mutex_unlock(i32* %74)
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %72, %38
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.bcm2835_chip* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @bcm2835_audio_set_chip_ctls(%struct.bcm2835_chip*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
