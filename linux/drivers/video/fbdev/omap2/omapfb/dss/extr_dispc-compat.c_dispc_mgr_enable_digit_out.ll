; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc-compat.c_dispc_mgr_enable_digit_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc-compat.c_dispc_mgr_enable_digit_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vsync_compl = common dso_local global i32 0, align 4
@OMAP_DSS_CHANNEL_DIGIT = common dso_local global i32 0, align 4
@dispc_digit_out_enable_isr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to register %x isr\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"timeout waiting for digit out to start\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to unregister %x isr\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dispc_mgr_enable_digit_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispc_mgr_enable_digit_out() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @vsync_compl, align 4
  %4 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %3)
  %5 = load i32, i32* @OMAP_DSS_CHANNEL_DIGIT, align 4
  %6 = call i64 @dispc_mgr_is_enabled(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  br label %40

9:                                                ; preds = %0
  %10 = load i32, i32* @OMAP_DSS_CHANNEL_DIGIT, align 4
  %11 = call i32 @dispc_mgr_get_vsync_irq(i32 %10)
  %12 = load i32, i32* @OMAP_DSS_CHANNEL_DIGIT, align 4
  %13 = call i32 @dispc_mgr_get_sync_lost_irq(i32 %12)
  %14 = or i32 %11, %13
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* @dispc_digit_out_enable_isr, align 4
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @omap_dispc_register_isr(i32 %15, i32* @vsync_compl, i32 %16)
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* %1, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %9
  %21 = load i32, i32* %2, align 4
  %22 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %40

23:                                               ; preds = %9
  %24 = load i32, i32* @OMAP_DSS_CHANNEL_DIGIT, align 4
  %25 = call i32 @dispc_mgr_enable(i32 %24, i32 1)
  %26 = call i32 @msecs_to_jiffies(i32 100)
  %27 = call i32 @wait_for_completion_timeout(i32* @vsync_compl, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %23
  %30 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %23
  %32 = load i32, i32* @dispc_digit_out_enable_isr, align 4
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @omap_dispc_unregister_isr(i32 %32, i32* @vsync_compl, i32 %33)
  store i32 %34, i32* %1, align 4
  %35 = load i32, i32* %1, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* %2, align 4
  %39 = call i32 (i8*, ...) @DSSERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %8, %20, %37, %31
  ret void
}

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i64 @dispc_mgr_is_enabled(i32) #1

declare dso_local i32 @dispc_mgr_get_vsync_irq(i32) #1

declare dso_local i32 @dispc_mgr_get_sync_lost_irq(i32) #1

declare dso_local i32 @omap_dispc_register_isr(i32, i32*, i32) #1

declare dso_local i32 @DSSERR(i8*, ...) #1

declare dso_local i32 @dispc_mgr_enable(i32, i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @omap_dispc_unregister_isr(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
