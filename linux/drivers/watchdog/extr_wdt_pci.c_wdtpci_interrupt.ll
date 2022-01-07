; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_wdt_pci.c_wdtpci_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_wdt_pci.c_wdtpci_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wdtpci_lock = common dso_local global i32 0, align 4
@WDT_SR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"status %d\0A\00", align 1
@type = common dso_local global i32 0, align 4
@WDC_SR_TGOOD = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Overheat alarm (%d)\0A\00", align 1
@WDT_RT = common dso_local global i32 0, align 4
@WDC_SR_PSUOVER = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"PSU over voltage\0A\00", align 1
@WDC_SR_PSUUNDR = common dso_local global i8 0, align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"PSU under voltage\0A\00", align 1
@tachometer = common dso_local global i64 0, align 8
@WDC_SR_FANGOOD = common dso_local global i8 0, align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Possible fan fault\0A\00", align 1
@WDC_SR_WCCR = common dso_local global i8 0, align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Reset in 5ms\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @wdtpci_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wdtpci_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = call i32 @spin_lock(i32* @wdtpci_lock)
  %7 = load i32, i32* @WDT_SR, align 4
  %8 = call zeroext i8 @inb(i32 %7)
  store i8 %8, i8* %5, align 1
  %9 = call i32 @udelay(i32 8)
  %10 = load i8, i8* %5, align 1
  %11 = zext i8 %10 to i32
  %12 = call i32 (i8*, ...) @pr_crit(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* @type, align 4
  %14 = icmp eq i32 %13, 501
  br i1 %14, label %15, label %60

15:                                               ; preds = %2
  %16 = load i8, i8* %5, align 1
  %17 = zext i8 %16 to i32
  %18 = load i8, i8* @WDC_SR_TGOOD, align 1
  %19 = zext i8 %18 to i32
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* @WDT_RT, align 4
  %24 = call zeroext i8 @inb(i32 %23)
  %25 = zext i8 %24 to i32
  %26 = call i32 (i8*, ...) @pr_crit(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = call i32 @udelay(i32 8)
  br label %28

28:                                               ; preds = %22, %15
  %29 = load i8, i8* %5, align 1
  %30 = zext i8 %29 to i32
  %31 = load i8, i8* @WDC_SR_PSUOVER, align 1
  %32 = zext i8 %31 to i32
  %33 = and i32 %30, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %28
  %36 = call i32 (i8*, ...) @pr_crit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %28
  %38 = load i8, i8* %5, align 1
  %39 = zext i8 %38 to i32
  %40 = load i8, i8* @WDC_SR_PSUUNDR, align 1
  %41 = zext i8 %40 to i32
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %37
  %45 = call i32 (i8*, ...) @pr_crit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %37
  %47 = load i64, i64* @tachometer, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %46
  %50 = load i8, i8* %5, align 1
  %51 = zext i8 %50 to i32
  %52 = load i8, i8* @WDC_SR_FANGOOD, align 1
  %53 = zext i8 %52 to i32
  %54 = and i32 %51, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %49
  %57 = call i32 (i8*, ...) @pr_crit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %49
  br label %59

59:                                               ; preds = %58, %46
  br label %60

60:                                               ; preds = %59, %2
  %61 = load i8, i8* %5, align 1
  %62 = zext i8 %61 to i32
  %63 = load i8, i8* @WDC_SR_WCCR, align 1
  %64 = zext i8 %63 to i32
  %65 = and i32 %62, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %60
  %68 = call i32 (i8*, ...) @pr_crit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %60
  %70 = call i32 @spin_unlock(i32* @wdtpci_lock)
  %71 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %71
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local zeroext i8 @inb(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pr_crit(i8*, ...) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
