; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_synth.c__spk_do_catch_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_synth.c__spk_do_catch_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64 }
%struct.spk_synth = type { i8, %struct.TYPE_7__*, i32 (%struct.spk_synth*)* }
%struct.TYPE_7__ = type { i32 (%struct.spk_synth*, i8)*, i32 (%struct.spk_synth*, i8)* }
%struct.var_t = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@JIFFY = common dso_local global i32 0, align 4
@FULL = common dso_local global i32 0, align 4
@DELAY = common dso_local global i32 0, align 4
@speakup_info = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@jiffies = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@SPACE = common dso_local global i8 0, align 1
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spk_synth*, i32)* @_spk_do_catch_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_spk_do_catch_up(%struct.spk_synth* %0, i32 %1) #0 {
  %3 = alloca %struct.spk_synth*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.var_t*, align 8
  %9 = alloca %struct.var_t*, align 8
  %10 = alloca %struct.var_t*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.spk_synth* %0, %struct.spk_synth** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load i32, i32* @JIFFY, align 4
  %16 = call %struct.var_t* @spk_get_var(i32 %15)
  store %struct.var_t* %16, %struct.var_t** %10, align 8
  %17 = load i32, i32* @FULL, align 4
  %18 = call %struct.var_t* @spk_get_var(i32 %17)
  store %struct.var_t* %18, %struct.var_t** %9, align 8
  %19 = load i32, i32* @DELAY, align 4
  %20 = call %struct.var_t* @spk_get_var(i32 %19)
  store %struct.var_t* %20, %struct.var_t** %8, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @speakup_info, i32 0, i32 0), i64 %21)
  %23 = load %struct.var_t*, %struct.var_t** %10, align 8
  %24 = getelementptr inbounds %struct.var_t, %struct.var_t* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %11, align 4
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @speakup_info, i32 0, i32 0), i64 %28)
  %30 = load i32, i32* @jiffies, align 4
  %31 = load i32, i32* %11, align 4
  %32 = add nsw i32 %30, %31
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %7, align 8
  br label %34

34:                                               ; preds = %163, %104, %43, %2
  %35 = call i32 (...) @kthread_should_stop()
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  br i1 %37, label %38, label %171

38:                                               ; preds = %34
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @speakup_info, i32 0, i32 0), i64 %39)
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @speakup_info, i32 0, i32 1), align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @speakup_info, i32 0, i32 1), align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @speakup_info, i32 0, i32 0), i64 %44)
  %46 = load %struct.spk_synth*, %struct.spk_synth** %3, align 8
  %47 = getelementptr inbounds %struct.spk_synth, %struct.spk_synth* %46, i32 0, i32 2
  %48 = load i32 (%struct.spk_synth*)*, i32 (%struct.spk_synth*)** %47, align 8
  %49 = load %struct.spk_synth*, %struct.spk_synth** %3, align 8
  %50 = call i32 %48(%struct.spk_synth* %49)
  br label %34

51:                                               ; preds = %38
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  %55 = call i32 (...) @synth_buffer_skip_nonlatin1()
  br label %56

56:                                               ; preds = %54, %51
  %57 = call i64 (...) @synth_buffer_empty()
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i64, i64* %6, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @speakup_info, i32 0, i32 0), i64 %60)
  br label %171

62:                                               ; preds = %56
  %63 = call signext i8 (...) @synth_buffer_peek()
  store i8 %63, i8* %5, align 1
  %64 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %65 = call i32 @set_current_state(i32 %64)
  %66 = load %struct.var_t*, %struct.var_t** %9, align 8
  %67 = getelementptr inbounds %struct.var_t, %struct.var_t* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %13, align 4
  %71 = load i64, i64* %6, align 8
  %72 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @speakup_info, i32 0, i32 0), i64 %71)
  %73 = load i8, i8* %5, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 10
  br i1 %75, label %76, label %80

76:                                               ; preds = %62
  %77 = load %struct.spk_synth*, %struct.spk_synth** %3, align 8
  %78 = getelementptr inbounds %struct.spk_synth, %struct.spk_synth* %77, i32 0, i32 0
  %79 = load i8, i8* %78, align 8
  store i8 %79, i8* %5, align 1
  br label %80

80:                                               ; preds = %76, %62
  %81 = load i32, i32* %4, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %80
  %84 = load %struct.spk_synth*, %struct.spk_synth** %3, align 8
  %85 = getelementptr inbounds %struct.spk_synth, %struct.spk_synth* %84, i32 0, i32 1
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i32 (%struct.spk_synth*, i8)*, i32 (%struct.spk_synth*, i8)** %87, align 8
  %89 = load %struct.spk_synth*, %struct.spk_synth** %3, align 8
  %90 = load i8, i8* %5, align 1
  %91 = call i32 %88(%struct.spk_synth* %89, i8 signext %90)
  store i32 %91, i32* %14, align 4
  br label %101

92:                                               ; preds = %80
  %93 = load %struct.spk_synth*, %struct.spk_synth** %3, align 8
  %94 = getelementptr inbounds %struct.spk_synth, %struct.spk_synth* %93, i32 0, i32 1
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = load i32 (%struct.spk_synth*, i8)*, i32 (%struct.spk_synth*, i8)** %96, align 8
  %98 = load %struct.spk_synth*, %struct.spk_synth** %3, align 8
  %99 = load i8, i8* %5, align 1
  %100 = call i32 %97(%struct.spk_synth* %98, i8 signext %99)
  store i32 %100, i32* %14, align 4
  br label %101

101:                                              ; preds = %92, %83
  %102 = load i32, i32* %14, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %101
  %105 = load i32, i32* %13, align 4
  %106 = call i32 @msecs_to_jiffies(i32 %105)
  %107 = call i32 @schedule_timeout(i32 %106)
  br label %34

108:                                              ; preds = %101
  %109 = load i32, i32* @jiffies, align 4
  %110 = load i64, i64* %7, align 8
  %111 = call i64 @time_after_eq(i32 %109, i64 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %163

113:                                              ; preds = %108
  %114 = load i8, i8* %5, align 1
  %115 = sext i8 %114 to i32
  %116 = load i8, i8* @SPACE, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %115, %117
  br i1 %118, label %119, label %163

119:                                              ; preds = %113
  %120 = load i64, i64* %6, align 8
  %121 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @speakup_info, i32 0, i32 0), i64 %120)
  %122 = load %struct.var_t*, %struct.var_t** %10, align 8
  %123 = getelementptr inbounds %struct.var_t, %struct.var_t* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %11, align 4
  %127 = load %struct.var_t*, %struct.var_t** %8, align 8
  %128 = getelementptr inbounds %struct.var_t, %struct.var_t* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %12, align 4
  %132 = load %struct.var_t*, %struct.var_t** %9, align 8
  %133 = getelementptr inbounds %struct.var_t, %struct.var_t* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  store i32 %136, i32* %13, align 4
  %137 = load i64, i64* %6, align 8
  %138 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @speakup_info, i32 0, i32 0), i64 %137)
  %139 = load %struct.spk_synth*, %struct.spk_synth** %3, align 8
  %140 = getelementptr inbounds %struct.spk_synth, %struct.spk_synth* %139, i32 0, i32 1
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 1
  %143 = load i32 (%struct.spk_synth*, i8)*, i32 (%struct.spk_synth*, i8)** %142, align 8
  %144 = load %struct.spk_synth*, %struct.spk_synth** %3, align 8
  %145 = load %struct.spk_synth*, %struct.spk_synth** %3, align 8
  %146 = getelementptr inbounds %struct.spk_synth, %struct.spk_synth* %145, i32 0, i32 0
  %147 = load i8, i8* %146, align 8
  %148 = call i32 %143(%struct.spk_synth* %144, i8 signext %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %119
  %151 = load i32, i32* %12, align 4
  %152 = call i32 @msecs_to_jiffies(i32 %151)
  %153 = call i32 @schedule_timeout(i32 %152)
  br label %158

154:                                              ; preds = %119
  %155 = load i32, i32* %13, align 4
  %156 = call i32 @msecs_to_jiffies(i32 %155)
  %157 = call i32 @schedule_timeout(i32 %156)
  br label %158

158:                                              ; preds = %154, %150
  %159 = load i32, i32* @jiffies, align 4
  %160 = load i32, i32* %11, align 4
  %161 = add nsw i32 %159, %160
  %162 = sext i32 %161 to i64
  store i64 %162, i64* %7, align 8
  br label %163

163:                                              ; preds = %158, %113, %108
  %164 = load i32, i32* @TASK_RUNNING, align 4
  %165 = call i32 @set_current_state(i32 %164)
  %166 = load i64, i64* %6, align 8
  %167 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @speakup_info, i32 0, i32 0), i64 %166)
  %168 = call i32 (...) @synth_buffer_getc()
  %169 = load i64, i64* %6, align 8
  %170 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @speakup_info, i32 0, i32 0), i64 %169)
  br label %34

171:                                              ; preds = %59, %34
  %172 = load %struct.spk_synth*, %struct.spk_synth** %3, align 8
  %173 = getelementptr inbounds %struct.spk_synth, %struct.spk_synth* %172, i32 0, i32 1
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 1
  %176 = load i32 (%struct.spk_synth*, i8)*, i32 (%struct.spk_synth*, i8)** %175, align 8
  %177 = load %struct.spk_synth*, %struct.spk_synth** %3, align 8
  %178 = load %struct.spk_synth*, %struct.spk_synth** %3, align 8
  %179 = getelementptr inbounds %struct.spk_synth, %struct.spk_synth* %178, i32 0, i32 0
  %180 = load i8, i8* %179, align 8
  %181 = call i32 %176(%struct.spk_synth* %177, i8 signext %180)
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

declare dso_local i32 @schedule_timeout(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_after_eq(i32, i64) #1

declare dso_local i32 @synth_buffer_getc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
