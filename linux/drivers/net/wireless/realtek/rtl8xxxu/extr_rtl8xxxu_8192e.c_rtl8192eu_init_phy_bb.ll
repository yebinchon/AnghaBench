; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_8192e.c_rtl8192eu_init_phy_bb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_8192e.c_rtl8192eu_init_phy_bb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8xxxu_priv = type { i64 }

@REG_SYS_FUNC = common dso_local global i32 0, align 4
@SYS_FUNC_BB_GLB_RSTN = common dso_local global i32 0, align 4
@SYS_FUNC_BBRSTB = common dso_local global i32 0, align 4
@SYS_FUNC_DIO_RF = common dso_local global i32 0, align 4
@RF_ENABLE = common dso_local global i32 0, align 4
@RF_RSTB = common dso_local global i32 0, align 4
@RF_SDMRSTB = common dso_local global i32 0, align 4
@REG_RF_CTRL = common dso_local global i32 0, align 4
@SYS_FUNC_USBA = common dso_local global i32 0, align 4
@SYS_FUNC_USBD = common dso_local global i32 0, align 4
@rtl8192eu_phy_init_table = common dso_local global i32 0, align 4
@rtl8xxx_agc_8192eu_highpa_table = common dso_local global i32 0, align 4
@rtl8xxx_agc_8192eu_std_table = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8xxxu_priv*)* @rtl8192eu_init_phy_bb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8192eu_init_phy_bb(%struct.rtl8xxxu_priv* %0) #0 {
  %2 = alloca %struct.rtl8xxxu_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.rtl8xxxu_priv* %0, %struct.rtl8xxxu_priv** %2, align 8
  %5 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %6 = load i32, i32* @REG_SYS_FUNC, align 4
  %7 = call i32 @rtl8xxxu_read16(%struct.rtl8xxxu_priv* %5, i32 %6)
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
  %16 = load i32, i32* @REG_SYS_FUNC, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @rtl8xxxu_write16(%struct.rtl8xxxu_priv* %15, i32 %16, i32 %17)
  %19 = load i32, i32* @RF_ENABLE, align 4
  %20 = load i32, i32* @RF_RSTB, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @RF_SDMRSTB, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %3, align 4
  %24 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %25 = load i32, i32* @REG_RF_CTRL, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %24, i32 %25, i32 %26)
  %28 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %29 = load i32, i32* @REG_SYS_FUNC, align 4
  %30 = call i32 @rtl8xxxu_read16(%struct.rtl8xxxu_priv* %28, i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* @SYS_FUNC_USBA, align 4
  %32 = load i32, i32* @SYS_FUNC_USBD, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @SYS_FUNC_DIO_RF, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @SYS_FUNC_BB_GLB_RSTN, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @SYS_FUNC_BBRSTB, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* %4, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %4, align 4
  %42 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %43 = load i32, i32* @REG_SYS_FUNC, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @rtl8xxxu_write16(%struct.rtl8xxxu_priv* %42, i32 %43, i32 %44)
  %46 = load i32, i32* @RF_ENABLE, align 4
  %47 = load i32, i32* @RF_RSTB, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @RF_SDMRSTB, align 4
  %50 = or i32 %48, %49
  store i32 %50, i32* %3, align 4
  %51 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %52 = load i32, i32* @REG_RF_CTRL, align 4
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %51, i32 %52, i32 %53)
  %55 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %56 = load i32, i32* @rtl8192eu_phy_init_table, align 4
  %57 = call i32 @rtl8xxxu_init_phy_regs(%struct.rtl8xxxu_priv* %55, i32 %56)
  %58 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %59 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %1
  %63 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %64 = load i32, i32* @rtl8xxx_agc_8192eu_highpa_table, align 4
  %65 = call i32 @rtl8xxxu_init_phy_regs(%struct.rtl8xxxu_priv* %63, i32 %64)
  br label %70

66:                                               ; preds = %1
  %67 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %68 = load i32, i32* @rtl8xxx_agc_8192eu_std_table, align 4
  %69 = call i32 @rtl8xxxu_init_phy_regs(%struct.rtl8xxxu_priv* %67, i32 %68)
  br label %70

70:                                               ; preds = %66, %62
  ret void
}

declare dso_local i32 @rtl8xxxu_read16(%struct.rtl8xxxu_priv*, i32) #1

declare dso_local i32 @rtl8xxxu_write16(%struct.rtl8xxxu_priv*, i32, i32) #1

declare dso_local i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv*, i32, i32) #1

declare dso_local i32 @rtl8xxxu_init_phy_regs(%struct.rtl8xxxu_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
