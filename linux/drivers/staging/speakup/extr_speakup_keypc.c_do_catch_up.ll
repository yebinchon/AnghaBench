; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_speakup_keypc.c_do_catch_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_speakup_keypc.c_do_catch_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64 }
%struct.spk_synth = type { i32 (%struct.spk_synth*)* }
%struct.var_t = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@JIFFY = common dso_local global i32 0, align 4
@DELAY = common dso_local global i32 0, align 4
@FULL = common dso_local global i32 0, align 4
@speakup_info = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@jiffies = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@PROCSPEECH = common dso_local global i8 0, align 1
@synth_port = common dso_local global i32 0, align 4
@SWAIT = common dso_local global i32 0, align 4
@SPACE = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spk_synth*)* @do_catch_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_catch_up(%struct.spk_synth* %0) #0 {
  %2 = alloca %struct.spk_synth*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.var_t*, align 8
  %8 = alloca %struct.var_t*, align 8
  %9 = alloca %struct.var_t*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.spk_synth* %0, %struct.spk_synth** %2, align 8
  %13 = load i32, i32* @JIFFY, align 4
  %14 = call %struct.var_t* @spk_get_var(i32 %13)
  store %struct.var_t* %14, %struct.var_t** %7, align 8
  %15 = load i32, i32* @DELAY, align 4
  %16 = call %struct.var_t* @spk_get_var(i32 %15)
  store %struct.var_t* %16, %struct.var_t** %8, align 8
  %17 = load i32, i32* @FULL, align 4
  %18 = call %struct.var_t* @spk_get_var(i32 %17)
  store %struct.var_t* %18, %struct.var_t** %9, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @speakup_info, i32 0, i32 0), i64 %19)
  %21 = load %struct.var_t*, %struct.var_t** %7, align 8
  %22 = getelementptr inbounds %struct.var_t, %struct.var_t* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %12, align 4
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @speakup_info, i32 0, i32 0), i64 %26)
  %28 = load i32, i32* @jiffies, align 4
  %29 = load i32, i32* %12, align 4
  %30 = add nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %6, align 8
  br label %32

32:                                               ; preds = %155, %68, %41, %1
  %33 = call i32 (...) @kthread_should_stop()
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  br i1 %35, label %36, label %156

36:                                               ; preds = %32
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @speakup_info, i32 0, i32 0), i64 %37)
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @speakup_info, i32 0, i32 1), align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @speakup_info, i32 0, i32 1), align 8
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @speakup_info, i32 0, i32 0), i64 %42)
  %44 = load %struct.spk_synth*, %struct.spk_synth** %2, align 8
  %45 = getelementptr inbounds %struct.spk_synth, %struct.spk_synth* %44, i32 0, i32 0
  %46 = load i32 (%struct.spk_synth*)*, i32 (%struct.spk_synth*)** %45, align 8
  %47 = load %struct.spk_synth*, %struct.spk_synth** %2, align 8
  %48 = call i32 %46(%struct.spk_synth* %47)
  br label %32

49:                                               ; preds = %36
  %50 = call i32 (...) @synth_buffer_skip_nonlatin1()
  %51 = call i64 (...) @synth_buffer_empty()
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i64, i64* %5, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @speakup_info, i32 0, i32 0), i64 %54)
  br label %156

56:                                               ; preds = %49
  %57 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %58 = call i32 @set_current_state(i32 %57)
  %59 = load %struct.var_t*, %struct.var_t** %9, align 8
  %60 = getelementptr inbounds %struct.var_t, %struct.var_t* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %11, align 4
  %64 = load i64, i64* %5, align 8
  %65 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @speakup_info, i32 0, i32 0), i64 %64)
  %66 = call i64 (...) @synth_full()
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %56
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @msecs_to_jiffies(i32 %69)
  %71 = call i32 @schedule_timeout(i32 %70)
  br label %32

72:                                               ; preds = %56
  %73 = load i32, i32* @TASK_RUNNING, align 4
  %74 = call i32 @set_current_state(i32 %73)
  store i32 1000, i32* %4, align 4
  br label %75

75:                                               ; preds = %83, %72
  %76 = call i64 (...) @synth_writable()
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = load i32, i32* %4, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %4, align 4
  %81 = icmp sle i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  br label %84

83:                                               ; preds = %78
  br label %75

84:                                               ; preds = %82, %75
  %85 = load i32, i32* %4, align 4
  %86 = icmp sle i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = call i32 (...) @oops()
  br label %156

89:                                               ; preds = %84
  %90 = load i64, i64* %5, align 8
  %91 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @speakup_info, i32 0, i32 0), i64 %90)
  %92 = call signext i8 (...) @synth_buffer_getc()
  store i8 %92, i8* %3, align 1
  %93 = load i64, i64* %5, align 8
  %94 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @speakup_info, i32 0, i32 0), i64 %93)
  %95 = load i8, i8* %3, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 10
  br i1 %97, label %98, label %100

98:                                               ; preds = %89
  %99 = load i8, i8* @PROCSPEECH, align 1
  store i8 %99, i8* %3, align 1
  br label %100

100:                                              ; preds = %98, %89
  %101 = load i8, i8* %3, align 1
  %102 = load i32, i32* @synth_port, align 4
  %103 = call i32 @outb_p(i8 signext %101, i32 %102)
  %104 = load i32, i32* @SWAIT, align 4
  %105 = load i32, i32* @jiffies, align 4
  %106 = load i64, i64* %6, align 8
  %107 = call i64 @time_after_eq(i32 %105, i64 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %155

109:                                              ; preds = %100
  %110 = load i8, i8* %3, align 1
  %111 = sext i8 %110 to i32
  %112 = load i8, i8* @SPACE, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %111, %113
  br i1 %114, label %115, label %155

115:                                              ; preds = %109
  store i32 1000, i32* %4, align 4
  br label %116

116:                                              ; preds = %124, %115
  %117 = call i64 (...) @synth_writable()
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %116
  %120 = load i32, i32* %4, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %4, align 4
  %122 = icmp sle i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %119
  br label %125

124:                                              ; preds = %119
  br label %116

125:                                              ; preds = %123, %116
  %126 = load i32, i32* %4, align 4
  %127 = icmp sle i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %125
  %129 = call i32 (...) @oops()
  br label %156

130:                                              ; preds = %125
  %131 = load i8, i8* @PROCSPEECH, align 1
  %132 = load i32, i32* @synth_port, align 4
  %133 = call i32 @outb_p(i8 signext %131, i32 %132)
  %134 = load i64, i64* %5, align 8
  %135 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @speakup_info, i32 0, i32 0), i64 %134)
  %136 = load %struct.var_t*, %struct.var_t** %7, align 8
  %137 = getelementptr inbounds %struct.var_t, %struct.var_t* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %12, align 4
  %141 = load %struct.var_t*, %struct.var_t** %8, align 8
  %142 = getelementptr inbounds %struct.var_t, %struct.var_t* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  store i32 %145, i32* %10, align 4
  %146 = load i64, i64* %5, align 8
  %147 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @speakup_info, i32 0, i32 0), i64 %146)
  %148 = load i32, i32* %10, align 4
  %149 = call i32 @msecs_to_jiffies(i32 %148)
  %150 = call i32 @schedule_timeout(i32 %149)
  %151 = load i32, i32* @jiffies, align 4
  %152 = load i32, i32* %12, align 4
  %153 = add nsw i32 %151, %152
  %154 = sext i32 %153 to i64
  store i64 %154, i64* %6, align 8
  br label %155

155:                                              ; preds = %130, %109, %100
  br label %32

156:                                              ; preds = %128, %87, %53, %32
  store i32 1000, i32* %4, align 4
  br label %157

157:                                              ; preds = %165, %156
  %158 = call i64 (...) @synth_writable()
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %157
  %161 = load i32, i32* %4, align 4
  %162 = add nsw i32 %161, -1
  store i32 %162, i32* %4, align 4
  %163 = icmp sle i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %160
  br label %166

165:                                              ; preds = %160
  br label %157

166:                                              ; preds = %164, %157
  %167 = load i32, i32* %4, align 4
  %168 = icmp sle i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %166
  %170 = call i32 (...) @oops()
  br label %175

171:                                              ; preds = %166
  %172 = load i8, i8* @PROCSPEECH, align 1
  %173 = load i32, i32* @synth_port, align 4
  %174 = call i32 @outb_p(i8 signext %172, i32 %173)
  br label %175

175:                                              ; preds = %171, %169
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

declare dso_local i64 @synth_writable(...) #1

declare dso_local i32 @oops(...) #1

declare dso_local signext i8 @synth_buffer_getc(...) #1

declare dso_local i32 @outb_p(i8 signext, i32) #1

declare dso_local i64 @time_after_eq(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
