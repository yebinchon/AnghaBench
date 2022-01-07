; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_bb_cfg.c_rtl88eu_phy_bb_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_bb_cfg.c_rtl88eu_phy_bb_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@REG_SYS_FUNC_EN = common dso_local global i32 0, align 4
@REG_RF_CTRL = common dso_local global i32 0, align 4
@RF_EN = common dso_local global i32 0, align 4
@RF_RSTB = common dso_local global i32 0, align 4
@RF_SDMRSTB = common dso_local global i32 0, align 4
@FEN_USBA = common dso_local global i32 0, align 4
@FEN_USBD = common dso_local global i32 0, align 4
@FEN_BB_GLB_RSTn = common dso_local global i32 0, align 4
@FEN_BBRSTB = common dso_local global i32 0, align 4
@REG_AFE_XTAL_CTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl88eu_phy_bb_config(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %6 = load %struct.adapter*, %struct.adapter** %2, align 8
  %7 = call i32 @rtl88e_phy_init_bb_rf_register_definition(%struct.adapter* %6)
  %8 = load %struct.adapter*, %struct.adapter** %2, align 8
  %9 = load i32, i32* @REG_SYS_FUNC_EN, align 4
  %10 = call i32 @usb_read16(%struct.adapter* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.adapter*, %struct.adapter** %2, align 8
  %12 = load i32, i32* @REG_SYS_FUNC_EN, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @BIT(i32 13)
  %15 = or i32 %13, %14
  %16 = call i32 @BIT(i32 0)
  %17 = or i32 %15, %16
  %18 = call i32 @BIT(i32 1)
  %19 = or i32 %17, %18
  %20 = call i32 @usb_write16(%struct.adapter* %11, i32 %12, i32 %19)
  %21 = load %struct.adapter*, %struct.adapter** %2, align 8
  %22 = load i32, i32* @REG_RF_CTRL, align 4
  %23 = load i32, i32* @RF_EN, align 4
  %24 = load i32, i32* @RF_RSTB, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @RF_SDMRSTB, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @usb_write8(%struct.adapter* %21, i32 %22, i32 %27)
  %29 = load %struct.adapter*, %struct.adapter** %2, align 8
  %30 = load i32, i32* @REG_SYS_FUNC_EN, align 4
  %31 = load i32, i32* @FEN_USBA, align 4
  %32 = load i32, i32* @FEN_USBD, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @FEN_BB_GLB_RSTn, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @FEN_BBRSTB, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @usb_write8(%struct.adapter* %29, i32 %30, i32 %37)
  %39 = load %struct.adapter*, %struct.adapter** %2, align 8
  %40 = call i32 @config_parafile(%struct.adapter* %39)
  store i32 %40, i32* %3, align 4
  %41 = load %struct.adapter*, %struct.adapter** %2, align 8
  %42 = getelementptr inbounds %struct.adapter, %struct.adapter* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 63
  store i32 %46, i32* %5, align 4
  %47 = load %struct.adapter*, %struct.adapter** %2, align 8
  %48 = load i32, i32* @REG_AFE_XTAL_CTRL, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = shl i32 %50, 6
  %52 = or i32 %49, %51
  %53 = call i32 @phy_set_bb_reg(%struct.adapter* %47, i32 %48, i32 8386560, i32 %52)
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @rtl88e_phy_init_bb_rf_register_definition(%struct.adapter*) #1

declare dso_local i32 @usb_read16(%struct.adapter*, i32) #1

declare dso_local i32 @usb_write16(%struct.adapter*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @usb_write8(%struct.adapter*, i32, i32) #1

declare dso_local i32 @config_parafile(%struct.adapter*) #1

declare dso_local i32 @phy_set_bb_reg(%struct.adapter*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
