; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc-compat.c_dispc_mgr_disable_digit_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc-compat.c_dispc_mgr_disable_digit_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@framedone_compl = common dso_local global i32 0, align 4
@OMAP_DSS_CHANNEL_DIGIT = common dso_local global i32 0, align 4
@dispc_mgr_disable_isr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to register %x isr\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"timeout waiting for digit out to stop\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to unregister %x isr\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dispc_mgr_disable_digit_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispc_mgr_disable_digit_out() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* @framedone_compl, align 4
  %6 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %5)
  %7 = load i32, i32* @OMAP_DSS_CHANNEL_DIGIT, align 4
  %8 = call i32 @dispc_mgr_is_enabled(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %0
  br label %59

11:                                               ; preds = %0
  %12 = load i32, i32* @OMAP_DSS_CHANNEL_DIGIT, align 4
  %13 = call i64 @dispc_mgr_get_framedone_irq(i32 %12)
  store i64 %13, i64* %3, align 8
  store i32 1, i32* %4, align 4
  %14 = load i64, i64* %3, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* @OMAP_DSS_CHANNEL_DIGIT, align 4
  %18 = call i64 @dispc_mgr_get_vsync_irq(i32 %17)
  store i64 %18, i64* %3, align 8
  store i32 2, i32* %4, align 4
  br label %19

19:                                               ; preds = %16, %11
  %20 = load i32, i32* @dispc_mgr_disable_isr, align 4
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @omap_dispc_register_isr(i32 %20, i32* @framedone_compl, i64 %21)
  store i32 %22, i32* %1, align 4
  %23 = load i32, i32* %1, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i64, i64* %3, align 8
  %27 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %26)
  br label %28

28:                                               ; preds = %25, %19
  %29 = load i32, i32* @OMAP_DSS_CHANNEL_DIGIT, align 4
  %30 = call i32 @dispc_mgr_enable(i32 %29, i32 0)
  %31 = load i32, i32* %1, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = call i32 @msleep(i32 100)
  br label %59

35:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %47, %35
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  %41 = call i32 @msecs_to_jiffies(i32 100)
  %42 = call i32 @wait_for_completion_timeout(i32* @framedone_compl, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %40
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %2, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %2, align 4
  br label %36

50:                                               ; preds = %36
  %51 = load i32, i32* @dispc_mgr_disable_isr, align 4
  %52 = load i64, i64* %3, align 8
  %53 = call i32 @omap_dispc_unregister_isr(i32 %51, i32* @framedone_compl, i64 %52)
  store i32 %53, i32* %1, align 4
  %54 = load i32, i32* %1, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i64, i64* %3, align 8
  %58 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %57)
  br label %59

59:                                               ; preds = %10, %33, %56, %50
  ret void
}

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i32 @dispc_mgr_is_enabled(i32) #1

declare dso_local i64 @dispc_mgr_get_framedone_irq(i32) #1

declare dso_local i64 @dispc_mgr_get_vsync_irq(i32) #1

declare dso_local i32 @omap_dispc_register_isr(i32, i32*, i64) #1

declare dso_local i32 @DSSERR(i8*, ...) #1

declare dso_local i32 @dispc_mgr_enable(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @omap_dispc_unregister_isr(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
