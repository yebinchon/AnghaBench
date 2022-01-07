; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/sound/extr_sound.c_audio_rx_completion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/sound/extr_sound.c_audio_rx_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbo = type { i32, i32 }
%struct.channel = type { i32, i64 }

@.str = private unnamed_addr constant [43 x i8] c"sound_rx_completion(), invalid channel %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbo*)* @audio_rx_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audio_rx_completion(%struct.mbo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mbo*, align 8
  %4 = alloca %struct.channel*, align 8
  %5 = alloca i32, align 4
  store %struct.mbo* %0, %struct.mbo** %3, align 8
  %6 = load %struct.mbo*, %struct.mbo** %3, align 8
  %7 = getelementptr inbounds %struct.mbo, %struct.mbo* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.mbo*, %struct.mbo** %3, align 8
  %10 = getelementptr inbounds %struct.mbo, %struct.mbo* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.channel* @get_channel(i32 %8, i32 %11)
  store %struct.channel* %12, %struct.channel** %4, align 8
  store i32 0, i32* %5, align 4
  %13 = load %struct.channel*, %struct.channel** %4, align 8
  %14 = icmp ne %struct.channel* %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %1
  %16 = load %struct.mbo*, %struct.mbo** %3, align 8
  %17 = getelementptr inbounds %struct.mbo, %struct.mbo* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %42

22:                                               ; preds = %1
  %23 = load %struct.channel*, %struct.channel** %4, align 8
  %24 = getelementptr inbounds %struct.channel, %struct.channel* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.channel*, %struct.channel** %4, align 8
  %29 = load %struct.mbo*, %struct.mbo** %3, align 8
  %30 = call i32 @copy_data(%struct.channel* %28, %struct.mbo* %29)
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %27, %22
  %32 = load %struct.mbo*, %struct.mbo** %3, align 8
  %33 = call i32 @most_put_mbo(%struct.mbo* %32)
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.channel*, %struct.channel** %4, align 8
  %38 = getelementptr inbounds %struct.channel, %struct.channel* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @snd_pcm_period_elapsed(i32 %39)
  br label %41

41:                                               ; preds = %36, %31
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %15
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.channel* @get_channel(i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @copy_data(%struct.channel*, %struct.mbo*) #1

declare dso_local i32 @most_put_mbo(%struct.mbo*) #1

declare dso_local i32 @snd_pcm_period_elapsed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
