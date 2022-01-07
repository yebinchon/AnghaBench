; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_thread.c_speakup_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_thread.c_speakup_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }
%struct.bleep = type { i64, i64, i64 }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*)*, i64 }

@spk_mutex = common dso_local global i32 0, align 4
@wait = common dso_local global i32 0, align 4
@speakup_info = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@spk_unprocessed_sound = common dso_local global %struct.bleep zeroinitializer, align 8
@speakup_event = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@synth = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @speakup_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bleep, align 8
  store i8* %0, i8** %2, align 8
  %6 = getelementptr inbounds %struct.bleep, %struct.bleep* %5, i32 0, i32 2
  store i64 0, i64* %6, align 8
  %7 = getelementptr inbounds %struct.bleep, %struct.bleep* %5, i32 0, i32 1
  store i64 0, i64* %7, align 8
  %8 = getelementptr inbounds %struct.bleep, %struct.bleep* %5, i32 0, i32 0
  store i64 0, i64* %8, align 8
  %9 = call i32 @mutex_lock(i32* @spk_mutex)
  br label %10

10:                                               ; preds = %1, %95
  %11 = load i32, i32* @wait, align 4
  %12 = call i32 @DEFINE_WAIT(i32 %11)
  br label %13

13:                                               ; preds = %10, %57
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @speakup_info, i32 0, i32 0), i64 %14)
  %16 = bitcast %struct.bleep* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 bitcast (%struct.bleep* @spk_unprocessed_sound to i8*), i64 24, i1 false)
  store i64 0, i64* getelementptr inbounds (%struct.bleep, %struct.bleep* @spk_unprocessed_sound, i32 0, i32 2), align 8
  %17 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %18 = call i32 @prepare_to_wait(i32* @speakup_event, i32* @wait, i32 %17)
  %19 = call i64 (...) @kthread_should_stop()
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %49, label %21

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.bleep, %struct.bleep* %5, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %49, label %25

25:                                               ; preds = %21
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @synth, align 8
  %27 = icmp ne %struct.TYPE_4__* %26, null
  br i1 %27, label %28, label %47

28:                                               ; preds = %25
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @synth, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %30, align 8
  %32 = icmp ne i32 (%struct.TYPE_4__*)* %31, null
  br i1 %32, label %33, label %47

33:                                               ; preds = %28
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @synth, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %33
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @speakup_info, i32 0, i32 1), align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = call i32 (...) @synth_buffer_empty()
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  br label %45

45:                                               ; preds = %41, %38
  %46 = phi i1 [ true, %38 ], [ %44, %41 ]
  br label %47

47:                                               ; preds = %45, %33, %28, %25
  %48 = phi i1 [ false, %33 ], [ false, %28 ], [ false, %25 ], [ %46, %45 ]
  br label %49

49:                                               ; preds = %47, %21, %13
  %50 = phi i1 [ true, %21 ], [ true, %13 ], [ %48, %47 ]
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %4, align 4
  %52 = load i64, i64* %3, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @speakup_info, i32 0, i32 0), i64 %52)
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %61

57:                                               ; preds = %49
  %58 = call i32 @mutex_unlock(i32* @spk_mutex)
  %59 = call i32 (...) @schedule()
  %60 = call i32 @mutex_lock(i32* @spk_mutex)
  br label %13

61:                                               ; preds = %56
  %62 = call i32 @finish_wait(i32* @speakup_event, i32* @wait)
  %63 = call i64 (...) @kthread_should_stop()
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %97

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.bleep, %struct.bleep* %5, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.bleep, %struct.bleep* %5, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.bleep, %struct.bleep* %5, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @kd_mksound(i64 %72, i64 %74)
  br label %76

76:                                               ; preds = %70, %66
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** @synth, align 8
  %78 = icmp ne %struct.TYPE_4__* %77, null
  br i1 %78, label %79, label %95

79:                                               ; preds = %76
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** @synth, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %81, align 8
  %83 = icmp ne i32 (%struct.TYPE_4__*)* %82, null
  br i1 %83, label %84, label %95

84:                                               ; preds = %79
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** @synth, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %84
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** @synth, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %91, align 8
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** @synth, align 8
  %94 = call i32 %92(%struct.TYPE_4__* %93)
  br label %95

95:                                               ; preds = %89, %84, %79, %76
  %96 = call i32 (...) @speakup_start_ttys()
  br label %10

97:                                               ; preds = %65
  %98 = call i32 @mutex_unlock(i32* @spk_mutex)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i32 @synth_buffer_empty(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

declare dso_local i32 @kd_mksound(i64, i64) #1

declare dso_local i32 @speakup_start_ttys(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
