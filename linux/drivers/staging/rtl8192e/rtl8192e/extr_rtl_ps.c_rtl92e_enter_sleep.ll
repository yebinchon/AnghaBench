; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_ps.c_rtl92e_enter_sleep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_ps.c_rtl92e_enter_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@MIN_SLEEP_TIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"too short to sleep::%lld < %ld\0A\00", align 1
@MAX_SLEEP_TIME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"========>too long to sleep:%lld > %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92e_enter_sleep(%struct.net_device* %0, i64 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.r8192_priv*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.r8192_priv* @rtllib_priv(%struct.net_device* %9)
  store %struct.r8192_priv* %10, %struct.r8192_priv** %5, align 8
  %11 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %12 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %11, i32 0, i32 0
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = call i64 @msecs_to_jiffies(i32 31)
  %16 = load i64, i64* %4, align 8
  %17 = sub i64 %16, %15
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* @jiffies, align 8
  %19 = load i32, i32* @MIN_SLEEP_TIME, align 4
  %20 = call i64 @msecs_to_jiffies(i32 %19)
  %21 = add i64 %18, %20
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call i64 @time_before(i64 %22, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %2
  %27 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %28 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %27, i32 0, i32 0
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  %31 = load %struct.net_device*, %struct.net_device** %3, align 8
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* @jiffies, align 8
  %34 = sub i64 %32, %33
  %35 = load i32, i32* @MIN_SLEEP_TIME, align 4
  %36 = call i64 @msecs_to_jiffies(i32 %35)
  %37 = call i32 @netdev_info(%struct.net_device* %31, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %34, i64 %36)
  br label %78

38:                                               ; preds = %2
  %39 = load i64, i64* @jiffies, align 8
  %40 = load i32, i32* @MAX_SLEEP_TIME, align 4
  %41 = call i64 @msecs_to_jiffies(i32 %40)
  %42 = add i64 %39, %41
  store i64 %42, i64* %8, align 8
  %43 = load i64, i64* %4, align 8
  %44 = load i64, i64* %8, align 8
  %45 = call i64 @time_after(i64 %43, i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %38
  %48 = load %struct.net_device*, %struct.net_device** %3, align 8
  %49 = load i64, i64* %4, align 8
  %50 = load i64, i64* @jiffies, align 8
  %51 = sub i64 %49, %50
  %52 = load i32, i32* @MAX_SLEEP_TIME, align 4
  %53 = call i64 @msecs_to_jiffies(i32 %52)
  %54 = call i32 @netdev_info(%struct.net_device* %48, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %51, i64 %53)
  %55 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %56 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %55, i32 0, i32 0
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  br label %78

59:                                               ; preds = %38
  %60 = load i64, i64* %4, align 8
  %61 = load i64, i64* @jiffies, align 8
  %62 = sub i64 %60, %61
  store i64 %62, i64* %6, align 8
  %63 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %64 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i64, i64* %6, align 8
  %68 = call i32 @schedule_delayed_work(i32* %66, i64 %67)
  %69 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %70 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = call i32 @schedule_delayed_work(i32* %72, i64 0)
  %74 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %75 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %74, i32 0, i32 0
  %76 = load i64, i64* %7, align 8
  %77 = call i32 @spin_unlock_irqrestore(i32* %75, i64 %76)
  br label %78

78:                                               ; preds = %59, %47, %26
  ret void
}

declare dso_local %struct.r8192_priv* @rtllib_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i64, i64) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @schedule_delayed_work(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
