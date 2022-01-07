; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_wdt.c_wdt_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_wdt.c_wdt_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wdt_lock = common dso_local global i32 0, align 4
@WDT_SR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"WDT status %d\0A\00", align 1
@type = common dso_local global i32 0, align 4
@tachometer = common dso_local global i64 0, align 8
@WDC_SR_FANGOOD = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Possible fan fault\0A\00", align 1
@WDC_SR_WCCR = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Reset in 5ms\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @wdt_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wdt_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = call i32 @spin_lock(i32* @wdt_lock)
  %7 = load i32, i32* @WDT_SR, align 4
  %8 = call zeroext i8 @inb_p(i32 %7)
  store i8 %8, i8* %5, align 1
  %9 = load i8, i8* %5, align 1
  %10 = zext i8 %9 to i32
  %11 = call i32 (i8*, ...) @pr_crit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* @type, align 4
  %13 = icmp eq i32 %12, 501
  br i1 %13, label %14, label %30

14:                                               ; preds = %2
  %15 = load i8, i8* %5, align 1
  %16 = call i32 @wdt_decode_501(i8 zeroext %15)
  %17 = load i64, i64* @tachometer, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %14
  %20 = load i8, i8* %5, align 1
  %21 = zext i8 %20 to i32
  %22 = load i8, i8* @WDC_SR_FANGOOD, align 1
  %23 = zext i8 %22 to i32
  %24 = and i32 %21, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %19
  %27 = call i32 (i8*, ...) @pr_crit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %19
  br label %29

29:                                               ; preds = %28, %14
  br label %30

30:                                               ; preds = %29, %2
  %31 = load i8, i8* %5, align 1
  %32 = zext i8 %31 to i32
  %33 = load i8, i8* @WDC_SR_WCCR, align 1
  %34 = zext i8 %33 to i32
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %30
  %38 = call i32 (i8*, ...) @pr_crit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %30
  %40 = call i32 @spin_unlock(i32* @wdt_lock)
  %41 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %41
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local zeroext i8 @inb_p(i32) #1

declare dso_local i32 @pr_crit(i8*, ...) #1

declare dso_local i32 @wdt_decode_501(i8 zeroext) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
