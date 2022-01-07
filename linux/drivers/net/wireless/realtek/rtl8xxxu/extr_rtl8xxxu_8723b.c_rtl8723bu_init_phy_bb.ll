; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_8723b.c_rtl8723bu_init_phy_bb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_8723b.c_rtl8723bu_init_phy_bb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8xxxu_priv = type { i32 }

@REG_SYS_FUNC = common dso_local global i64 0, align 8
@SYS_FUNC_BB_GLB_RSTN = common dso_local global i32 0, align 4
@SYS_FUNC_BBRSTB = common dso_local global i32 0, align 4
@SYS_FUNC_DIO_RF = common dso_local global i32 0, align 4
@REG_S0S1_PATH_SWITCH = common dso_local global i32 0, align 4
@RF_ENABLE = common dso_local global i32 0, align 4
@RF_RSTB = common dso_local global i32 0, align 4
@RF_SDMRSTB = common dso_local global i32 0, align 4
@REG_RF_CTRL = common dso_local global i64 0, align 8
@REG_AFE_XTAL_CTRL = common dso_local global i64 0, align 8
@rtl8723b_phy_1t_init_table = common dso_local global i32 0, align 4
@rtl8xxx_agc_8723bu_table = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8xxxu_priv*)* @rtl8723bu_init_phy_bb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8723bu_init_phy_bb(%struct.rtl8xxxu_priv* %0) #0 {
  %2 = alloca %struct.rtl8xxxu_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.rtl8xxxu_priv* %0, %struct.rtl8xxxu_priv** %2, align 8
  %5 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %6 = load i64, i64* @REG_SYS_FUNC, align 8
  %7 = call i32 @rtl8xxxu_read16(%struct.rtl8xxxu_priv* %5, i64 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* @SYS_FUNC_BB_GLB_RSTN, align 4
  %9 = load i32, i32* @SYS_FUNC_BBRSTB, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @SYS_FUNC_DIO_RF, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* %4, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %4, align 4
  %15 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %16 = load i64, i64* @REG_SYS_FUNC, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @rtl8xxxu_write16(%struct.rtl8xxxu_priv* %15, i64 %16, i32 %17)
  %19 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %20 = load i32, i32* @REG_S0S1_PATH_SWITCH, align 4
  %21 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %19, i32 %20, i32 0)
  %22 = load i32, i32* @RF_ENABLE, align 4
  %23 = load i32, i32* @RF_RSTB, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @RF_SDMRSTB, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %3, align 4
  %27 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %28 = load i64, i64* @REG_RF_CTRL, align 8
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %27, i64 %28, i32 %29)
  %31 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %32 = load i64, i64* @REG_SYS_FUNC, align 8
  %33 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %31, i64 %32, i32 227)
  %34 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %35 = load i64, i64* @REG_AFE_XTAL_CTRL, align 8
  %36 = add nsw i64 %35, 1
  %37 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %34, i64 %36, i32 128)
  %38 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %39 = load i32, i32* @rtl8723b_phy_1t_init_table, align 4
  %40 = call i32 @rtl8xxxu_init_phy_regs(%struct.rtl8xxxu_priv* %38, i32 %39)
  %41 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %42 = load i32, i32* @rtl8xxx_agc_8723bu_table, align 4
  %43 = call i32 @rtl8xxxu_init_phy_regs(%struct.rtl8xxxu_priv* %41, i32 %42)
  ret void
}

declare dso_local i32 @rtl8xxxu_read16(%struct.rtl8xxxu_priv*, i64) #1

declare dso_local i32 @rtl8xxxu_write16(%struct.rtl8xxxu_priv*, i64, i32) #1

declare dso_local i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv*, i32, i32) #1

declare dso_local i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv*, i64, i32) #1

declare dso_local i32 @rtl8xxxu_init_phy_regs(%struct.rtl8xxxu_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
