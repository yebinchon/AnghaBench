; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_speakup_apollo.c_do_catch_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_speakup_apollo.c_do_catch_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64 }
%struct.spk_synth = type { i64, %struct.TYPE_7__*, i32 (%struct.spk_synth*)* }
%struct.TYPE_7__ = type { i64 (%struct.spk_synth*, i64)*, i32 (i32, i32)* }
%struct.var_t = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@JIFFY = common dso_local global i32 0, align 4
@DELAY = common dso_local global i32 0, align 4
@FULL = common dso_local global i32 0, align 4
@speakup_info = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@jiffies = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@UART_MCR_RTS = common dso_local global i32 0, align 4
@SPACE = common dso_local global i64 0, align 8
@TASK_RUNNING = common dso_local global i32 0, align 4
@PROCSPEECH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spk_synth*)* @do_catch_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_catch_up(%struct.spk_synth* %0) #0 {
  %2 = alloca %struct.spk_synth*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.var_t*, align 8
  %7 = alloca %struct.var_t*, align 8
  %8 = alloca %struct.var_t*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.spk_synth* %0, %struct.spk_synth** %2, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* @JIFFY, align 4
  %13 = call %struct.var_t* @spk_get_var(i32 %12)
  store %struct.var_t* %13, %struct.var_t** %6, align 8
  %14 = load i32, i32* @DELAY, align 4
  %15 = call %struct.var_t* @spk_get_var(i32 %14)
  store %struct.var_t* %15, %struct.var_t** %7, align 8
  %16 = load i32, i32* @FULL, align 4
  %17 = call %struct.var_t* @spk_get_var(i32 %16)
  store %struct.var_t* %17, %struct.var_t** %8, align 8
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @speakup_info, i32 0, i32 0), i64 %18)
  %20 = load %struct.var_t*, %struct.var_t** %6, align 8
  %21 = getelementptr inbounds %struct.var_t, %struct.var_t* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %11, align 4
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @speakup_info, i32 0, i32 0), i64 %25)
  %27 = load i32, i32* @jiffies, align 4
  %28 = load i32, i32* %11, align 4
  %29 = add nsw i32 %27, %28
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %5, align 8
  br label %31

31:                                               ; preds = %161, %90, %55, %1
  %32 = call i32 (...) @kthread_should_stop()
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br i1 %34, label %35, label %169

35:                                               ; preds = %31
  %36 = load i64, i64* %4, align 8
  %37 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @speakup_info, i32 0, i32 0), i64 %36)
  %38 = load %struct.var_t*, %struct.var_t** %6, align 8
  %39 = getelementptr inbounds %struct.var_t, %struct.var_t* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %11, align 4
  %43 = load %struct.var_t*, %struct.var_t** %8, align 8
  %44 = getelementptr inbounds %struct.var_t, %struct.var_t* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %9, align 4
  %48 = load %struct.var_t*, %struct.var_t** %7, align 8
  %49 = getelementptr inbounds %struct.var_t, %struct.var_t* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %10, align 4
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @speakup_info, i32 0, i32 1), align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %35
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @speakup_info, i32 0, i32 1), align 8
  %56 = load i64, i64* %4, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @speakup_info, i32 0, i32 0), i64 %56)
  %58 = load %struct.spk_synth*, %struct.spk_synth** %2, align 8
  %59 = getelementptr inbounds %struct.spk_synth, %struct.spk_synth* %58, i32 0, i32 2
  %60 = load i32 (%struct.spk_synth*)*, i32 (%struct.spk_synth*)** %59, align 8
  %61 = load %struct.spk_synth*, %struct.spk_synth** %2, align 8
  %62 = call i32 %60(%struct.spk_synth* %61)
  br label %31

63:                                               ; preds = %35
  %64 = call i32 (...) @synth_buffer_skip_nonlatin1()
  %65 = call i64 (...) @synth_buffer_empty()
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i64, i64* %4, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @speakup_info, i32 0, i32 0), i64 %68)
  br label %169

70:                                               ; preds = %63
  %71 = call i64 (...) @synth_buffer_peek()
  store i64 %71, i64* %3, align 8
  %72 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %73 = call i32 @set_current_state(i32 %72)
  %74 = load %struct.var_t*, %struct.var_t** %8, align 8
  %75 = getelementptr inbounds %struct.var_t, %struct.var_t* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %9, align 4
  %79 = load i64, i64* %4, align 8
  %80 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @speakup_info, i32 0, i32 0), i64 %79)
  %81 = load %struct.spk_synth*, %struct.spk_synth** %2, align 8
  %82 = getelementptr inbounds %struct.spk_synth, %struct.spk_synth* %81, i32 0, i32 1
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i64 (%struct.spk_synth*, i64)*, i64 (%struct.spk_synth*, i64)** %84, align 8
  %86 = load %struct.spk_synth*, %struct.spk_synth** %2, align 8
  %87 = load i64, i64* %3, align 8
  %88 = call i64 %85(%struct.spk_synth* %86, i64 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %108, label %90

90:                                               ; preds = %70
  %91 = load %struct.spk_synth*, %struct.spk_synth** %2, align 8
  %92 = getelementptr inbounds %struct.spk_synth, %struct.spk_synth* %91, i32 0, i32 1
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = load i32 (i32, i32)*, i32 (i32, i32)** %94, align 8
  %96 = load i32, i32* @UART_MCR_RTS, align 4
  %97 = call i32 %95(i32 0, i32 %96)
  %98 = load %struct.spk_synth*, %struct.spk_synth** %2, align 8
  %99 = getelementptr inbounds %struct.spk_synth, %struct.spk_synth* %98, i32 0, i32 1
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  %102 = load i32 (i32, i32)*, i32 (i32, i32)** %101, align 8
  %103 = load i32, i32* @UART_MCR_RTS, align 4
  %104 = call i32 %102(i32 %103, i32 0)
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @msecs_to_jiffies(i32 %105)
  %107 = call i32 @schedule_timeout(i32 %106)
  br label %31

108:                                              ; preds = %70
  %109 = load i32, i32* @jiffies, align 4
  %110 = load i64, i64* %5, align 8
  %111 = call i64 @time_after_eq(i32 %109, i64 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %161

113:                                              ; preds = %108
  %114 = load i64, i64* %3, align 8
  %115 = load i64, i64* @SPACE, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %161

117:                                              ; preds = %113
  %118 = load i64, i64* %4, align 8
  %119 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @speakup_info, i32 0, i32 0), i64 %118)
  %120 = load %struct.var_t*, %struct.var_t** %6, align 8
  %121 = getelementptr inbounds %struct.var_t, %struct.var_t* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %11, align 4
  %125 = load %struct.var_t*, %struct.var_t** %8, align 8
  %126 = getelementptr inbounds %struct.var_t, %struct.var_t* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %9, align 4
  %130 = load %struct.var_t*, %struct.var_t** %7, align 8
  %131 = getelementptr inbounds %struct.var_t, %struct.var_t* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %10, align 4
  %135 = load i64, i64* %4, align 8
  %136 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @speakup_info, i32 0, i32 0), i64 %135)
  %137 = load %struct.spk_synth*, %struct.spk_synth** %2, align 8
  %138 = getelementptr inbounds %struct.spk_synth, %struct.spk_synth* %137, i32 0, i32 1
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  %141 = load i64 (%struct.spk_synth*, i64)*, i64 (%struct.spk_synth*, i64)** %140, align 8
  %142 = load %struct.spk_synth*, %struct.spk_synth** %2, align 8
  %143 = load %struct.spk_synth*, %struct.spk_synth** %2, align 8
  %144 = getelementptr inbounds %struct.spk_synth, %struct.spk_synth* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = call i64 %141(%struct.spk_synth* %142, i64 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %117
  %149 = load i32, i32* %10, align 4
  %150 = call i32 @msecs_to_jiffies(i32 %149)
  %151 = call i32 @schedule_timeout(i32 %150)
  br label %156

152:                                              ; preds = %117
  %153 = load i32, i32* %9, align 4
  %154 = call i32 @msecs_to_jiffies(i32 %153)
  %155 = call i32 @schedule_timeout(i32 %154)
  br label %156

156:                                              ; preds = %152, %148
  %157 = load i32, i32* @jiffies, align 4
  %158 = load i32, i32* %11, align 4
  %159 = add nsw i32 %157, %158
  %160 = sext i32 %159 to i64
  store i64 %160, i64* %5, align 8
  br label %161

161:                                              ; preds = %156, %113, %108
  %162 = load i32, i32* @TASK_RUNNING, align 4
  %163 = call i32 @set_current_state(i32 %162)
  %164 = load i64, i64* %4, align 8
  %165 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @speakup_info, i32 0, i32 0), i64 %164)
  %166 = call i32 (...) @synth_buffer_getc()
  %167 = load i64, i64* %4, align 8
  %168 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @speakup_info, i32 0, i32 0), i64 %167)
  br label %31

169:                                              ; preds = %67, %31
  %170 = load %struct.spk_synth*, %struct.spk_synth** %2, align 8
  %171 = getelementptr inbounds %struct.spk_synth, %struct.spk_synth* %170, i32 0, i32 1
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 0
  %174 = load i64 (%struct.spk_synth*, i64)*, i64 (%struct.spk_synth*, i64)** %173, align 8
  %175 = load %struct.spk_synth*, %struct.spk_synth** %2, align 8
  %176 = load i64, i64* @PROCSPEECH, align 8
  %177 = call i64 %174(%struct.spk_synth* %175, i64 %176)
  ret void
}

declare dso_local %struct.var_t* @spk_get_var(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i32 @synth_buffer_skip_nonlatin1(...) #1

declare dso_local i64 @synth_buffer_empty(...) #1

declare dso_local i64 @synth_buffer_peek(...) #1

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
