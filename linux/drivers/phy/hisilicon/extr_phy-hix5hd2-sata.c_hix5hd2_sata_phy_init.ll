; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/hisilicon/extr_phy-hix5hd2-sata.c_hix5hd2_sata_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/hisilicon/extr_phy-hix5hd2-sata.c_hix5hd2_sata_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.hix5hd2_priv = type { i64, i64 }

@.str = private unnamed_addr constant [20 x i8] c"hisilicon,power-reg\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Fail read hisilicon,power-reg\0A\00", align 1
@SATA_PHY0_CTLL = common dso_local global i64 0, align 8
@MPLL_MULTIPLIER_MASK = common dso_local global i32 0, align 4
@REF_USE_PAD = common dso_local global i32 0, align 4
@MPLL_MULTIPLIER_50M = common dso_local global i32 0, align 4
@MPLL_MULTIPLIER_SHIFT = common dso_local global i32 0, align 4
@REF_SSP_EN = common dso_local global i32 0, align 4
@PHY_RESET = common dso_local global i32 0, align 4
@SATA_PORT_PHYCTL1 = common dso_local global i64 0, align 8
@AMPLITUDE_MASK = common dso_local global i32 0, align 4
@AMPLITUDE_GEN3 = common dso_local global i32 0, align 4
@AMPLITUDE_GEN3_SHIFT = common dso_local global i32 0, align 4
@AMPLITUDE_GEN2 = common dso_local global i32 0, align 4
@AMPLITUDE_GEN2_SHIFT = common dso_local global i32 0, align 4
@AMPLITUDE_GEN1 = common dso_local global i32 0, align 4
@AMPLITUDE_GEN1_SHIFT = common dso_local global i32 0, align 4
@SATA_PORT_PHYCTL2 = common dso_local global i64 0, align 8
@PREEMPH_MASK = common dso_local global i32 0, align 4
@PREEMPH_GEN3 = common dso_local global i32 0, align 4
@PREEMPH_GEN3_SHIFT = common dso_local global i32 0, align 4
@PREEMPH_GEN2 = common dso_local global i32 0, align 4
@PREEMPH_GEN2_SHIFT = common dso_local global i32 0, align 4
@PREEMPH_GEN1 = common dso_local global i32 0, align 4
@PREEMPH_GEN1_SHIFT = common dso_local global i32 0, align 4
@SATA_PORT_PHYCTL = common dso_local global i64 0, align 8
@SPEED_MODE_MASK = common dso_local global i32 0, align 4
@SPEED_MODE_GEN1 = common dso_local global i32 0, align 4
@HALF_RATE_SHIFT = common dso_local global i32 0, align 4
@PHY_CONFIG_SHIFT = common dso_local global i32 0, align 4
@GEN2_EN_SHIFT = common dso_local global i32 0, align 4
@SPEED_CTRL = common dso_local global i32 0, align 4
@SPEED_MODE_GEN3 = common dso_local global i32 0, align 4
@SPEED_MODE_GEN2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @hix5hd2_sata_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hix5hd2_sata_phy_init(%struct.phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.hix5hd2_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %3, align 8
  %8 = load %struct.phy*, %struct.phy** %3, align 8
  %9 = call %struct.hix5hd2_priv* @phy_get_drvdata(%struct.phy* %8)
  store %struct.hix5hd2_priv* %9, %struct.hix5hd2_priv** %4, align 8
  %10 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %4, align 8
  %11 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %41

14:                                               ; preds = %1
  %15 = load %struct.phy*, %struct.phy** %3, align 8
  %16 = getelementptr inbounds %struct.phy, %struct.phy* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %20 = call i32 @of_property_read_u32_array(i32 %18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32* %19, i32 2)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %14
  %24 = load %struct.phy*, %struct.phy** %3, align 8
  %25 = getelementptr inbounds %struct.phy, %struct.phy* %24, i32 0, i32 0
  %26 = call i32 @dev_err(%struct.TYPE_2__* %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %2, align 4
  br label %227

28:                                               ; preds = %14
  %29 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %4, align 8
  %30 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @BIT(i32 %35)
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @BIT(i32 %38)
  %40 = call i32 @regmap_update_bits(i64 %31, i32 %33, i32 %36, i32 %39)
  br label %41

41:                                               ; preds = %28, %1
  %42 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %4, align 8
  %43 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SATA_PHY0_CTLL, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @readl_relaxed(i64 %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* @MPLL_MULTIPLIER_MASK, align 4
  %49 = load i32, i32* @REF_USE_PAD, align 4
  %50 = or i32 %48, %49
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %5, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* @MPLL_MULTIPLIER_50M, align 4
  %55 = load i32, i32* @MPLL_MULTIPLIER_SHIFT, align 4
  %56 = shl i32 %54, %55
  %57 = load i32, i32* @REF_SSP_EN, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @PHY_RESET, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* %5, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %4, align 8
  %65 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @SATA_PHY0_CTLL, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @writel_relaxed(i32 %63, i64 %68)
  %70 = call i32 @msleep(i32 20)
  %71 = load i32, i32* @PHY_RESET, align 4
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %5, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %4, align 8
  %77 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @SATA_PHY0_CTLL, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @writel_relaxed(i32 %75, i64 %80)
  %82 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %4, align 8
  %83 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @SATA_PORT_PHYCTL1, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @readl_relaxed(i64 %86)
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* @AMPLITUDE_MASK, align 4
  %89 = xor i32 %88, -1
  %90 = load i32, i32* %5, align 4
  %91 = and i32 %90, %89
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* @AMPLITUDE_GEN3, align 4
  %93 = load i32, i32* @AMPLITUDE_GEN3_SHIFT, align 4
  %94 = shl i32 %92, %93
  %95 = load i32, i32* @AMPLITUDE_GEN2, align 4
  %96 = load i32, i32* @AMPLITUDE_GEN2_SHIFT, align 4
  %97 = shl i32 %95, %96
  %98 = or i32 %94, %97
  %99 = load i32, i32* @AMPLITUDE_GEN1, align 4
  %100 = load i32, i32* @AMPLITUDE_GEN1_SHIFT, align 4
  %101 = shl i32 %99, %100
  %102 = or i32 %98, %101
  %103 = load i32, i32* %5, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %5, align 4
  %105 = load i32, i32* %5, align 4
  %106 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %4, align 8
  %107 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @SATA_PORT_PHYCTL1, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i32 @writel_relaxed(i32 %105, i64 %110)
  %112 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %4, align 8
  %113 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @SATA_PORT_PHYCTL2, align 8
  %116 = add nsw i64 %114, %115
  %117 = call i32 @readl_relaxed(i64 %116)
  store i32 %117, i32* %5, align 4
  %118 = load i32, i32* @PREEMPH_MASK, align 4
  %119 = xor i32 %118, -1
  %120 = load i32, i32* %5, align 4
  %121 = and i32 %120, %119
  store i32 %121, i32* %5, align 4
  %122 = load i32, i32* @PREEMPH_GEN3, align 4
  %123 = load i32, i32* @PREEMPH_GEN3_SHIFT, align 4
  %124 = shl i32 %122, %123
  %125 = load i32, i32* @PREEMPH_GEN2, align 4
  %126 = load i32, i32* @PREEMPH_GEN2_SHIFT, align 4
  %127 = shl i32 %125, %126
  %128 = or i32 %124, %127
  %129 = load i32, i32* @PREEMPH_GEN1, align 4
  %130 = load i32, i32* @PREEMPH_GEN1_SHIFT, align 4
  %131 = shl i32 %129, %130
  %132 = or i32 %128, %131
  %133 = load i32, i32* %5, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %5, align 4
  %135 = load i32, i32* %5, align 4
  %136 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %4, align 8
  %137 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @SATA_PORT_PHYCTL2, align 8
  %140 = add nsw i64 %138, %139
  %141 = call i32 @writel_relaxed(i32 %135, i64 %140)
  %142 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %4, align 8
  %143 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @SATA_PORT_PHYCTL, align 8
  %146 = add nsw i64 %144, %145
  %147 = call i32 @readl_relaxed(i64 %146)
  store i32 %147, i32* %5, align 4
  %148 = load i32, i32* @SPEED_MODE_MASK, align 4
  %149 = xor i32 %148, -1
  %150 = load i32, i32* %5, align 4
  %151 = and i32 %150, %149
  store i32 %151, i32* %5, align 4
  %152 = load i32, i32* @SPEED_MODE_GEN1, align 4
  %153 = load i32, i32* @HALF_RATE_SHIFT, align 4
  %154 = shl i32 %152, %153
  %155 = load i32, i32* @SPEED_MODE_GEN1, align 4
  %156 = load i32, i32* @PHY_CONFIG_SHIFT, align 4
  %157 = shl i32 %155, %156
  %158 = or i32 %154, %157
  %159 = load i32, i32* @SPEED_MODE_GEN1, align 4
  %160 = load i32, i32* @GEN2_EN_SHIFT, align 4
  %161 = shl i32 %159, %160
  %162 = or i32 %158, %161
  %163 = load i32, i32* @SPEED_CTRL, align 4
  %164 = or i32 %162, %163
  %165 = load i32, i32* %5, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %5, align 4
  %167 = load i32, i32* %5, align 4
  %168 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %4, align 8
  %169 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @SATA_PORT_PHYCTL, align 8
  %172 = add nsw i64 %170, %171
  %173 = call i32 @writel_relaxed(i32 %167, i64 %172)
  %174 = call i32 @msleep(i32 20)
  %175 = load i32, i32* @SPEED_MODE_MASK, align 4
  %176 = xor i32 %175, -1
  %177 = load i32, i32* %5, align 4
  %178 = and i32 %177, %176
  store i32 %178, i32* %5, align 4
  %179 = load i32, i32* @SPEED_MODE_GEN3, align 4
  %180 = load i32, i32* @HALF_RATE_SHIFT, align 4
  %181 = shl i32 %179, %180
  %182 = load i32, i32* @SPEED_MODE_GEN3, align 4
  %183 = load i32, i32* @PHY_CONFIG_SHIFT, align 4
  %184 = shl i32 %182, %183
  %185 = or i32 %181, %184
  %186 = load i32, i32* @SPEED_MODE_GEN3, align 4
  %187 = load i32, i32* @GEN2_EN_SHIFT, align 4
  %188 = shl i32 %186, %187
  %189 = or i32 %185, %188
  %190 = load i32, i32* @SPEED_CTRL, align 4
  %191 = or i32 %189, %190
  %192 = load i32, i32* %5, align 4
  %193 = or i32 %192, %191
  store i32 %193, i32* %5, align 4
  %194 = load i32, i32* %5, align 4
  %195 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %4, align 8
  %196 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @SATA_PORT_PHYCTL, align 8
  %199 = add nsw i64 %197, %198
  %200 = call i32 @writel_relaxed(i32 %194, i64 %199)
  %201 = load i32, i32* @SPEED_MODE_MASK, align 4
  %202 = load i32, i32* @SPEED_CTRL, align 4
  %203 = or i32 %201, %202
  %204 = xor i32 %203, -1
  %205 = load i32, i32* %5, align 4
  %206 = and i32 %205, %204
  store i32 %206, i32* %5, align 4
  %207 = load i32, i32* @SPEED_MODE_GEN2, align 4
  %208 = load i32, i32* @HALF_RATE_SHIFT, align 4
  %209 = shl i32 %207, %208
  %210 = load i32, i32* @SPEED_MODE_GEN2, align 4
  %211 = load i32, i32* @PHY_CONFIG_SHIFT, align 4
  %212 = shl i32 %210, %211
  %213 = or i32 %209, %212
  %214 = load i32, i32* @SPEED_MODE_GEN2, align 4
  %215 = load i32, i32* @GEN2_EN_SHIFT, align 4
  %216 = shl i32 %214, %215
  %217 = or i32 %213, %216
  %218 = load i32, i32* %5, align 4
  %219 = or i32 %218, %217
  store i32 %219, i32* %5, align 4
  %220 = load i32, i32* %5, align 4
  %221 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %4, align 8
  %222 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @SATA_PORT_PHYCTL, align 8
  %225 = add nsw i64 %223, %224
  %226 = call i32 @writel_relaxed(i32 %220, i64 %225)
  store i32 0, i32* %2, align 4
  br label %227

227:                                              ; preds = %41, %23
  %228 = load i32, i32* %2, align 4
  ret i32 %228
}

declare dso_local %struct.hix5hd2_priv* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @of_property_read_u32_array(i32, i8*, i32*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_2__*, i8*) #1

declare dso_local i32 @regmap_update_bits(i64, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
