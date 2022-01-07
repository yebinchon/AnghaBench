; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_fakekey.c_speakup_fake_down_arrow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_fakekey.c_speakup_fake_down_arrow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reporting_keystroke = common dso_local global i32 0, align 4
@virt_keyboard = common dso_local global i32 0, align 4
@KEY_DOWN = common dso_local global i32 0, align 4
@PRESSED = common dso_local global i32 0, align 4
@RELEASED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @speakup_fake_down_arrow() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* %1, align 8
  %3 = call i32 @local_irq_save(i64 %2)
  %4 = call i32 (...) @preempt_disable()
  %5 = load i32, i32* @reporting_keystroke, align 4
  %6 = call i32 @__this_cpu_write(i32 %5, i32 1)
  %7 = load i32, i32* @virt_keyboard, align 4
  %8 = load i32, i32* @KEY_DOWN, align 4
  %9 = load i32, i32* @PRESSED, align 4
  %10 = call i32 @input_report_key(i32 %7, i32 %8, i32 %9)
  %11 = load i32, i32* @virt_keyboard, align 4
  %12 = load i32, i32* @KEY_DOWN, align 4
  %13 = load i32, i32* @RELEASED, align 4
  %14 = call i32 @input_report_key(i32 %11, i32 %12, i32 %13)
  %15 = load i32, i32* @virt_keyboard, align 4
  %16 = call i32 @input_sync(i32 %15)
  %17 = load i32, i32* @reporting_keystroke, align 4
  %18 = call i32 @__this_cpu_write(i32 %17, i32 0)
  %19 = call i32 (...) @preempt_enable()
  %20 = load i64, i64* %1, align 8
  %21 = call i32 @local_irq_restore(i64 %20)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @__this_cpu_write(i32, i32) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
