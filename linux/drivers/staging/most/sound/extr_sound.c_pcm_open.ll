; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/sound/extr_sound.c_pcm_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/sound/extr_sound.c_pcm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime*, %struct.channel* }
%struct.snd_pcm_runtime = type { i32 }
%struct.channel = type { i32, i32, i32, i32, %struct.snd_pcm_substream*, %struct.most_channel_config* }
%struct.most_channel_config = type { i64 }

@MOST_CH_TX = common dso_local global i64 0, align 8
@playback_thread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"most_audio_playback\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Couldn't start thread\0A\00", align 1
@comp = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"most_start_channel() failed!\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @pcm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.channel*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca %struct.most_channel_config*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %7, i32 0, i32 1
  %9 = load %struct.channel*, %struct.channel** %8, align 8
  store %struct.channel* %9, %struct.channel** %4, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 0
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %5, align 8
  %13 = load %struct.channel*, %struct.channel** %4, align 8
  %14 = getelementptr inbounds %struct.channel, %struct.channel* %13, i32 0, i32 5
  %15 = load %struct.most_channel_config*, %struct.most_channel_config** %14, align 8
  store %struct.most_channel_config* %15, %struct.most_channel_config** %6, align 8
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %17 = load %struct.channel*, %struct.channel** %4, align 8
  %18 = getelementptr inbounds %struct.channel, %struct.channel* %17, i32 0, i32 4
  store %struct.snd_pcm_substream* %16, %struct.snd_pcm_substream** %18, align 8
  %19 = load %struct.most_channel_config*, %struct.most_channel_config** %6, align 8
  %20 = getelementptr inbounds %struct.most_channel_config, %struct.most_channel_config* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MOST_CH_TX, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %1
  %25 = load i32, i32* @playback_thread, align 4
  %26 = load %struct.channel*, %struct.channel** %4, align 8
  %27 = call i32 @kthread_run(i32 %25, %struct.channel* %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.channel*, %struct.channel** %4, align 8
  %29 = getelementptr inbounds %struct.channel, %struct.channel* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.channel*, %struct.channel** %4, align 8
  %31 = getelementptr inbounds %struct.channel, %struct.channel* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @IS_ERR(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %24
  %36 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.channel*, %struct.channel** %4, align 8
  %38 = getelementptr inbounds %struct.channel, %struct.channel* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @PTR_ERR(i32 %39)
  store i32 %40, i32* %2, align 4
  br label %72

41:                                               ; preds = %24
  br label %42

42:                                               ; preds = %41, %1
  %43 = load %struct.channel*, %struct.channel** %4, align 8
  %44 = getelementptr inbounds %struct.channel, %struct.channel* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.channel*, %struct.channel** %4, align 8
  %47 = getelementptr inbounds %struct.channel, %struct.channel* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @most_start_channel(i32 %45, i32 %48, i32* @comp)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %42
  %52 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %53 = load %struct.most_channel_config*, %struct.most_channel_config** %6, align 8
  %54 = getelementptr inbounds %struct.most_channel_config, %struct.most_channel_config* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @MOST_CH_TX, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %51
  %59 = load %struct.channel*, %struct.channel** %4, align 8
  %60 = getelementptr inbounds %struct.channel, %struct.channel* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @kthread_stop(i32 %61)
  br label %63

63:                                               ; preds = %58, %51
  %64 = load i32, i32* @EBUSY, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %72

66:                                               ; preds = %42
  %67 = load %struct.channel*, %struct.channel** %4, align 8
  %68 = getelementptr inbounds %struct.channel, %struct.channel* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %71 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %66, %63, %35
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @kthread_run(i32, %struct.channel*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i64 @most_start_channel(i32, i32, i32*) #1

declare dso_local i32 @kthread_stop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
