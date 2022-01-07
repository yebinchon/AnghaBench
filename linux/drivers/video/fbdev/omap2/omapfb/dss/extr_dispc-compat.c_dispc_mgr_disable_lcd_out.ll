; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc-compat.c_dispc_mgr_disable_lcd_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc-compat.c_dispc_mgr_disable_lcd_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@framedone_compl = common dso_local global i32 0, align 4
@dispc_mgr_disable_isr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"failed to register FRAMEDONE isr\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"timeout waiting for FRAME DONE\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"failed to unregister FRAMEDONE isr\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @dispc_mgr_disable_lcd_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispc_mgr_disable_lcd_out(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @framedone_compl, align 4
  %6 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %5)
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @dispc_mgr_is_enabled(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %42

11:                                               ; preds = %1
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @dispc_mgr_get_framedone_irq(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @dispc_mgr_disable_isr, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @omap_dispc_register_isr(i32 %14, i32* @framedone_compl, i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = call i32 @DSSERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %11
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @dispc_mgr_enable(i32 %22, i32 0)
  %24 = load i32, i32* %3, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = call i32 @msleep(i32 100)
  br label %42

28:                                               ; preds = %21
  %29 = call i32 @msecs_to_jiffies(i32 100)
  %30 = call i32 @wait_for_completion_timeout(i32* @framedone_compl, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = call i32 @DSSERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %28
  %35 = load i32, i32* @dispc_mgr_disable_isr, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @omap_dispc_unregister_isr(i32 %35, i32* @framedone_compl, i32 %36)
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = call i32 @DSSERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %42

42:                                               ; preds = %10, %26, %40, %34
  ret void
}

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i32 @dispc_mgr_is_enabled(i32) #1

declare dso_local i32 @dispc_mgr_get_framedone_irq(i32) #1

declare dso_local i32 @omap_dispc_register_isr(i32, i32*, i32) #1

declare dso_local i32 @DSSERR(i8*) #1

declare dso_local i32 @dispc_mgr_enable(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @omap_dispc_unregister_isr(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
