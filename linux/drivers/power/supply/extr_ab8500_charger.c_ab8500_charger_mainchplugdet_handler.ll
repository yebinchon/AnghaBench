; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_charger.c_ab8500_charger_mainchplugdet_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_charger.c_ab8500_charger_mainchplugdet_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ab8500_charger = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"Main charger plugged\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ab8500_charger_mainchplugdet_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_charger_mainchplugdet_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ab8500_charger*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.ab8500_charger*
  store %struct.ab8500_charger* %7, %struct.ab8500_charger** %5, align 8
  %8 = load %struct.ab8500_charger*, %struct.ab8500_charger** %5, align 8
  %9 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @dev_dbg(i32 %10, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.ab8500_charger*, %struct.ab8500_charger** %5, align 8
  %13 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ab8500_charger*, %struct.ab8500_charger** %5, align 8
  %16 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %15, i32 0, i32 4
  %17 = call i32 @queue_work(i32 %14, i32* %16)
  %18 = load %struct.ab8500_charger*, %struct.ab8500_charger** %5, align 8
  %19 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %18, i32 0, i32 3
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.ab8500_charger*, %struct.ab8500_charger** %5, align 8
  %22 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %21, i32 0, i32 3
  %23 = call i32 @mutex_unlock(i32* %22)
  %24 = load %struct.ab8500_charger*, %struct.ab8500_charger** %5, align 8
  %25 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @is_ab8500(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %2
  %30 = load %struct.ab8500_charger*, %struct.ab8500_charger** %5, align 8
  %31 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ab8500_charger*, %struct.ab8500_charger** %5, align 8
  %34 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %33, i32 0, i32 0
  %35 = load i32, i32* @HZ, align 4
  %36 = call i32 @queue_delayed_work(i32 %32, i32* %34, i32 %35)
  br label %37

37:                                               ; preds = %29, %2
  %38 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %38
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @is_ab8500(i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
