; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc-compat.c_omap_dispc_wait_for_irq_interruptible_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc-compat.c_omap_dispc_wait_for_irq_interruptible_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@completion = common dso_local global i32 0, align 4
@dispc_irq_wait_handler = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap_dispc_wait_for_irq_interruptible_timeout(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %8 = load i32, i32* @completion, align 4
  %9 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %8)
  %10 = load i32, i32* @dispc_irq_wait_handler, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @omap_dispc_register_isr(i32 %10, i32* @completion, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %38

17:                                               ; preds = %2
  %18 = load i64, i64* %5, align 8
  %19 = call i64 @wait_for_completion_interruptible_timeout(i32* @completion, i64 %18)
  store i64 %19, i64* %7, align 8
  %20 = load i32, i32* @dispc_irq_wait_handler, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @omap_dispc_unregister_isr(i32 %20, i32* @completion, i32 %21)
  %23 = load i64, i64* %7, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load i32, i32* @ETIMEDOUT, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %38

28:                                               ; preds = %17
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* @ERESTARTSYS, align 8
  %31 = sub nsw i64 0, %30
  %32 = icmp eq i64 %29, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i64, i64* @ERESTARTSYS, align 8
  %35 = sub nsw i64 0, %34
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %3, align 4
  br label %38

37:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %33, %25, %15
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i32 @omap_dispc_register_isr(i32, i32*, i32) #1

declare dso_local i64 @wait_for_completion_interruptible_timeout(i32*, i64) #1

declare dso_local i32 @omap_dispc_unregister_isr(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
