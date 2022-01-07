; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_core.c_rtl8xxxu_gen1_init_phy_bb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_core.c_rtl8xxxu_gen1_init_phy_bb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8xxxu_priv = type { i32, i64, i32, i64, i64, i64 }

@REG_AFE_PLL_CTRL = common dso_local global i64 0, align 8
@AFE_PLL_320_ENABLE = common dso_local global i32 0, align 4
@REG_SYS_FUNC = common dso_local global i32 0, align 4
@SYS_FUNC_BB_GLB_RSTN = common dso_local global i32 0, align 4
@SYS_FUNC_BBRSTB = common dso_local global i32 0, align 4
@REG_AFE_XTAL_CTRL = common dso_local global i32 0, align 4
@AFE_XTAL_RF_GATE = common dso_local global i32 0, align 4
@AFE_XTAL_BT_GATE = common dso_local global i32 0, align 4
@RF_ENABLE = common dso_local global i32 0, align 4
@RF_RSTB = common dso_local global i32 0, align 4
@RF_SDMRSTB = common dso_local global i32 0, align 4
@REG_RF_CTRL = common dso_local global i64 0, align 8
@rtl8188ru_phy_1t_highpa_table = common dso_local global i32 0, align 4
@rtl8192cu_phy_2t_init_table = common dso_local global i32 0, align 4
@rtl8723a_phy_1t_init_table = common dso_local global i32 0, align 4
@RTL8188R = common dso_local global i64 0, align 8
@REG_OFDM0_AGC_PARM1 = common dso_local global i64 0, align 8
@rtl8xxx_agc_highpa_table = common dso_local global i32 0, align 4
@rtl8xxx_agc_standard_table = common dso_local global i32 0, align 4
@LDOA15_ENABLE = common dso_local global i32 0, align 4
@LDOA15_OBUF = common dso_local global i32 0, align 4
@LDOV12D_ENABLE = common dso_local global i32 0, align 4
@LDOV12D_VADJ_SHIFT = common dso_local global i32 0, align 4
@REG_LDOA15_CTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8xxxu_gen1_init_phy_bb(%struct.rtl8xxxu_priv* %0) #0 {
  %2 = alloca %struct.rtl8xxxu_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rtl8xxxu_priv* %0, %struct.rtl8xxxu_priv** %2, align 8
  %10 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %11 = load i64, i64* @REG_AFE_PLL_CTRL, align 8
  %12 = call i32 @rtl8xxxu_read8(%struct.rtl8xxxu_priv* %10, i64 %11)
  store i32 %12, i32* %3, align 4
  %13 = call i32 @udelay(i32 2)
  %14 = load i32, i32* @AFE_PLL_320_ENABLE, align 4
  %15 = load i32, i32* %3, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %3, align 4
  %17 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %18 = load i64, i64* @REG_AFE_PLL_CTRL, align 8
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %17, i64 %18, i32 %19)
  %21 = call i32 @udelay(i32 2)
  %22 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %23 = load i64, i64* @REG_AFE_PLL_CTRL, align 8
  %24 = add nsw i64 %23, 1
  %25 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %22, i64 %24, i32 255)
  %26 = call i32 @udelay(i32 2)
  %27 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %28 = load i32, i32* @REG_SYS_FUNC, align 4
  %29 = call i32 @rtl8xxxu_read16(%struct.rtl8xxxu_priv* %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* @SYS_FUNC_BB_GLB_RSTN, align 4
  %31 = load i32, i32* @SYS_FUNC_BBRSTB, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* %8, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %8, align 4
  %35 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %36 = load i32, i32* @REG_SYS_FUNC, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @rtl8xxxu_write16(%struct.rtl8xxxu_priv* %35, i32 %36, i32 %37)
  %39 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %40 = load i32, i32* @REG_AFE_XTAL_CTRL, align 4
  %41 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %39, i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* @AFE_XTAL_RF_GATE, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %9, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %9, align 4
  %46 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %47 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %46, i32 0, i32 5
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %1
  %51 = load i32, i32* @AFE_XTAL_BT_GATE, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %9, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %50, %1
  %56 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %57 = load i32, i32* @REG_AFE_XTAL_CTRL, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %56, i32 %57, i32 %58)
  %60 = load i32, i32* @RF_ENABLE, align 4
  %61 = load i32, i32* @RF_RSTB, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @RF_SDMRSTB, align 4
  %64 = or i32 %62, %63
  store i32 %64, i32* %3, align 4
  %65 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %66 = load i64, i64* @REG_RF_CTRL, align 8
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %65, i64 %66, i32 %67)
  %69 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %70 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %55
  %74 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %75 = load i32, i32* @rtl8188ru_phy_1t_highpa_table, align 4
  %76 = call i32 @rtl8xxxu_init_phy_regs(%struct.rtl8xxxu_priv* %74, i32 %75)
  br label %91

77:                                               ; preds = %55
  %78 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %79 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp eq i32 %80, 2
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %84 = load i32, i32* @rtl8192cu_phy_2t_init_table, align 4
  %85 = call i32 @rtl8xxxu_init_phy_regs(%struct.rtl8xxxu_priv* %83, i32 %84)
  br label %90

86:                                               ; preds = %77
  %87 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %88 = load i32, i32* @rtl8723a_phy_1t_init_table, align 4
  %89 = call i32 @rtl8xxxu_init_phy_regs(%struct.rtl8xxxu_priv* %87, i32 %88)
  br label %90

90:                                               ; preds = %86, %82
  br label %91

91:                                               ; preds = %90, %73
  %92 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %93 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @RTL8188R, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %117

97:                                               ; preds = %91
  %98 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %99 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %117

102:                                              ; preds = %97
  %103 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %104 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %103, i32 0, i32 4
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %102
  %108 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %109 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = icmp eq i32 %110, 1
  br i1 %111, label %112, label %117

112:                                              ; preds = %107
  %113 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %114 = load i64, i64* @REG_OFDM0_AGC_PARM1, align 8
  %115 = add nsw i64 %114, 2
  %116 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %113, i64 %115, i32 80)
  br label %117

117:                                              ; preds = %112, %107, %102, %97, %91
  %118 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %119 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %117
  %123 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %124 = load i32, i32* @rtl8xxx_agc_highpa_table, align 4
  %125 = call i32 @rtl8xxxu_init_phy_regs(%struct.rtl8xxxu_priv* %123, i32 %124)
  br label %130

126:                                              ; preds = %117
  %127 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %128 = load i32, i32* @rtl8xxx_agc_standard_table, align 4
  %129 = call i32 @rtl8xxxu_init_phy_regs(%struct.rtl8xxxu_priv* %127, i32 %128)
  br label %130

130:                                              ; preds = %126, %122
  %131 = load i32, i32* @LDOA15_ENABLE, align 4
  %132 = load i32, i32* @LDOA15_OBUF, align 4
  %133 = or i32 %131, %132
  store i32 %133, i32* %4, align 4
  %134 = load i32, i32* @LDOV12D_ENABLE, align 4
  %135 = call i32 @BIT(i32 2)
  %136 = or i32 %134, %135
  %137 = load i32, i32* @LDOV12D_VADJ_SHIFT, align 4
  %138 = shl i32 2, %137
  %139 = or i32 %136, %138
  store i32 %139, i32* %5, align 4
  store i32 87, i32* %7, align 4
  store i32 1, i32* %6, align 4
  %140 = load i32, i32* %6, align 4
  %141 = shl i32 %140, 24
  %142 = load i32, i32* %7, align 4
  %143 = shl i32 %142, 16
  %144 = or i32 %141, %143
  %145 = load i32, i32* %5, align 4
  %146 = shl i32 %145, 8
  %147 = or i32 %144, %146
  %148 = load i32, i32* %4, align 4
  %149 = or i32 %147, %148
  store i32 %149, i32* %9, align 4
  %150 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %151 = load i32, i32* @REG_LDOA15_CTRL, align 4
  %152 = load i32, i32* %9, align 4
  %153 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %150, i32 %151, i32 %152)
  ret void
}

declare dso_local i32 @rtl8xxxu_read8(%struct.rtl8xxxu_priv*, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv*, i64, i32) #1

declare dso_local i32 @rtl8xxxu_read16(%struct.rtl8xxxu_priv*, i32) #1

declare dso_local i32 @rtl8xxxu_write16(%struct.rtl8xxxu_priv*, i32, i32) #1

declare dso_local i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv*, i32) #1

declare dso_local i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv*, i32, i32) #1

declare dso_local i32 @rtl8xxxu_init_phy_regs(%struct.rtl8xxxu_priv*, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
