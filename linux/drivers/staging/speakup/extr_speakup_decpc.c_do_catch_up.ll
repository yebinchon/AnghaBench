; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_speakup_decpc.c_do_catch_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_speakup_decpc.c_do_catch_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64 }
%struct.spk_synth = type { i32 (%struct.spk_synth*)* }
%struct.var_t = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@do_catch_up.last = internal global i8 0, align 1
@JIFFY = common dso_local global i32 0, align 4
@DELAY = common dso_local global i32 0, align 4
@speakup_info = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@jiffies = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@in_escape = common dso_local global i32 0, align 4
@SPACE = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [7 x i8] c",.!?;:\00", align 1
@PROCSPEECH = common dso_local global i8 0, align 1
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

27:                                               ; preds = %143, %70, %36, %1
  %28 = call i32 (...) @kthread_should_stop()
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br i1 %30, label %31, label %145

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
  br label %145

51:                                               ; preds = %44
  %52 = call signext i8 (...) @synth_buffer_peek()
  store i8 %52, i8* %3, align 1
  %53 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %54 = call i32 @set_current_state(i32 %53)
  %55 = load %struct.var_t*, %struct.var_t** %7, align 8
  %56 = getelementptr inbounds %struct.var_t, %struct.var_t* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %9, align 4
  %60 = load i64, i64* %4, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @speakup_info, i32 0, i32 0), i64 %60)
  %62 = load i8, i8* %3, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 10
  br i1 %64, label %65, label %66

65:                                               ; preds = %51
  store i8 13, i8* %3, align 1
  br label %66

66:                                               ; preds = %65, %51
  %67 = load i8, i8* %3, align 1
  %68 = call i64 @dt_sendchar(i8 signext %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @msecs_to_jiffies(i32 %71)
  %73 = call i32 @schedule_timeout(i32 %72)
  br label %27

74:                                               ; preds = %66
  %75 = load i32, i32* @TASK_RUNNING, align 4
  %76 = call i32 @set_current_state(i32 %75)
  %77 = load i64, i64* %4, align 8
  %78 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @speakup_info, i32 0, i32 0), i64 %77)
  %79 = call i32 (...) @synth_buffer_getc()
  %80 = load i64, i64* %4, align 8
  %81 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @speakup_info, i32 0, i32 0), i64 %80)
  %82 = load i8, i8* %3, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 91
  br i1 %84, label %85, label %86

85:                                               ; preds = %74
  store i32 1, i32* @in_escape, align 4
  br label %143

86:                                               ; preds = %74
  %87 = load i8, i8* %3, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 93
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  store i32 0, i32* @in_escape, align 4
  br label %142

91:                                               ; preds = %86
  %92 = load i8, i8* %3, align 1
  %93 = sext i8 %92 to i32
  %94 = load i8, i8* @SPACE, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp sle i32 %93, %95
  br i1 %96, label %97, label %141

97:                                               ; preds = %91
  %98 = load i32, i32* @in_escape, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %97
  %101 = load i8, i8* @do_catch_up.last, align 1
  %102 = call i64 @strchr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8 signext %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = load i8, i8* @PROCSPEECH, align 1
  %106 = call i64 @dt_sendchar(i8 signext %105)
  br label %107

107:                                              ; preds = %104, %100, %97
  %108 = load i32, i32* @jiffies, align 4
  %109 = load i64, i64* %5, align 8
  %110 = call i64 @time_after_eq(i32 %108, i64 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %140

112:                                              ; preds = %107
  %113 = load i32, i32* @in_escape, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %112
  %116 = load i8, i8* @PROCSPEECH, align 1
  %117 = call i64 @dt_sendchar(i8 signext %116)
  br label %118

118:                                              ; preds = %115, %112
  %119 = load i64, i64* %4, align 8
  %120 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @speakup_info, i32 0, i32 0), i64 %119)
  %121 = load %struct.var_t*, %struct.var_t** %6, align 8
  %122 = getelementptr inbounds %struct.var_t, %struct.var_t* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %8, align 4
  %126 = load %struct.var_t*, %struct.var_t** %7, align 8
  %127 = getelementptr inbounds %struct.var_t, %struct.var_t* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %9, align 4
  %131 = load i64, i64* %4, align 8
  %132 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @speakup_info, i32 0, i32 0), i64 %131)
  %133 = load i32, i32* %9, align 4
  %134 = call i32 @msecs_to_jiffies(i32 %133)
  %135 = call i32 @schedule_timeout(i32 %134)
  %136 = load i32, i32* @jiffies, align 4
  %137 = load i32, i32* %8, align 4
  %138 = add nsw i32 %136, %137
  %139 = sext i32 %138 to i64
  store i64 %139, i64* %5, align 8
  br label %140

140:                                              ; preds = %118, %107
  br label %141

141:                                              ; preds = %140, %91
  br label %142

142:                                              ; preds = %141, %90
  br label %143

143:                                              ; preds = %142, %85
  %144 = load i8, i8* %3, align 1
  store i8 %144, i8* @do_catch_up.last, align 1
  store i8 0, i8* %3, align 1
  br label %27

145:                                              ; preds = %48, %27
  %146 = load i32, i32* @in_escape, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %145
  %149 = load i8, i8* @PROCSPEECH, align 1
  %150 = call i64 @dt_sendchar(i8 signext %149)
  br label %151

151:                                              ; preds = %148, %145
  ret void
}

declare dso_local %struct.var_t* @spk_get_var(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i32 @synth_buffer_skip_nonlatin1(...) #1

declare dso_local i64 @synth_buffer_empty(...) #1

declare dso_local signext i8 @synth_buffer_peek(...) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i64 @dt_sendchar(i8 signext) #1

declare dso_local i32 @schedule_timeout(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @synth_buffer_getc(...) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i64 @time_after_eq(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
