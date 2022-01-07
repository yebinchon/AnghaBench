; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_8192e.c_rtl8192e_crystal_afe_adjust.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_8192e.c_rtl8192e_crystal_afe_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8xxxu_priv = type { i32 }

@REG_AFE_PLL_CTRL = common dso_local global i32 0, align 4
@REG_AFE_CTRL4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8xxxu_priv*)* @rtl8192e_crystal_afe_adjust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8192e_crystal_afe_adjust(%struct.rtl8xxxu_priv* %0) #0 {
  %2 = alloca %struct.rtl8xxxu_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.rtl8xxxu_priv* %0, %struct.rtl8xxxu_priv** %2, align 8
  %5 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %6 = load i32, i32* @REG_AFE_PLL_CTRL, align 4
  %7 = call i32 @rtl8xxxu_read8(%struct.rtl8xxxu_priv* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = and i32 %8, 251
  store i32 %9, i32* %3, align 4
  %10 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %11 = load i32, i32* @REG_AFE_PLL_CTRL, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %10, i32 %11, i32 %12)
  %14 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %15 = load i32, i32* @REG_AFE_CTRL4, align 4
  %16 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %17, -897
  store i32 %18, i32* %4, align 4
  %19 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %20 = load i32, i32* @REG_AFE_CTRL4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %19, i32 %20, i32 %21)
  %23 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %24 = load i32, i32* @REG_AFE_PLL_CTRL, align 4
  %25 = call i32 @rtl8xxxu_read8(%struct.rtl8xxxu_priv* %23, i32 %24)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = and i32 %26, 191
  store i32 %27, i32* %3, align 4
  %28 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %29 = load i32, i32* @REG_AFE_PLL_CTRL, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %28, i32 %29, i32 %30)
  %32 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %33 = load i32, i32* @REG_AFE_CTRL4, align 4
  %34 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %32, i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = and i32 %35, -2097153
  store i32 %36, i32* %4, align 4
  %37 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %38 = load i32, i32* @REG_AFE_CTRL4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %37, i32 %38, i32 %39)
  ret void
}

declare dso_local i32 @rtl8xxxu_read8(%struct.rtl8xxxu_priv*, i32) #1

declare dso_local i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv*, i32, i32) #1

declare dso_local i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv*, i32) #1

declare dso_local i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
