; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_pcwd.c_pcwd_get_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_pcwd.c_pcwd_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i64 }

@pcwd_private = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PCWD_REVISION_A = common dso_local global i64 0, align 8
@WD_WDRST = common dso_local global i32 0, align 4
@WDIOF_CARDRESET = common dso_local global i32 0, align 4
@WD_T110 = common dso_local global i32 0, align 4
@WDIOF_OVERHEAT = common dso_local global i32 0, align 4
@temp_panic = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Temperature overheat trip!\0A\00", align 1
@WD_REVC_WTRP = common dso_local global i32 0, align 4
@WD_REVC_TTRP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @pcwd_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcwd_get_status(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcwd_private, i32 0, i32 1))
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcwd_private, i32 0, i32 0), align 8
  %7 = load i64, i64* @PCWD_REVISION_A, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcwd_private, i32 0, i32 2), align 8
  %11 = call i32 @inb(i64 %10)
  store i32 %11, i32* %3, align 4
  br label %16

12:                                               ; preds = %1
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcwd_private, i32 0, i32 2), align 8
  %14 = add nsw i64 %13, 1
  %15 = call i32 @inb(i64 %14)
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %12, %9
  %17 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcwd_private, i32 0, i32 1))
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcwd_private, i32 0, i32 0), align 8
  %19 = load i64, i64* @PCWD_REVISION_A, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %48

21:                                               ; preds = %16
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @WD_WDRST, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load i32, i32* @WDIOF_CARDRESET, align 4
  %28 = load i32*, i32** %2, align 8
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %27
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %26, %21
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @WD_T110, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %31
  %37 = load i32, i32* @WDIOF_OVERHEAT, align 4
  %38 = load i32*, i32** %2, align 8
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %37
  store i32 %40, i32* %38, align 4
  %41 = load i64, i64* @temp_panic, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = call i32 @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %45 = call i32 (...) @kernel_power_off()
  br label %46

46:                                               ; preds = %43, %36
  br label %47

47:                                               ; preds = %46, %31
  br label %75

48:                                               ; preds = %16
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @WD_REVC_WTRP, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load i32, i32* @WDIOF_CARDRESET, align 4
  %55 = load i32*, i32** %2, align 8
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %54
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %53, %48
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* @WD_REVC_TTRP, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %58
  %64 = load i32, i32* @WDIOF_OVERHEAT, align 4
  %65 = load i32*, i32** %2, align 8
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %64
  store i32 %67, i32* %65, align 4
  %68 = load i64, i64* @temp_panic, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = call i32 @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %72 = call i32 (...) @kernel_power_off()
  br label %73

73:                                               ; preds = %70, %63
  br label %74

74:                                               ; preds = %73, %58
  br label %75

75:                                               ; preds = %74, %47
  ret i32 0
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @kernel_power_off(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
