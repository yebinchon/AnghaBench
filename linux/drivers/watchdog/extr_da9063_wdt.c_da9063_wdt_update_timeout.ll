; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_da9063_wdt.c_da9063_wdt_update_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_da9063_wdt.c_da9063_wdt_update_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9063 = type { i32 }

@DA9063_REG_CONTROL_D = common dso_local global i32 0, align 4
@DA9063_TWDSCALE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.da9063*, i32)* @da9063_wdt_update_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9063_wdt_update_timeout(%struct.da9063* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.da9063*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.da9063* %0, %struct.da9063** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.da9063*, %struct.da9063** %4, align 8
  %9 = call i32 @da9063_wdt_disable_timer(%struct.da9063* %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %3, align 4
  br label %25

14:                                               ; preds = %2
  %15 = call i32 @usleep_range(i32 150, i32 300)
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @da9063_wdt_timeout_to_sel(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.da9063*, %struct.da9063** %4, align 8
  %19 = getelementptr inbounds %struct.da9063, %struct.da9063* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @DA9063_REG_CONTROL_D, align 4
  %22 = load i32, i32* @DA9063_TWDSCALE_MASK, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @regmap_update_bits(i32 %20, i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %14, %12
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @da9063_wdt_disable_timer(%struct.da9063*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @da9063_wdt_timeout_to_sel(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
