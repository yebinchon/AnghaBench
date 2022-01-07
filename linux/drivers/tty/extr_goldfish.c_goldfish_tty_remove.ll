; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_goldfish.c_goldfish_tty_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_goldfish.c_goldfish_tty_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.goldfish_tty = type { i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@goldfish_tty_lock = common dso_local global i32 0, align 4
@goldfish_tty_driver = common dso_local global i32 0, align 4
@goldfish_tty_current_line_count = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @goldfish_tty_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goldfish_tty_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.goldfish_tty*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.goldfish_tty* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.goldfish_tty* %5, %struct.goldfish_tty** %3, align 8
  %6 = call i32 @mutex_lock(i32* @goldfish_tty_lock)
  %7 = load %struct.goldfish_tty*, %struct.goldfish_tty** %3, align 8
  %8 = getelementptr inbounds %struct.goldfish_tty, %struct.goldfish_tty* %7, i32 0, i32 2
  %9 = call i32 @unregister_console(%struct.TYPE_2__* %8)
  %10 = load i32, i32* @goldfish_tty_driver, align 4
  %11 = load %struct.goldfish_tty*, %struct.goldfish_tty** %3, align 8
  %12 = getelementptr inbounds %struct.goldfish_tty, %struct.goldfish_tty* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @tty_unregister_device(i32 %10, i32 %14)
  %16 = load %struct.goldfish_tty*, %struct.goldfish_tty** %3, align 8
  %17 = getelementptr inbounds %struct.goldfish_tty, %struct.goldfish_tty* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @iounmap(i32* %18)
  %20 = load %struct.goldfish_tty*, %struct.goldfish_tty** %3, align 8
  %21 = getelementptr inbounds %struct.goldfish_tty, %struct.goldfish_tty* %20, i32 0, i32 1
  store i32* null, i32** %21, align 8
  %22 = load %struct.goldfish_tty*, %struct.goldfish_tty** %3, align 8
  %23 = getelementptr inbounds %struct.goldfish_tty, %struct.goldfish_tty* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %26 = call i32 @free_irq(i32 %24, %struct.platform_device* %25)
  %27 = load i64, i64* @goldfish_tty_current_line_count, align 8
  %28 = add nsw i64 %27, -1
  store i64 %28, i64* @goldfish_tty_current_line_count, align 8
  %29 = load i64, i64* @goldfish_tty_current_line_count, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %1
  %32 = call i32 (...) @goldfish_tty_delete_driver()
  br label %33

33:                                               ; preds = %31, %1
  %34 = call i32 @mutex_unlock(i32* @goldfish_tty_lock)
  ret i32 0
}

declare dso_local %struct.goldfish_tty* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @unregister_console(%struct.TYPE_2__*) #1

declare dso_local i32 @tty_unregister_device(i32, i32) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.platform_device*) #1

declare dso_local i32 @goldfish_tty_delete_driver(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
