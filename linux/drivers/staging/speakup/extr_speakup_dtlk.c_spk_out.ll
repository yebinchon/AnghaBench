; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_speakup_dtlk.c_spk_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/speakup/extr_speakup_dtlk.c_spk_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@SPK_XMITR_TIMEOUT = common dso_local global i32 0, align 4
@speakup_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8)* @spk_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spk_out(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  store i8 %0, i8* %2, align 1
  %4 = load i32, i32* @SPK_XMITR_TIMEOUT, align 4
  store i32 %4, i32* %3, align 4
  br label %5

5:                                                ; preds = %14, %1
  %6 = call i64 (...) @synth_writable()
  %7 = icmp ne i64 %6, 0
  %8 = xor i1 %7, true
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = load i32, i32* %3, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  br label %16

14:                                               ; preds = %9
  %15 = call i32 @udelay(i32 1)
  br label %5

16:                                               ; preds = %13, %5
  %17 = load i8, i8* %2, align 1
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @speakup_info, i32 0, i32 0), align 4
  %19 = call i32 @outb_p(i8 signext %17, i32 %18)
  %20 = load i32, i32* @SPK_XMITR_TIMEOUT, align 4
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %29, %16
  %22 = call i64 (...) @synth_writable()
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %3, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  br label %31

29:                                               ; preds = %24
  %30 = call i32 @udelay(i32 1)
  br label %21

31:                                               ; preds = %28, %21
  ret void
}

declare dso_local i64 @synth_writable(...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @outb_p(i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
