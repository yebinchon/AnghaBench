; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_watchdog_pretimeout.c_watchdog_pretimeout_governor_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_watchdog_pretimeout.c_watchdog_pretimeout_governor_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.governor_priv = type { i32 }

@governor_lock = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@pretimeout_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @watchdog_pretimeout_governor_set(%struct.watchdog_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.watchdog_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.governor_priv*, align 8
  store %struct.watchdog_device* %0, %struct.watchdog_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = call i32 @mutex_lock(i32* @governor_lock)
  %8 = load i8*, i8** %5, align 8
  %9 = call %struct.governor_priv* @find_governor_by_name(i8* %8)
  store %struct.governor_priv* %9, %struct.governor_priv** %6, align 8
  %10 = load %struct.governor_priv*, %struct.governor_priv** %6, align 8
  %11 = icmp ne %struct.governor_priv* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = call i32 @mutex_unlock(i32* @governor_lock)
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %25

16:                                               ; preds = %2
  %17 = call i32 @spin_lock_irq(i32* @pretimeout_lock)
  %18 = load %struct.governor_priv*, %struct.governor_priv** %6, align 8
  %19 = getelementptr inbounds %struct.governor_priv, %struct.governor_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %22 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = call i32 @spin_unlock_irq(i32* @pretimeout_lock)
  %24 = call i32 @mutex_unlock(i32* @governor_lock)
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %16, %12
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.governor_priv* @find_governor_by_name(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
