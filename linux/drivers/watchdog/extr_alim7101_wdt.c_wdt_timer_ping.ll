; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_alim7101_wdt.c_wdt_timer_ping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_alim7101_wdt.c_wdt_timer_ping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer_list = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@next_heartbeat = common dso_local global i32 0, align 4
@alim7101_pmu = common dso_local global i32 0, align 4
@ALI_7101_WDT = common dso_local global i32 0, align 4
@ALI_WDT_ARM = common dso_local global i8 0, align 1
@use_gpio = common dso_local global i64 0, align 8
@ALI_7101_GPIO_O = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Heartbeat lost! Will not ping the watchdog\0A\00", align 1
@timer = common dso_local global i32 0, align 4
@WDT_INTERVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @wdt_timer_ping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wdt_timer_ping(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca i8, align 1
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load i64, i64* @jiffies, align 8
  %5 = load i32, i32* @next_heartbeat, align 4
  %6 = call i64 @time_before(i64 %4, i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %51

8:                                                ; preds = %1
  %9 = load i32, i32* @alim7101_pmu, align 4
  %10 = call i32 @pci_read_config_byte(i32 %9, i32 146, i8* %3)
  %11 = load i32, i32* @alim7101_pmu, align 4
  %12 = load i32, i32* @ALI_7101_WDT, align 4
  %13 = load i8, i8* %3, align 1
  %14 = sext i8 %13 to i32
  %15 = load i8, i8* @ALI_WDT_ARM, align 1
  %16 = sext i8 %15 to i32
  %17 = xor i32 %16, -1
  %18 = and i32 %14, %17
  %19 = trunc i32 %18 to i8
  %20 = call i32 @pci_write_config_byte(i32 %11, i32 %12, i8 signext %19)
  %21 = load i32, i32* @alim7101_pmu, align 4
  %22 = load i32, i32* @ALI_7101_WDT, align 4
  %23 = load i8, i8* %3, align 1
  %24 = sext i8 %23 to i32
  %25 = load i8, i8* @ALI_WDT_ARM, align 1
  %26 = sext i8 %25 to i32
  %27 = or i32 %24, %26
  %28 = trunc i32 %27 to i8
  %29 = call i32 @pci_write_config_byte(i32 %21, i32 %22, i8 signext %28)
  %30 = load i64, i64* @use_gpio, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %8
  %33 = load i32, i32* @alim7101_pmu, align 4
  %34 = load i32, i32* @ALI_7101_GPIO_O, align 4
  %35 = call i32 @pci_read_config_byte(i32 %33, i32 %34, i8* %3)
  %36 = load i32, i32* @alim7101_pmu, align 4
  %37 = load i32, i32* @ALI_7101_GPIO_O, align 4
  %38 = load i8, i8* %3, align 1
  %39 = sext i8 %38 to i32
  %40 = or i32 %39, 32
  %41 = trunc i32 %40 to i8
  %42 = call i32 @pci_write_config_byte(i32 %36, i32 %37, i8 signext %41)
  %43 = load i32, i32* @alim7101_pmu, align 4
  %44 = load i32, i32* @ALI_7101_GPIO_O, align 4
  %45 = load i8, i8* %3, align 1
  %46 = sext i8 %45 to i32
  %47 = and i32 %46, -33
  %48 = trunc i32 %47 to i8
  %49 = call i32 @pci_write_config_byte(i32 %43, i32 %44, i8 signext %48)
  br label %50

50:                                               ; preds = %32, %8
  br label %53

51:                                               ; preds = %1
  %52 = call i32 @pr_warn(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %50
  %54 = load i64, i64* @jiffies, align 8
  %55 = load i64, i64* @WDT_INTERVAL, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @mod_timer(i32* @timer, i64 %56)
  ret void
}

declare dso_local i64 @time_before(i64, i32) #1

declare dso_local i32 @pci_read_config_byte(i32, i32, i8*) #1

declare dso_local i32 @pci_write_config_byte(i32, i32, i8 signext) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
