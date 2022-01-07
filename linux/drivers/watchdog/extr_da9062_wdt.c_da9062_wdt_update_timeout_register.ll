; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_da9062_wdt.c_da9062_wdt_update_timeout_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_da9062_wdt.c_da9062_wdt_update_timeout_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9062_watchdog = type { %struct.da9062* }
%struct.da9062 = type { i32 }

@DA9062AA_CONTROL_D = common dso_local global i32 0, align 4
@DA9062AA_TWDSCALE_MASK = common dso_local global i32 0, align 4
@DA9062_TWDSCALE_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.da9062_watchdog*, i32)* @da9062_wdt_update_timeout_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9062_wdt_update_timeout_register(%struct.da9062_watchdog* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.da9062_watchdog*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.da9062*, align 8
  %7 = alloca i32, align 4
  store %struct.da9062_watchdog* %0, %struct.da9062_watchdog** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.da9062_watchdog*, %struct.da9062_watchdog** %4, align 8
  %9 = getelementptr inbounds %struct.da9062_watchdog, %struct.da9062_watchdog* %8, i32 0, i32 0
  %10 = load %struct.da9062*, %struct.da9062** %9, align 8
  store %struct.da9062* %10, %struct.da9062** %6, align 8
  %11 = load %struct.da9062_watchdog*, %struct.da9062_watchdog** %4, align 8
  %12 = call i32 @da9062_reset_watchdog_timer(%struct.da9062_watchdog* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %33

17:                                               ; preds = %2
  %18 = load %struct.da9062*, %struct.da9062** %6, align 8
  %19 = getelementptr inbounds %struct.da9062, %struct.da9062* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @DA9062AA_CONTROL_D, align 4
  %22 = load i32, i32* @DA9062AA_TWDSCALE_MASK, align 4
  %23 = load i32, i32* @DA9062_TWDSCALE_DISABLE, align 4
  %24 = call i32 @regmap_update_bits(i32 %20, i32 %21, i32 %22, i32 %23)
  %25 = call i32 @usleep_range(i32 150, i32 300)
  %26 = load %struct.da9062*, %struct.da9062** %6, align 8
  %27 = getelementptr inbounds %struct.da9062, %struct.da9062* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @DA9062AA_CONTROL_D, align 4
  %30 = load i32, i32* @DA9062AA_TWDSCALE_MASK, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @regmap_update_bits(i32 %28, i32 %29, i32 %30, i32 %31)
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %17, %15
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @da9062_reset_watchdog_timer(%struct.da9062_watchdog*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
