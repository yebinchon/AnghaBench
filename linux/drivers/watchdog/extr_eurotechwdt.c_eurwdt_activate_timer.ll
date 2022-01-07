; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_eurotechwdt.c_eurwdt_activate_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_eurotechwdt.c_eurwdt_activate_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WDT_CTRL_REG = common dso_local global i32 0, align 4
@WDT_OUTPIN_CFG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"int\00", align 1
@ev = common dso_local global i32 0, align 4
@WDT_EVENT_INT = common dso_local global i32 0, align 4
@WDT_EVENT_REBOOT = common dso_local global i32 0, align 4
@irq = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"invalid irq number\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"interrupt disabled\0A\00", align 1
@WDT_TIMER_CFG = common dso_local global i32 0, align 4
@WDT_UNIT_SEL = common dso_local global i32 0, align 4
@WDT_UNIT_SECS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @eurwdt_activate_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eurwdt_activate_timer() #0 {
  %1 = call i32 (...) @eurwdt_disable_timer()
  %2 = load i32, i32* @WDT_CTRL_REG, align 4
  %3 = call i32 @eurwdt_write_reg(i32 %2, i32 1)
  %4 = load i32, i32* @WDT_OUTPIN_CFG, align 4
  %5 = load i32, i32* @ev, align 4
  %6 = call i32 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* @WDT_EVENT_INT, align 4
  br label %12

10:                                               ; preds = %0
  %11 = load i32, i32* @WDT_EVENT_REBOOT, align 4
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  %14 = call i32 @eurwdt_write_reg(i32 %4, i32 %13)
  %15 = load i32, i32* @irq, align 4
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %23, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* @irq, align 4
  %19 = icmp sgt i32 %18, 15
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* @irq, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20, %17, %12
  %24 = call i32 @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* @irq, align 4
  br label %25

25:                                               ; preds = %23, %20
  %26 = load i32, i32* @irq, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = call i32 @pr_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %25
  %31 = load i32, i32* @WDT_TIMER_CFG, align 4
  %32 = load i32, i32* @irq, align 4
  %33 = shl i32 %32, 4
  %34 = call i32 @eurwdt_write_reg(i32 %31, i32 %33)
  %35 = load i32, i32* @WDT_UNIT_SEL, align 4
  %36 = load i32, i32* @WDT_UNIT_SECS, align 4
  %37 = call i32 @eurwdt_write_reg(i32 %35, i32 %36)
  %38 = call i32 @eurwdt_set_timeout(i32 0)
  ret void
}

declare dso_local i32 @eurwdt_disable_timer(...) #1

declare dso_local i32 @eurwdt_write_reg(i32, i32) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @eurwdt_set_timeout(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
