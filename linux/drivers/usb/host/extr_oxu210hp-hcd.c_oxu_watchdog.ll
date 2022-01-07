; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_oxu210hp-hcd.c_oxu_watchdog.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_oxu210hp-hcd.c_oxu_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxu_hcd = type { i32, i32, i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.timer_list = type { i32 }

@watchdog = common dso_local global i32 0, align 4
@STS_IAA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"lost IAA\0A\00", align 1
@TIMER_ASYNC_OFF = common dso_local global i32 0, align 4
@oxu = common dso_local global %struct.oxu_hcd* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @oxu_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oxu_watchdog(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.oxu_hcd*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %7 = ptrtoint %struct.oxu_hcd* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @watchdog, align 4
  %10 = call %struct.oxu_hcd* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.oxu_hcd* %10, %struct.oxu_hcd** %3, align 8
  %11 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %12 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %11, i32 0, i32 1
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %16 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %15, i32 0, i32 5
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %1
  %20 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %21 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %20, i32 0, i32 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @readl(i32* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @STS_IAA, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %19
  %30 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %31 = call i32 @oxu_vdbg(%struct.oxu_hcd* %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @STS_IAA, align 4
  %33 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %34 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %33, i32 0, i32 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 @writel(i32 %32, i32* %36)
  %38 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %39 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  br label %40

40:                                               ; preds = %29, %19
  br label %41

41:                                               ; preds = %40, %1
  %42 = load i32, i32* @TIMER_ASYNC_OFF, align 4
  %43 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %44 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %43, i32 0, i32 3
  %45 = call i64 @test_bit(i32 %42, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %49 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %50 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @start_unlink_async(%struct.oxu_hcd* %48, i32 %51)
  br label %53

53:                                               ; preds = %47, %41
  %54 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %55 = call i32 @ehci_work(%struct.oxu_hcd* %54)
  %56 = load %struct.oxu_hcd*, %struct.oxu_hcd** %3, align 8
  %57 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %56, i32 0, i32 1
  %58 = load i64, i64* %4, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  ret void
}

declare dso_local %struct.oxu_hcd* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @oxu_vdbg(%struct.oxu_hcd*, i8*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @start_unlink_async(%struct.oxu_hcd*, i32) #1

declare dso_local i32 @ehci_work(%struct.oxu_hcd*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
