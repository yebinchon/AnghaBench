; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_speakup_dectlk.c_do_catch_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_speakup_dectlk.c_do_catch_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64 }
%struct.spk_synth = type { %struct.TYPE_7__*, i32 (%struct.spk_synth*)* }
%struct.TYPE_7__ = type { i32 (%struct.spk_synth*, i8)* }
%struct.var_t = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@do_catch_up.ch = internal global i8 0, align 1
@do_catch_up.last = internal global i8 0, align 1
@wait = common dso_local global i32 0, align 4
@JIFFY = common dso_local global i32 0, align 4
@DELAY = common dso_local global i32 0, align 4
@speakup_info = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@jiffies = common dso_local global i32 0, align 4
@flush_lock = common dso_local global i32 0, align 4
@is_flushing = common dso_local global i64 0, align 8
@flush = common dso_local global i32 0, align 4
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
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.var_t*, align 8
  %8 = alloca %struct.var_t*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.spk_synth* %0, %struct.spk_synth** %2, align 8
  store i32 0, i32* %3, align 4
  %11 = call i64 @msecs_to_jiffies(i32 4000)
  store i64 %11, i64* %6, align 8
  %12 = load i32, i32* @wait, align 4
  %13 = call i32 @DEFINE_WAIT(i32 %12)
  %14 = load i32, i32* @JIFFY, align 4
  %15 = call %struct.var_t* @spk_get_var(i32 %14)
  store %struct.var_t* %15, %struct.var_t** %7, align 8
  %16 = load i32, i32* @DELAY, align 4
  %17 = call %struct.var_t* @spk_get_var(i32 %16)
  store %struct.var_t* %17, %struct.var_t** %8, align 8
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @speakup_info, i32 0, i32 0), i64 %18)
  %20 = load %struct.var_t*, %struct.var_t** %7, align 8
  %21 = getelementptr inbounds %struct.var_t, %struct.var_t* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @speakup_info, i32 0, i32 0), i64 %25)
  %27 = load i32, i32* @jiffies, align 4
  %28 = load i32, i32* %9, align 4
  %29 = add nsw i32 %27, %28
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %5, align 8
  br label %31

31:                                               ; preds = %192, %107, %63, %1
  %32 = call i32 (...) @kthread_should_stop()
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br i1 %34, label %35, label %194

35:                                               ; preds = %31
  %36 = load i64, i64* %4, align 8
  %37 = call i32 @spin_lock_irqsave(i32* @flush_lock, i64 %36)
  br label %38

38:                                               ; preds = %46, %35
  %39 = load i64, i64* @is_flushing, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i64, i64* %6, align 8
  %43 = icmp ne i64 %42, 0
  br label %44

44:                                               ; preds = %41, %38
  %45 = phi i1 [ false, %38 ], [ %43, %41 ]
  br i1 %45, label %46, label %55

46:                                               ; preds = %44
  %47 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %48 = call i32 @prepare_to_wait(i32* @flush, i32* @wait, i32 %47)
  %49 = load i64, i64* %4, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* @flush_lock, i64 %49)
  %51 = load i64, i64* %6, align 8
  %52 = call i64 @schedule_timeout(i64 %51)
  store i64 %52, i64* %6, align 8
  %53 = load i64, i64* %4, align 8
  %54 = call i32 @spin_lock_irqsave(i32* @flush_lock, i64 %53)
  br label %38

55:                                               ; preds = %44
  %56 = call i32 @finish_wait(i32* @flush, i32* @wait)
  store i64 0, i64* @is_flushing, align 8
  %57 = load i64, i64* %4, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* @flush_lock, i64 %57)
  %59 = load i64, i64* %4, align 8
  %60 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @speakup_info, i32 0, i32 0), i64 %59)
  %61 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @speakup_info, i32 0, i32 1), align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %55
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @speakup_info, i32 0, i32 1), align 8
  %64 = load i64, i64* %4, align 8
  %65 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @speakup_info, i32 0, i32 0), i64 %64)
  %66 = load %struct.spk_synth*, %struct.spk_synth** %2, align 8
  %67 = getelementptr inbounds %struct.spk_synth, %struct.spk_synth* %66, i32 0, i32 1
  %68 = load i32 (%struct.spk_synth*)*, i32 (%struct.spk_synth*)** %67, align 8
  %69 = load %struct.spk_synth*, %struct.spk_synth** %2, align 8
  %70 = call i32 %68(%struct.spk_synth* %69)
  br label %31

71:                                               ; preds = %55
  %72 = call i32 (...) @synth_buffer_skip_nonlatin1()
  %73 = call i64 (...) @synth_buffer_empty()
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i64, i64* %4, align 8
  %77 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @speakup_info, i32 0, i32 0), i64 %76)
  br label %194

78:                                               ; preds = %71
  %79 = call signext i8 (...) @synth_buffer_peek()
  store i8 %79, i8* @do_catch_up.ch, align 1
  %80 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %81 = call i32 @set_current_state(i32 %80)
  %82 = load %struct.var_t*, %struct.var_t** %8, align 8
  %83 = getelementptr inbounds %struct.var_t, %struct.var_t* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %10, align 4
  %87 = call i32 (...) @synth_full()
  store i32 %87, i32* %3, align 4
  %88 = load i64, i64* %4, align 8
  %89 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @speakup_info, i32 0, i32 0), i64 %88)
  %90 = load i8, i8* @do_catch_up.ch, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 10
  br i1 %92, label %93, label %94

93:                                               ; preds = %78
  store i8 13, i8* @do_catch_up.ch, align 1
  br label %94

94:                                               ; preds = %93, %78
  %95 = load i32, i32* %3, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %107, label %97

97:                                               ; preds = %94
  %98 = load %struct.spk_synth*, %struct.spk_synth** %2, align 8
  %99 = getelementptr inbounds %struct.spk_synth, %struct.spk_synth* %98, i32 0, i32 0
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i32 (%struct.spk_synth*, i8)*, i32 (%struct.spk_synth*, i8)** %101, align 8
  %103 = load %struct.spk_synth*, %struct.spk_synth** %2, align 8
  %104 = load i8, i8* @do_catch_up.ch, align 1
  %105 = call i32 %102(%struct.spk_synth* %103, i8 signext %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %97, %94
  %108 = load i32, i32* %10, align 4
  %109 = call i64 @msecs_to_jiffies(i32 %108)
  %110 = call i64 @schedule_timeout(i64 %109)
  br label %31

111:                                              ; preds = %97
  %112 = load i32, i32* @TASK_RUNNING, align 4
  %113 = call i32 @set_current_state(i32 %112)
  %114 = load i64, i64* %4, align 8
  %115 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @speakup_info, i32 0, i32 0), i64 %114)
  %116 = call i32 (...) @synth_buffer_getc()
  %117 = load i64, i64* %4, align 8
  %118 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @speakup_info, i32 0, i32 0), i64 %117)
  %119 = load i8, i8* @do_catch_up.ch, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %120, 91
  br i1 %121, label %122, label %123

122:                                              ; preds = %111
  store i32 1, i32* @in_escape, align 4
  br label %192

123:                                              ; preds = %111
  %124 = load i8, i8* @do_catch_up.ch, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp eq i32 %125, 93
  br i1 %126, label %127, label %128

127:                                              ; preds = %123
  store i32 0, i32* @in_escape, align 4
  br label %191

128:                                              ; preds = %123
  %129 = load i8, i8* @do_catch_up.ch, align 1
  %130 = sext i8 %129 to i32
  %131 = load i8, i8* @SPACE, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp sle i32 %130, %132
  br i1 %133, label %134, label %190

134:                                              ; preds = %128
  %135 = load i32, i32* @in_escape, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %150, label %137

137:                                              ; preds = %134
  %138 = load i8, i8* @do_catch_up.last, align 1
  %139 = call i64 @strchr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8 signext %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %137
  %142 = load %struct.spk_synth*, %struct.spk_synth** %2, align 8
  %143 = getelementptr inbounds %struct.spk_synth, %struct.spk_synth* %142, i32 0, i32 0
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = load i32 (%struct.spk_synth*, i8)*, i32 (%struct.spk_synth*, i8)** %145, align 8
  %147 = load %struct.spk_synth*, %struct.spk_synth** %2, align 8
  %148 = load i8, i8* @PROCSPEECH, align 1
  %149 = call i32 %146(%struct.spk_synth* %147, i8 signext %148)
  br label %150

150:                                              ; preds = %141, %137, %134
  %151 = load i32, i32* @jiffies, align 4
  %152 = load i64, i64* %5, align 8
  %153 = call i64 @time_after_eq(i32 %151, i64 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %189

155:                                              ; preds = %150
  %156 = load i32, i32* @in_escape, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %167, label %158

158:                                              ; preds = %155
  %159 = load %struct.spk_synth*, %struct.spk_synth** %2, align 8
  %160 = getelementptr inbounds %struct.spk_synth, %struct.spk_synth* %159, i32 0, i32 0
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 0
  %163 = load i32 (%struct.spk_synth*, i8)*, i32 (%struct.spk_synth*, i8)** %162, align 8
  %164 = load %struct.spk_synth*, %struct.spk_synth** %2, align 8
  %165 = load i8, i8* @PROCSPEECH, align 1
  %166 = call i32 %163(%struct.spk_synth* %164, i8 signext %165)
  br label %167

167:                                              ; preds = %158, %155
  %168 = load i64, i64* %4, align 8
  %169 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @speakup_info, i32 0, i32 0), i64 %168)
  %170 = load %struct.var_t*, %struct.var_t** %7, align 8
  %171 = getelementptr inbounds %struct.var_t, %struct.var_t* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  store i32 %174, i32* %9, align 4
  %175 = load %struct.var_t*, %struct.var_t** %8, align 8
  %176 = getelementptr inbounds %struct.var_t, %struct.var_t* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  store i32 %179, i32* %10, align 4
  %180 = load i64, i64* %4, align 8
  %181 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @speakup_info, i32 0, i32 0), i64 %180)
  %182 = load i32, i32* %10, align 4
  %183 = call i64 @msecs_to_jiffies(i32 %182)
  %184 = call i64 @schedule_timeout(i64 %183)
  %185 = load i32, i32* @jiffies, align 4
  %186 = load i32, i32* %9, align 4
  %187 = add nsw i32 %185, %186
  %188 = sext i32 %187 to i64
  store i64 %188, i64* %5, align 8
  br label %189

189:                                              ; preds = %167, %150
  br label %190

190:                                              ; preds = %189, %128
  br label %191

191:                                              ; preds = %190, %127
  br label %192

192:                                              ; preds = %191, %122
  %193 = load i8, i8* @do_catch_up.ch, align 1
  store i8 %193, i8* @do_catch_up.last, align 1
  br label %31

194:                                              ; preds = %75, %31
  %195 = load i32, i32* @in_escape, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %206, label %197

197:                                              ; preds = %194
  %198 = load %struct.spk_synth*, %struct.spk_synth** %2, align 8
  %199 = getelementptr inbounds %struct.spk_synth, %struct.spk_synth* %198, i32 0, i32 0
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 0
  %202 = load i32 (%struct.spk_synth*, i8)*, i32 (%struct.spk_synth*, i8)** %201, align 8
  %203 = load %struct.spk_synth*, %struct.spk_synth** %2, align 8
  %204 = load i8, i8* @PROCSPEECH, align 1
  %205 = call i32 %202(%struct.spk_synth* %203, i8 signext %204)
  br label %206

206:                                              ; preds = %197, %194
  ret void
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local %struct.var_t* @spk_get_var(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i64 @schedule_timeout(i64) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

declare dso_local i32 @synth_buffer_skip_nonlatin1(...) #1

declare dso_local i64 @synth_buffer_empty(...) #1

declare dso_local signext i8 @synth_buffer_peek(...) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @synth_full(...) #1

declare dso_local i32 @synth_buffer_getc(...) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i64 @time_after_eq(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
