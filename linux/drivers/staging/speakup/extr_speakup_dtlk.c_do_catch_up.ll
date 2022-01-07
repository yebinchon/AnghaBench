; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_speakup_dtlk.c_do_catch_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_speakup_dtlk.c_do_catch_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64 }
%struct.spk_synth = type { i32 (%struct.spk_synth*)* }
%struct.var_t = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@JIFFY = common dso_local global i32 0, align 4
@DELAY = common dso_local global i32 0, align 4
@speakup_info = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@jiffies = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@PROCSPEECH = common dso_local global i8 0, align 1
@SPACE = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spk_synth*)* @do_catch_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_catch_up(%struct.spk_synth* %0) #0 {
  %2 = alloca %struct.spk_synth*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.var_t*, align 8
  %7 = alloca %struct.var_t*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.spk_synth* %0, %struct.spk_synth** %2, align 8
  %10 = load i32, i32* @JIFFY, align 4
  %11 = call %struct.var_t* @spk_get_var(i32 %10)
  store %struct.var_t* %11, %struct.var_t** %6, align 8
  %12 = load i32, i32* @DELAY, align 4
  %13 = call %struct.var_t* @spk_get_var(i32 %12)
  store %struct.var_t* %13, %struct.var_t** %7, align 8
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @speakup_info, i32 0, i32 0), i64 %14)
  %16 = load %struct.var_t*, %struct.var_t** %6, align 8
  %17 = getelementptr inbounds %struct.var_t, %struct.var_t* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @speakup_info, i32 0, i32 0), i64 %21)
  %23 = load i32, i32* @jiffies, align 4
  %24 = load i32, i32* %8, align 4
  %25 = add nsw i32 %23, %24
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %5, align 8
  br label %27

27:                                               ; preds = %117, %63, %36, %1
  %28 = call i32 (...) @kthread_should_stop()
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br i1 %30, label %31, label %118

31:                                               ; preds = %27
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @speakup_info, i32 0, i32 0), i64 %32)
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @speakup_info, i32 0, i32 1), align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @speakup_info, i32 0, i32 1), align 8
  %37 = load i64, i64* %4, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @speakup_info, i32 0, i32 0), i64 %37)
  %39 = load %struct.spk_synth*, %struct.spk_synth** %2, align 8
  %40 = getelementptr inbounds %struct.spk_synth, %struct.spk_synth* %39, i32 0, i32 0
  %41 = load i32 (%struct.spk_synth*)*, i32 (%struct.spk_synth*)** %40, align 8
  %42 = load %struct.spk_synth*, %struct.spk_synth** %2, align 8
  %43 = call i32 %41(%struct.spk_synth* %42)
  br label %27

44:                                               ; preds = %31
  %45 = call i32 (...) @synth_buffer_skip_nonlatin1()
  %46 = call i64 (...) @synth_buffer_empty()
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i64, i64* %4, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @speakup_info, i32 0, i32 0), i64 %49)
  br label %118

51:                                               ; preds = %44
  %52 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %53 = call i32 @set_current_state(i32 %52)
  %54 = load %struct.var_t*, %struct.var_t** %7, align 8
  %55 = getelementptr inbounds %struct.var_t, %struct.var_t* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %9, align 4
  %59 = load i64, i64* %4, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @speakup_info, i32 0, i32 0), i64 %59)
  %61 = call i64 (...) @synth_full()
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %51
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @msecs_to_jiffies(i32 %64)
  %66 = call i32 @schedule_timeout(i32 %65)
  br label %27

67:                                               ; preds = %51
  %68 = load i32, i32* @TASK_RUNNING, align 4
  %69 = call i32 @set_current_state(i32 %68)
  %70 = load i64, i64* %4, align 8
  %71 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @speakup_info, i32 0, i32 0), i64 %70)
  %72 = call signext i8 (...) @synth_buffer_getc()
  store i8 %72, i8* %3, align 1
  %73 = load i64, i64* %4, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @speakup_info, i32 0, i32 0), i64 %73)
  %75 = load i8, i8* %3, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 10
  br i1 %77, label %78, label %80

78:                                               ; preds = %67
  %79 = load i8, i8* @PROCSPEECH, align 1
  store i8 %79, i8* %3, align 1
  br label %80

80:                                               ; preds = %78, %67
  %81 = load i8, i8* %3, align 1
  %82 = call i32 @spk_out(i8 signext %81)
  %83 = load i32, i32* @jiffies, align 4
  %84 = load i64, i64* %5, align 8
  %85 = call i64 @time_after_eq(i32 %83, i64 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %117

87:                                               ; preds = %80
  %88 = load i8, i8* %3, align 1
  %89 = sext i8 %88 to i32
  %90 = load i8, i8* @SPACE, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %89, %91
  br i1 %92, label %93, label %117

93:                                               ; preds = %87
  %94 = load i8, i8* @PROCSPEECH, align 1
  %95 = call i32 @spk_out(i8 signext %94)
  %96 = load i64, i64* %4, align 8
  %97 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @speakup_info, i32 0, i32 0), i64 %96)
  %98 = load %struct.var_t*, %struct.var_t** %7, align 8
  %99 = getelementptr inbounds %struct.var_t, %struct.var_t* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %9, align 4
  %103 = load %struct.var_t*, %struct.var_t** %6, align 8
  %104 = getelementptr inbounds %struct.var_t, %struct.var_t* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %8, align 4
  %108 = load i64, i64* %4, align 8
  %109 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @speakup_info, i32 0, i32 0), i64 %108)
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @msecs_to_jiffies(i32 %110)
  %112 = call i32 @schedule_timeout(i32 %111)
  %113 = load i32, i32* @jiffies, align 4
  %114 = load i32, i32* %8, align 4
  %115 = add nsw i32 %113, %114
  %116 = sext i32 %115 to i64
  store i64 %116, i64* %5, align 8
  br label %117

117:                                              ; preds = %93, %87, %80
  br label %27

118:                                              ; preds = %48, %27
  %119 = load i8, i8* @PROCSPEECH, align 1
  %120 = call i32 @spk_out(i8 signext %119)
  ret void
}

declare dso_local %struct.var_t* @spk_get_var(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i32 @synth_buffer_skip_nonlatin1(...) #1

declare dso_local i64 @synth_buffer_empty(...) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i64 @synth_full(...) #1

declare dso_local i32 @schedule_timeout(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local signext i8 @synth_buffer_getc(...) #1

declare dso_local i32 @spk_out(i8 signext) #1

declare dso_local i64 @time_after_eq(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
