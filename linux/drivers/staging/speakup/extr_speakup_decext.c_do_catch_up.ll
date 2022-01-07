; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_speakup_decext.c_do_catch_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_speakup_decext.c_do_catch_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64 }
%struct.spk_synth = type { %struct.TYPE_7__*, i32 (%struct.spk_synth*)* }
%struct.TYPE_7__ = type { i32 (%struct.spk_synth*, i8)* }
%struct.var_t = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@do_catch_up.last = internal global i8 0, align 1
@JIFFY = common dso_local global i32 0, align 4
@DELAY = common dso_local global i32 0, align 4
@speakup_info = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
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
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* @JIFFY, align 4
  %11 = call %struct.var_t* @spk_get_var(i32 %10)
  store %struct.var_t* %11, %struct.var_t** %6, align 8
  %12 = load i32, i32* @DELAY, align 4
  %13 = call %struct.var_t* @spk_get_var(i32 %12)
  store %struct.var_t* %13, %struct.var_t** %7, align 8
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @speakup_info, i32 0, i32 0), i64 %14)
  %16 = load %struct.var_t*, %struct.var_t** %6, align 8
  %17 = getelementptr inbounds %struct.var_t, %struct.var_t* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @speakup_info, i32 0, i32 0), i64 %21)
  %23 = load i32, i32* @jiffies, align 4
  %24 = load i32, i32* %8, align 4
  %25 = add nsw i32 %23, %24
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %5, align 8
  br label %27

27:                                               ; preds = %164, %79, %36, %1
  %28 = call i32 (...) @kthread_should_stop()
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br i1 %30, label %31, label %166

31:                                               ; preds = %27
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @speakup_info, i32 0, i32 0), i64 %32)
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @speakup_info, i32 0, i32 1), align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @speakup_info, i32 0, i32 1), align 8
  %37 = load i64, i64* %4, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @speakup_info, i32 0, i32 0), i64 %37)
  %39 = load %struct.spk_synth*, %struct.spk_synth** %2, align 8
  %40 = getelementptr inbounds %struct.spk_synth, %struct.spk_synth* %39, i32 0, i32 1
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
  %50 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @speakup_info, i32 0, i32 0), i64 %49)
  br label %166

51:                                               ; preds = %44
  %52 = call signext i8 (...) @synth_buffer_peek()
  store i8 %52, i8* %3, align 1
  %53 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %54 = call i32 @set_current_state(i32 %53)
  %55 = load %struct.var_t*, %struct.var_t** %7, align 8
  %56 = getelementptr inbounds %struct.var_t, %struct.var_t* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %9, align 4
  %60 = load i64, i64* %4, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @speakup_info, i32 0, i32 0), i64 %60)
  %62 = load i8, i8* %3, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 10
  br i1 %64, label %65, label %66

65:                                               ; preds = %51
  store i8 13, i8* %3, align 1
  br label %66

66:                                               ; preds = %65, %51
  %67 = call i64 (...) @synth_full()
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %79, label %69

69:                                               ; preds = %66
  %70 = load %struct.spk_synth*, %struct.spk_synth** %2, align 8
  %71 = getelementptr inbounds %struct.spk_synth, %struct.spk_synth* %70, i32 0, i32 0
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32 (%struct.spk_synth*, i8)*, i32 (%struct.spk_synth*, i8)** %73, align 8
  %75 = load %struct.spk_synth*, %struct.spk_synth** %2, align 8
  %76 = load i8, i8* %3, align 1
  %77 = call i32 %74(%struct.spk_synth* %75, i8 signext %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %69, %66
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @msecs_to_jiffies(i32 %80)
  %82 = call i32 @schedule_timeout(i32 %81)
  br label %27

83:                                               ; preds = %69
  %84 = load i32, i32* @TASK_RUNNING, align 4
  %85 = call i32 @set_current_state(i32 %84)
  %86 = load i64, i64* %4, align 8
  %87 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @speakup_info, i32 0, i32 0), i64 %86)
  %88 = call i32 (...) @synth_buffer_getc()
  %89 = load i64, i64* %4, align 8
  %90 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @speakup_info, i32 0, i32 0), i64 %89)
  %91 = load i8, i8* %3, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 91
  br i1 %93, label %94, label %95

94:                                               ; preds = %83
  store i32 1, i32* @in_escape, align 4
  br label %164

95:                                               ; preds = %83
  %96 = load i8, i8* %3, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 93
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  store i32 0, i32* @in_escape, align 4
  br label %163

100:                                              ; preds = %95
  %101 = load i8, i8* %3, align 1
  %102 = sext i8 %101 to i32
  %103 = load i8, i8* @SPACE, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp sle i32 %102, %104
  br i1 %105, label %106, label %162

106:                                              ; preds = %100
  %107 = load i32, i32* @in_escape, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %122, label %109

109:                                              ; preds = %106
  %110 = load i8, i8* @do_catch_up.last, align 1
  %111 = call i64 @strchr(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8 signext %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %109
  %114 = load %struct.spk_synth*, %struct.spk_synth** %2, align 8
  %115 = getelementptr inbounds %struct.spk_synth, %struct.spk_synth* %114, i32 0, i32 0
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i32 (%struct.spk_synth*, i8)*, i32 (%struct.spk_synth*, i8)** %117, align 8
  %119 = load %struct.spk_synth*, %struct.spk_synth** %2, align 8
  %120 = load i8, i8* @PROCSPEECH, align 1
  %121 = call i32 %118(%struct.spk_synth* %119, i8 signext %120)
  br label %122

122:                                              ; preds = %113, %109, %106
  %123 = load i32, i32* @jiffies, align 4
  %124 = load i64, i64* %5, align 8
  %125 = call i64 @time_after_eq(i32 %123, i64 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %161

127:                                              ; preds = %122
  %128 = load i32, i32* @in_escape, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %139, label %130

130:                                              ; preds = %127
  %131 = load %struct.spk_synth*, %struct.spk_synth** %2, align 8
  %132 = getelementptr inbounds %struct.spk_synth, %struct.spk_synth* %131, i32 0, i32 0
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load i32 (%struct.spk_synth*, i8)*, i32 (%struct.spk_synth*, i8)** %134, align 8
  %136 = load %struct.spk_synth*, %struct.spk_synth** %2, align 8
  %137 = load i8, i8* @PROCSPEECH, align 1
  %138 = call i32 %135(%struct.spk_synth* %136, i8 signext %137)
  br label %139

139:                                              ; preds = %130, %127
  %140 = load i64, i64* %4, align 8
  %141 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @speakup_info, i32 0, i32 0), i64 %140)
  %142 = load %struct.var_t*, %struct.var_t** %6, align 8
  %143 = getelementptr inbounds %struct.var_t, %struct.var_t* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  store i32 %146, i32* %8, align 4
  %147 = load %struct.var_t*, %struct.var_t** %7, align 8
  %148 = getelementptr inbounds %struct.var_t, %struct.var_t* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  store i32 %151, i32* %9, align 4
  %152 = load i64, i64* %4, align 8
  %153 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @speakup_info, i32 0, i32 0), i64 %152)
  %154 = load i32, i32* %9, align 4
  %155 = call i32 @msecs_to_jiffies(i32 %154)
  %156 = call i32 @schedule_timeout(i32 %155)
  %157 = load i32, i32* @jiffies, align 4
  %158 = load i32, i32* %8, align 4
  %159 = add nsw i32 %157, %158
  %160 = sext i32 %159 to i64
  store i64 %160, i64* %5, align 8
  br label %161

161:                                              ; preds = %139, %122
  br label %162

162:                                              ; preds = %161, %100
  br label %163

163:                                              ; preds = %162, %99
  br label %164

164:                                              ; preds = %163, %94
  %165 = load i8, i8* %3, align 1
  store i8 %165, i8* @do_catch_up.last, align 1
  br label %27

166:                                              ; preds = %48, %27
  %167 = load i32, i32* @in_escape, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %178, label %169

169:                                              ; preds = %166
  %170 = load %struct.spk_synth*, %struct.spk_synth** %2, align 8
  %171 = getelementptr inbounds %struct.spk_synth, %struct.spk_synth* %170, i32 0, i32 0
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 0
  %174 = load i32 (%struct.spk_synth*, i8)*, i32 (%struct.spk_synth*, i8)** %173, align 8
  %175 = load %struct.spk_synth*, %struct.spk_synth** %2, align 8
  %176 = load i8, i8* @PROCSPEECH, align 1
  %177 = call i32 %174(%struct.spk_synth* %175, i8 signext %176)
  br label %178

178:                                              ; preds = %169, %166
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

declare dso_local i64 @synth_full(...) #1

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
