; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/sound/extr_sound.c_playback_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/sound/extr_sound.c_playback_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.channel = type { i32, i64, i32, i32, i32 }
%struct.mbo = type { i32, i32 }

@comp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @playback_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @playback_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.channel*, align 8
  %4 = alloca %struct.mbo*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.channel*
  store %struct.channel* %7, %struct.channel** %3, align 8
  br label %8

8:                                                ; preds = %68, %40, %1
  %9 = call i64 (...) @kthread_should_stop()
  %10 = icmp ne i64 %9, 0
  %11 = xor i1 %10, true
  br i1 %11, label %12, label %69

12:                                               ; preds = %8
  store %struct.mbo* null, %struct.mbo** %4, align 8
  store i32 0, i32* %5, align 4
  %13 = load %struct.channel*, %struct.channel** %3, align 8
  %14 = getelementptr inbounds %struct.channel, %struct.channel* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = call i64 (...) @kthread_should_stop()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %34, label %18

18:                                               ; preds = %12
  %19 = load %struct.channel*, %struct.channel** %3, align 8
  %20 = getelementptr inbounds %struct.channel, %struct.channel* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = load %struct.channel*, %struct.channel** %3, align 8
  %25 = getelementptr inbounds %struct.channel, %struct.channel* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.channel*, %struct.channel** %3, align 8
  %28 = getelementptr inbounds %struct.channel, %struct.channel* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call %struct.mbo* @most_get_mbo(i32 %26, i32 %29, i32* @comp)
  store %struct.mbo* %30, %struct.mbo** %4, align 8
  %31 = icmp ne %struct.mbo* %30, null
  br label %32

32:                                               ; preds = %23, %18
  %33 = phi i1 [ false, %18 ], [ %31, %23 ]
  br label %34

34:                                               ; preds = %32, %12
  %35 = phi i1 [ true, %12 ], [ %33, %32 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @wait_event_interruptible(i32 %15, i32 %36)
  %38 = load %struct.mbo*, %struct.mbo** %4, align 8
  %39 = icmp ne %struct.mbo* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  br label %8

41:                                               ; preds = %34
  %42 = load %struct.channel*, %struct.channel** %3, align 8
  %43 = getelementptr inbounds %struct.channel, %struct.channel* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load %struct.channel*, %struct.channel** %3, align 8
  %48 = load %struct.mbo*, %struct.mbo** %4, align 8
  %49 = call i32 @copy_data(%struct.channel* %47, %struct.mbo* %48)
  store i32 %49, i32* %5, align 4
  br label %58

50:                                               ; preds = %41
  %51 = load %struct.mbo*, %struct.mbo** %4, align 8
  %52 = getelementptr inbounds %struct.mbo, %struct.mbo* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.mbo*, %struct.mbo** %4, align 8
  %55 = getelementptr inbounds %struct.mbo, %struct.mbo* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @memset(i32 %53, i32 0, i32 %56)
  br label %58

58:                                               ; preds = %50, %46
  %59 = load %struct.mbo*, %struct.mbo** %4, align 8
  %60 = call i32 @most_submit_mbo(%struct.mbo* %59)
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load %struct.channel*, %struct.channel** %3, align 8
  %65 = getelementptr inbounds %struct.channel, %struct.channel* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @snd_pcm_period_elapsed(i32 %66)
  br label %68

68:                                               ; preds = %63, %58
  br label %8

69:                                               ; preds = %8
  ret i32 0
}

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local %struct.mbo* @most_get_mbo(i32, i32, i32*) #1

declare dso_local i32 @copy_data(%struct.channel*, %struct.mbo*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @most_submit_mbo(%struct.mbo*) #1

declare dso_local i32 @snd_pcm_period_elapsed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
