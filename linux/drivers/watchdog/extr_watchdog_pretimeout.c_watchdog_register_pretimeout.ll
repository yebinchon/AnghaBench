; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_watchdog_pretimeout.c_watchdog_register_pretimeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_watchdog_pretimeout.c_watchdog_register_pretimeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.watchdog_pretimeout = type { %struct.watchdog_device*, i32 }

@WDIOF_PRETIMEOUT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pretimeout_lock = common dso_local global i32 0, align 4
@pretimeout_list = common dso_local global i32 0, align 4
@default_gov = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @watchdog_register_pretimeout(%struct.watchdog_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.watchdog_device*, align 8
  %4 = alloca %struct.watchdog_pretimeout*, align 8
  store %struct.watchdog_device* %0, %struct.watchdog_device** %3, align 8
  %5 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %6 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @WDIOF_PRETIMEOUT, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %34

14:                                               ; preds = %1
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.watchdog_pretimeout* @kzalloc(i32 16, i32 %15)
  store %struct.watchdog_pretimeout* %16, %struct.watchdog_pretimeout** %4, align 8
  %17 = load %struct.watchdog_pretimeout*, %struct.watchdog_pretimeout** %4, align 8
  %18 = icmp ne %struct.watchdog_pretimeout* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %34

22:                                               ; preds = %14
  %23 = call i32 @spin_lock_irq(i32* @pretimeout_lock)
  %24 = load %struct.watchdog_pretimeout*, %struct.watchdog_pretimeout** %4, align 8
  %25 = getelementptr inbounds %struct.watchdog_pretimeout, %struct.watchdog_pretimeout* %24, i32 0, i32 1
  %26 = call i32 @list_add(i32* %25, i32* @pretimeout_list)
  %27 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %28 = load %struct.watchdog_pretimeout*, %struct.watchdog_pretimeout** %4, align 8
  %29 = getelementptr inbounds %struct.watchdog_pretimeout, %struct.watchdog_pretimeout* %28, i32 0, i32 0
  store %struct.watchdog_device* %27, %struct.watchdog_device** %29, align 8
  %30 = load i32, i32* @default_gov, align 4
  %31 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %32 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = call i32 @spin_unlock_irq(i32* @pretimeout_lock)
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %22, %19, %13
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.watchdog_pretimeout* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
