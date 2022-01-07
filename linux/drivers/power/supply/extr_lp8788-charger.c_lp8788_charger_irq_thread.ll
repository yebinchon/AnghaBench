; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_lp8788-charger.c_lp8788_charger_irq_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_lp8788-charger.c_lp8788_charger_irq_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lp8788_charger = type { i32, i32, i32, %struct.lp8788_charger_platform_data* }
%struct.lp8788_charger_platform_data = type { i64 }

@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @lp8788_charger_irq_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp8788_charger_irq_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.lp8788_charger*, align 8
  %7 = alloca %struct.lp8788_charger_platform_data*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.lp8788_charger*
  store %struct.lp8788_charger* %10, %struct.lp8788_charger** %6, align 8
  %11 = load %struct.lp8788_charger*, %struct.lp8788_charger** %6, align 8
  %12 = getelementptr inbounds %struct.lp8788_charger, %struct.lp8788_charger* %11, i32 0, i32 3
  %13 = load %struct.lp8788_charger_platform_data*, %struct.lp8788_charger_platform_data** %12, align 8
  store %struct.lp8788_charger_platform_data* %13, %struct.lp8788_charger_platform_data** %7, align 8
  store i32 -1, i32* %8, align 4
  %14 = load %struct.lp8788_charger*, %struct.lp8788_charger** %6, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @lp8788_find_irq_id(%struct.lp8788_charger* %14, i32 %15, i32* %8)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @IRQ_NONE, align 4
  store i32 %19, i32* %3, align 4
  br label %51

20:                                               ; preds = %2
  %21 = load i32, i32* %8, align 4
  switch i32 %21, label %31 [
    i32 131, label %22
    i32 130, label %22
    i32 129, label %22
    i32 132, label %22
    i32 128, label %22
  ]

22:                                               ; preds = %20, %20, %20, %20, %20
  %23 = load %struct.lp8788_charger*, %struct.lp8788_charger** %6, align 8
  %24 = getelementptr inbounds %struct.lp8788_charger, %struct.lp8788_charger* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @power_supply_changed(i32 %25)
  %27 = load %struct.lp8788_charger*, %struct.lp8788_charger** %6, align 8
  %28 = getelementptr inbounds %struct.lp8788_charger, %struct.lp8788_charger* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @power_supply_changed(i32 %29)
  br label %32

31:                                               ; preds = %20
  br label %32

32:                                               ; preds = %31, %22
  %33 = load %struct.lp8788_charger_platform_data*, %struct.lp8788_charger_platform_data** %7, align 8
  %34 = icmp ne %struct.lp8788_charger_platform_data* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  br label %49

36:                                               ; preds = %32
  %37 = load %struct.lp8788_charger_platform_data*, %struct.lp8788_charger_platform_data** %7, align 8
  %38 = getelementptr inbounds %struct.lp8788_charger_platform_data, %struct.lp8788_charger_platform_data* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load i32, i32* %8, align 4
  %43 = icmp eq i32 %42, 131
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load %struct.lp8788_charger*, %struct.lp8788_charger** %6, align 8
  %46 = getelementptr inbounds %struct.lp8788_charger, %struct.lp8788_charger* %45, i32 0, i32 0
  %47 = call i32 @schedule_work(i32* %46)
  br label %48

48:                                               ; preds = %44, %41, %36
  br label %49

49:                                               ; preds = %48, %35
  %50 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %49, %18
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @lp8788_find_irq_id(%struct.lp8788_charger*, i32, i32*) #1

declare dso_local i32 @power_supply_changed(i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
