; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_lp8727_charger.c_lp8727_setup_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_lp8727_charger.c_lp8727_setup_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lp8727_chg = type { i32, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@DEFAULT_DEBOUNCE_MSEC = common dso_local global i32 0, align 4
@lp8727_delayed_func = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"invalid irq number: %d\0A\00", align 1
@lp8727_isr_func = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"lp8727_irq\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lp8727_chg*)* @lp8727_setup_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp8727_setup_irq(%struct.lp8727_chg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lp8727_chg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.lp8727_chg* %0, %struct.lp8727_chg** %3, align 8
  %7 = load %struct.lp8727_chg*, %struct.lp8727_chg** %3, align 8
  %8 = getelementptr inbounds %struct.lp8727_chg, %struct.lp8727_chg* %7, i32 0, i32 5
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.lp8727_chg*, %struct.lp8727_chg** %3, align 8
  %13 = getelementptr inbounds %struct.lp8727_chg, %struct.lp8727_chg* %12, i32 0, i32 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.lp8727_chg*, %struct.lp8727_chg** %3, align 8
  %18 = getelementptr inbounds %struct.lp8727_chg, %struct.lp8727_chg* %17, i32 0, i32 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  br label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @DEFAULT_DEBOUNCE_MSEC, align 4
  br label %24

24:                                               ; preds = %22, %16
  %25 = phi i32 [ %21, %16 ], [ %23, %22 ]
  store i32 %25, i32* %6, align 4
  %26 = load %struct.lp8727_chg*, %struct.lp8727_chg** %3, align 8
  %27 = getelementptr inbounds %struct.lp8727_chg, %struct.lp8727_chg* %26, i32 0, i32 3
  %28 = load i32, i32* @lp8727_delayed_func, align 4
  %29 = call i32 @INIT_DELAYED_WORK(i32* %27, i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = icmp sle i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %24
  %33 = load %struct.lp8727_chg*, %struct.lp8727_chg** %3, align 8
  %34 = getelementptr inbounds %struct.lp8727_chg, %struct.lp8727_chg* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @dev_warn(i32 %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %36)
  store i32 0, i32* %2, align 4
  br label %58

38:                                               ; preds = %24
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @lp8727_isr_func, align 4
  %41 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %42 = load i32, i32* @IRQF_ONESHOT, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.lp8727_chg*, %struct.lp8727_chg** %3, align 8
  %45 = call i32 @request_threaded_irq(i32 %39, i32* null, i32 %40, i32 %43, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %struct.lp8727_chg* %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %38
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %2, align 4
  br label %58

50:                                               ; preds = %38
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.lp8727_chg*, %struct.lp8727_chg** %3, align 8
  %53 = getelementptr inbounds %struct.lp8727_chg, %struct.lp8727_chg* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @msecs_to_jiffies(i32 %54)
  %56 = load %struct.lp8727_chg*, %struct.lp8727_chg** %3, align 8
  %57 = getelementptr inbounds %struct.lp8727_chg, %struct.lp8727_chg* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %50, %48, %32
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i32, i8*, %struct.lp8727_chg*) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
