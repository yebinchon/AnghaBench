; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/sound/extr_sound.c_pcm_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/sound/extr_sound.c_pcm_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.channel* }
%struct.channel = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@MOST_CH_TX = common dso_local global i64 0, align 8
@comp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @pcm_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm_close(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.channel*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %4 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %5 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %4, i32 0, i32 0
  %6 = load %struct.channel*, %struct.channel** %5, align 8
  store %struct.channel* %6, %struct.channel** %3, align 8
  %7 = load %struct.channel*, %struct.channel** %3, align 8
  %8 = getelementptr inbounds %struct.channel, %struct.channel* %7, i32 0, i32 3
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @MOST_CH_TX, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.channel*, %struct.channel** %3, align 8
  %16 = getelementptr inbounds %struct.channel, %struct.channel* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @kthread_stop(i32 %17)
  br label %19

19:                                               ; preds = %14, %1
  %20 = load %struct.channel*, %struct.channel** %3, align 8
  %21 = getelementptr inbounds %struct.channel, %struct.channel* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.channel*, %struct.channel** %3, align 8
  %24 = getelementptr inbounds %struct.channel, %struct.channel* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @most_stop_channel(i32 %22, i32 %25, i32* @comp)
  ret i32 0
}

declare dso_local i32 @kthread_stop(i32) #1

declare dso_local i32 @most_stop_channel(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
