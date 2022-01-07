; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_alim7101_wdt.c_wdt_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_alim7101_wdt.c_wdt_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@alim7101_pmu = common dso_local global i32 0, align 4
@ALI_7101_WDT = common dso_local global i32 0, align 4
@WDT_ENABLE = common dso_local global i32 0, align 4
@ALI_WDT_ARM = common dso_local global i8 0, align 1
@use_gpio = common dso_local global i64 0, align 8
@ALI_7101_GPIO_O = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @wdt_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wdt_change(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @alim7101_pmu, align 4
  %5 = load i32, i32* @ALI_7101_WDT, align 4
  %6 = call i32 @pci_read_config_byte(i32 %4, i32 %5, i8* %3)
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @WDT_ENABLE, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %34

10:                                               ; preds = %1
  %11 = load i32, i32* @alim7101_pmu, align 4
  %12 = load i32, i32* @ALI_7101_WDT, align 4
  %13 = load i8, i8* %3, align 1
  %14 = sext i8 %13 to i32
  %15 = load i8, i8* @ALI_WDT_ARM, align 1
  %16 = sext i8 %15 to i32
  %17 = or i32 %14, %16
  %18 = trunc i32 %17 to i8
  %19 = call i32 @pci_write_config_byte(i32 %11, i32 %12, i8 signext %18)
  %20 = load i64, i64* @use_gpio, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %10
  %23 = load i32, i32* @alim7101_pmu, align 4
  %24 = load i32, i32* @ALI_7101_GPIO_O, align 4
  %25 = call i32 @pci_read_config_byte(i32 %23, i32 %24, i8* %3)
  %26 = load i32, i32* @alim7101_pmu, align 4
  %27 = load i32, i32* @ALI_7101_GPIO_O, align 4
  %28 = load i8, i8* %3, align 1
  %29 = sext i8 %28 to i32
  %30 = and i32 %29, -33
  %31 = trunc i32 %30 to i8
  %32 = call i32 @pci_write_config_byte(i32 %26, i32 %27, i8 signext %31)
  br label %33

33:                                               ; preds = %22, %10
  br label %59

34:                                               ; preds = %1
  %35 = load i32, i32* @alim7101_pmu, align 4
  %36 = load i32, i32* @ALI_7101_WDT, align 4
  %37 = load i8, i8* %3, align 1
  %38 = sext i8 %37 to i32
  %39 = load i8, i8* @ALI_WDT_ARM, align 1
  %40 = sext i8 %39 to i32
  %41 = xor i32 %40, -1
  %42 = and i32 %38, %41
  %43 = trunc i32 %42 to i8
  %44 = call i32 @pci_write_config_byte(i32 %35, i32 %36, i8 signext %43)
  %45 = load i64, i64* @use_gpio, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %34
  %48 = load i32, i32* @alim7101_pmu, align 4
  %49 = load i32, i32* @ALI_7101_GPIO_O, align 4
  %50 = call i32 @pci_read_config_byte(i32 %48, i32 %49, i8* %3)
  %51 = load i32, i32* @alim7101_pmu, align 4
  %52 = load i32, i32* @ALI_7101_GPIO_O, align 4
  %53 = load i8, i8* %3, align 1
  %54 = sext i8 %53 to i32
  %55 = or i32 %54, 32
  %56 = trunc i32 %55 to i8
  %57 = call i32 @pci_write_config_byte(i32 %51, i32 %52, i8 signext %56)
  br label %58

58:                                               ; preds = %47, %34
  br label %59

59:                                               ; preds = %58, %33
  ret void
}

declare dso_local i32 @pci_read_config_byte(i32, i32, i8*) #1

declare dso_local i32 @pci_write_config_byte(i32, i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
