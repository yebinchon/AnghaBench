; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_wdt.c_wdt_get_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_wdt.c_wdt_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wdt_lock = common dso_local global i32 0, align 4
@WDT_SR = common dso_local global i32 0, align 4
@WDC_SR_ISOI0 = common dso_local global i8 0, align 1
@WDIOF_EXTERN1 = common dso_local global i32 0, align 4
@WDC_SR_ISII1 = common dso_local global i8 0, align 1
@WDIOF_EXTERN2 = common dso_local global i32 0, align 4
@type = common dso_local global i32 0, align 4
@WDC_SR_TGOOD = common dso_local global i8 0, align 1
@WDIOF_OVERHEAT = common dso_local global i32 0, align 4
@WDC_SR_PSUOVER = common dso_local global i8 0, align 1
@WDIOF_POWEROVER = common dso_local global i32 0, align 4
@WDC_SR_PSUUNDR = common dso_local global i8 0, align 1
@WDIOF_POWERUNDER = common dso_local global i32 0, align 4
@tachometer = common dso_local global i64 0, align 8
@WDC_SR_FANGOOD = common dso_local global i8 0, align 1
@WDIOF_FANFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @wdt_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wdt_get_status() #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 0, i32* %2, align 4
  %4 = load i64, i64* %3, align 8
  %5 = call i32 @spin_lock_irqsave(i32* @wdt_lock, i64 %4)
  %6 = load i32, i32* @WDT_SR, align 4
  %7 = call zeroext i8 @inb_p(i32 %6)
  store i8 %7, i8* %1, align 1
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @spin_unlock_irqrestore(i32* @wdt_lock, i64 %8)
  %10 = load i8, i8* %1, align 1
  %11 = zext i8 %10 to i32
  %12 = load i8, i8* @WDC_SR_ISOI0, align 1
  %13 = zext i8 %12 to i32
  %14 = and i32 %11, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %0
  %17 = load i32, i32* @WDIOF_EXTERN1, align 4
  %18 = load i32, i32* %2, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %16, %0
  %21 = load i8, i8* %1, align 1
  %22 = zext i8 %21 to i32
  %23 = load i8, i8* @WDC_SR_ISII1, align 1
  %24 = zext i8 %23 to i32
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load i32, i32* @WDIOF_EXTERN2, align 4
  %29 = load i32, i32* %2, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %27, %20
  %32 = load i32, i32* @type, align 4
  %33 = icmp eq i32 %32, 501
  br i1 %33, label %34, label %83

34:                                               ; preds = %31
  %35 = load i8, i8* %1, align 1
  %36 = zext i8 %35 to i32
  %37 = load i8, i8* @WDC_SR_TGOOD, align 1
  %38 = zext i8 %37 to i32
  %39 = and i32 %36, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* @WDIOF_OVERHEAT, align 4
  %43 = load i32, i32* %2, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %41, %34
  %46 = load i8, i8* %1, align 1
  %47 = zext i8 %46 to i32
  %48 = load i8, i8* @WDC_SR_PSUOVER, align 1
  %49 = zext i8 %48 to i32
  %50 = and i32 %47, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %45
  %53 = load i32, i32* @WDIOF_POWEROVER, align 4
  %54 = load i32, i32* %2, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %52, %45
  %57 = load i8, i8* %1, align 1
  %58 = zext i8 %57 to i32
  %59 = load i8, i8* @WDC_SR_PSUUNDR, align 1
  %60 = zext i8 %59 to i32
  %61 = and i32 %58, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %56
  %64 = load i32, i32* @WDIOF_POWERUNDER, align 4
  %65 = load i32, i32* %2, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %63, %56
  %68 = load i64, i64* @tachometer, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %67
  %71 = load i8, i8* %1, align 1
  %72 = zext i8 %71 to i32
  %73 = load i8, i8* @WDC_SR_FANGOOD, align 1
  %74 = zext i8 %73 to i32
  %75 = and i32 %72, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %70
  %78 = load i32, i32* @WDIOF_FANFAULT, align 4
  %79 = load i32, i32* %2, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %77, %70
  br label %82

82:                                               ; preds = %81, %67
  br label %83

83:                                               ; preds = %82, %31
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local zeroext i8 @inb_p(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
