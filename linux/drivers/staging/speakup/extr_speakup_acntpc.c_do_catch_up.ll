; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_speakup_acntpc.c_do_catch_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_speakup_acntpc.c_do_catch_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i64 }
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
@SPK_XMITR_TIMEOUT = common dso_local global i32 0, align 4
@PROCSPEECH = common dso_local global i8 0, align 1
@SPACE = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spk_synth*)* @do_catch_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_catch_up(%struct.spk_synth* %0) #0 {
  %2 = alloca %struct.spk_synth*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.var_t*, align 8
  %11 = alloca %struct.var_t*, align 8
  %12 = alloca %struct.var_t*, align 8
  store %struct.spk_synth* %0, %struct.spk_synth** %2, align 8
  %13 = load i32, i32* @JIFFY, align 4
  %14 = call %struct.var_t* @spk_get_var(i32 %13)
  store %struct.var_t* %14, %struct.var_t** %12, align 8
  %15 = load i32, i32* @DELAY, align 4
  %16 = call %struct.var_t* @spk_get_var(i32 %15)
  store %struct.var_t* %16, %struct.var_t** %10, align 8
  %17 = load i32, i32* @FULL, align 4
  %18 = call %struct.var_t* @spk_get_var(i32 %17)
  store %struct.var_t* %18, %struct.var_t** %11, align 8
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @speakup_info, i32 0, i32 1), i64 %19)
  %21 = load %struct.var_t*, %struct.var_t** %12, align 8
  %22 = getelementptr inbounds %struct.var_t, %struct.var_t* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %8, align 4
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @speakup_info, i32 0, i32 1), i64 %26)
  %28 = load i32, i32* @jiffies, align 4
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %5, align 8
  br label %32

32:                                               ; preds = %148, %68, %41, %1
  %33 = call i32 (...) @kthread_should_stop()
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  br i1 %35, label %36, label %149

36:                                               ; preds = %32
  %37 = load i64, i64* %4, align 8
  %38 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @speakup_info, i32 0, i32 1), i64 %37)
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @speakup_info, i32 0, i32 2), align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @speakup_info, i32 0, i32 2), align 8
  %42 = load i64, i64* %4, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @speakup_info, i32 0, i32 1), i64 %42)
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
  %54 = load i64, i64* %4, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @speakup_info, i32 0, i32 1), i64 %54)
  br label %149

56:                                               ; preds = %49
  %57 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %58 = call i32 @set_current_state(i32 %57)
  %59 = load %struct.var_t*, %struct.var_t** %11, align 8
  %60 = getelementptr inbounds %struct.var_t, %struct.var_t* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %9, align 4
  %64 = load i64, i64* %4, align 8
  %65 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @speakup_info, i32 0, i32 1), i64 %64)
  %66 = call i64 (...) @synth_full()
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %56
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @msecs_to_jiffies(i32 %69)
  %71 = call i32 @schedule_timeout(i32 %70)
  br label %32

72:                                               ; preds = %56
  %73 = load i32, i32* @TASK_RUNNING, align 4
  %74 = call i32 @set_current_state(i32 %73)
  %75 = load i32, i32* @SPK_XMITR_TIMEOUT, align 4
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %84, %72
  %77 = call i64 (...) @synth_writable()
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %76
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %79
  br label %86

84:                                               ; preds = %79
  %85 = call i32 @udelay(i32 1)
  br label %76

86:                                               ; preds = %83, %76
  %87 = load i64, i64* %4, align 8
  %88 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @speakup_info, i32 0, i32 1), i64 %87)
  %89 = call signext i8 (...) @synth_buffer_getc()
  store i8 %89, i8* %3, align 1
  %90 = load i64, i64* %4, align 8
  %91 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @speakup_info, i32 0, i32 1), i64 %90)
  %92 = load i8, i8* %3, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 10
  br i1 %94, label %95, label %97

95:                                               ; preds = %86
  %96 = load i8, i8* @PROCSPEECH, align 1
  store i8 %96, i8* %3, align 1
  br label %97

97:                                               ; preds = %95, %86
  %98 = load i8, i8* %3, align 1
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @speakup_info, i32 0, i32 0), align 8
  %100 = call i32 @outb_p(i8 signext %98, i32 %99)
  %101 = load i32, i32* @jiffies, align 4
  %102 = load i64, i64* %5, align 8
  %103 = call i64 @time_after_eq(i32 %101, i64 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %148

105:                                              ; preds = %97
  %106 = load i8, i8* %3, align 1
  %107 = sext i8 %106 to i32
  %108 = load i8, i8* @SPACE, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %107, %109
  br i1 %110, label %111, label %148

111:                                              ; preds = %105
  %112 = load i32, i32* @SPK_XMITR_TIMEOUT, align 4
  store i32 %112, i32* %6, align 4
  br label %113

113:                                              ; preds = %121, %111
  %114 = call i64 (...) @synth_writable()
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %113
  %117 = load i32, i32* %6, align 4
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* %6, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %116
  br label %123

121:                                              ; preds = %116
  %122 = call i32 @udelay(i32 1)
  br label %113

123:                                              ; preds = %120, %113
  %124 = load i8, i8* @PROCSPEECH, align 1
  %125 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @speakup_info, i32 0, i32 0), align 8
  %126 = call i32 @outb_p(i8 signext %124, i32 %125)
  %127 = load i64, i64* %4, align 8
  %128 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @speakup_info, i32 0, i32 1), i64 %127)
  %129 = load %struct.var_t*, %struct.var_t** %12, align 8
  %130 = getelementptr inbounds %struct.var_t, %struct.var_t* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %8, align 4
  %134 = load %struct.var_t*, %struct.var_t** %10, align 8
  %135 = getelementptr inbounds %struct.var_t, %struct.var_t* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %7, align 4
  %139 = load i64, i64* %4, align 8
  %140 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @speakup_info, i32 0, i32 1), i64 %139)
  %141 = load i32, i32* %7, align 4
  %142 = call i32 @msecs_to_jiffies(i32 %141)
  %143 = call i32 @schedule_timeout(i32 %142)
  %144 = load i32, i32* @jiffies, align 4
  %145 = load i32, i32* %8, align 4
  %146 = add nsw i32 %144, %145
  %147 = sext i32 %146 to i64
  store i64 %147, i64* %5, align 8
  br label %148

148:                                              ; preds = %123, %105, %97
  br label %32

149:                                              ; preds = %53, %32
  %150 = load i32, i32* @SPK_XMITR_TIMEOUT, align 4
  store i32 %150, i32* %6, align 4
  br label %151

151:                                              ; preds = %159, %149
  %152 = call i64 (...) @synth_writable()
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %151
  %155 = load i32, i32* %6, align 4
  %156 = add nsw i32 %155, -1
  store i32 %156, i32* %6, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %154
  br label %161

159:                                              ; preds = %154
  %160 = call i32 @udelay(i32 1)
  br label %151

161:                                              ; preds = %158, %151
  %162 = load i8, i8* @PROCSPEECH, align 1
  %163 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @speakup_info, i32 0, i32 0), align 8
  %164 = call i32 @outb_p(i8 signext %162, i32 %163)
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

declare dso_local i32 @udelay(i32) #1

declare dso_local signext i8 @synth_buffer_getc(...) #1

declare dso_local i32 @outb_p(i8 signext, i32) #1

declare dso_local i64 @time_after_eq(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
