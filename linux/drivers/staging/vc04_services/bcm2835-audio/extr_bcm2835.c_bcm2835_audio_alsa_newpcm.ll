; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-audio/extr_bcm2835.c_bcm2835_audio_alsa_newpcm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-audio/extr_bcm2835.c_bcm2835_audio_alsa_newpcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_chip = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"bcm2835 ALSA\00", align 1
@AUDIO_DEST_AUTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"bcm2835 IEC958/HDMI\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm2835_chip*, i8*, i32, i32)* @bcm2835_audio_alsa_newpcm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_audio_alsa_newpcm(%struct.bcm2835_chip* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bcm2835_chip*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bcm2835_chip* %0, %struct.bcm2835_chip** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.bcm2835_chip*, %struct.bcm2835_chip** %6, align 8
  %12 = load i32, i32* @AUDIO_DEST_AUTO, align 4
  %13 = load i32, i32* %9, align 4
  %14 = sub nsw i32 %13, 1
  %15 = call i32 @snd_bcm2835_new_pcm(%struct.bcm2835_chip* %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 0, i32 %12, i32 %14, i32 0)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %5, align 4
  br label %28

20:                                               ; preds = %4
  %21 = load %struct.bcm2835_chip*, %struct.bcm2835_chip** %6, align 8
  %22 = call i32 @snd_bcm2835_new_pcm(%struct.bcm2835_chip* %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 1, i32 0, i32 1, i32 1)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %5, align 4
  br label %28

27:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %27, %25, %18
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local i32 @snd_bcm2835_new_pcm(%struct.bcm2835_chip*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
