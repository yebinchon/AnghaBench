; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_da9062_wdt.c_da9062_reset_watchdog_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_da9062_wdt.c_da9062_reset_watchdog_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9062_watchdog = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DA9062AA_CONTROL_F = common dso_local global i32 0, align 4
@DA9062AA_WATCHDOG_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.da9062_watchdog*)* @da9062_reset_watchdog_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9062_reset_watchdog_timer(%struct.da9062_watchdog* %0) #0 {
  %2 = alloca %struct.da9062_watchdog*, align 8
  store %struct.da9062_watchdog* %0, %struct.da9062_watchdog** %2, align 8
  %3 = load %struct.da9062_watchdog*, %struct.da9062_watchdog** %2, align 8
  %4 = getelementptr inbounds %struct.da9062_watchdog, %struct.da9062_watchdog* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @DA9062AA_CONTROL_F, align 4
  %9 = load i32, i32* @DA9062AA_WATCHDOG_MASK, align 4
  %10 = load i32, i32* @DA9062AA_WATCHDOG_MASK, align 4
  %11 = call i32 @regmap_update_bits(i32 %7, i32 %8, i32 %9, i32 %10)
  ret i32 %11
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
