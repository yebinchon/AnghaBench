; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_speakup_dtlk.c_synth_read_tts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_speakup_dtlk.c_synth_read_tts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@synth_status = common dso_local global i32 0, align 4
@speakup_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 ()* @synth_read_tts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @synth_read_tts() #0 {
  %1 = alloca i32, align 4
  br label %2

2:                                                ; preds = %6, %0
  %3 = call i64 (...) @synth_readable()
  %4 = icmp ne i64 %3, 0
  %5 = xor i1 %4, true
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = call i32 (...) @cpu_relax()
  br label %2

8:                                                ; preds = %2
  %9 = load i32, i32* @synth_status, align 4
  %10 = and i32 %9, 127
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @speakup_info, i32 0, i32 0), align 4
  %13 = call i32 @outb_p(i32 %11, i32 %12)
  br label %14

14:                                               ; preds = %17, %8
  %15 = call i64 (...) @synth_readable()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = call i32 (...) @cpu_relax()
  br label %14

19:                                               ; preds = %14
  %20 = load i32, i32* %1, align 4
  %21 = trunc i32 %20 to i8
  ret i8 %21
}

declare dso_local i64 @synth_readable(...) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @outb_p(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
