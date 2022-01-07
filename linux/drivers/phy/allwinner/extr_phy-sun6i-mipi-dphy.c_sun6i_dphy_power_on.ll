; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/allwinner/extr_phy-sun6i-mipi-dphy.c_sun6i_dphy_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/allwinner/extr_phy-sun6i-mipi-dphy.c_sun6i_dphy_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.sun6i_dphy = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@SUN6I_DPHY_TX_CTL_REG = common dso_local global i32 0, align 4
@SUN6I_DPHY_TX_CTL_HS_TX_CLK_CONT = common dso_local global i32 0, align 4
@SUN6I_DPHY_TX_TIME0_REG = common dso_local global i32 0, align 4
@SUN6I_DPHY_TX_TIME1_REG = common dso_local global i32 0, align 4
@SUN6I_DPHY_TX_TIME2_REG = common dso_local global i32 0, align 4
@SUN6I_DPHY_TX_TIME3_REG = common dso_local global i32 0, align 4
@SUN6I_DPHY_TX_TIME4_REG = common dso_local global i32 0, align 4
@SUN6I_DPHY_GCTL_REG = common dso_local global i32 0, align 4
@SUN6I_DPHY_GCTL_EN = common dso_local global i32 0, align 4
@SUN6I_DPHY_ANA0_REG = common dso_local global i32 0, align 4
@SUN6I_DPHY_ANA0_REG_PWS = common dso_local global i32 0, align 4
@SUN6I_DPHY_ANA0_REG_DMPC = common dso_local global i32 0, align 4
@SUN6I_DPHY_ANA1_REG = common dso_local global i32 0, align 4
@SUN6I_DPHY_ANA4_REG = common dso_local global i32 0, align 4
@SUN6I_DPHY_ANA4_REG_DMPLVC = common dso_local global i32 0, align 4
@SUN6I_DPHY_ANA2_REG = common dso_local global i32 0, align 4
@SUN6I_DPHY_ANA2_REG_ENIB = common dso_local global i32 0, align 4
@SUN6I_DPHY_ANA3_REG = common dso_local global i32 0, align 4
@SUN6I_DPHY_ANA3_EN_LDOR = common dso_local global i32 0, align 4
@SUN6I_DPHY_ANA3_EN_LDOC = common dso_local global i32 0, align 4
@SUN6I_DPHY_ANA3_EN_LDOD = common dso_local global i32 0, align 4
@SUN6I_DPHY_ANA3_EN_VTTC = common dso_local global i32 0, align 4
@SUN6I_DPHY_ANA3_EN_VTTD_MASK = common dso_local global i32 0, align 4
@SUN6I_DPHY_ANA3_EN_DIV = common dso_local global i32 0, align 4
@SUN6I_DPHY_ANA2_EN_CK_CPU = common dso_local global i32 0, align 4
@SUN6I_DPHY_ANA1_REG_VTTMODE = common dso_local global i32 0, align 4
@SUN6I_DPHY_ANA2_EN_P2S_CPU_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @sun6i_dphy_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun6i_dphy_power_on(%struct.phy* %0) #0 {
  %2 = alloca %struct.phy*, align 8
  %3 = alloca %struct.sun6i_dphy*, align 8
  %4 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %2, align 8
  %5 = load %struct.phy*, %struct.phy** %2, align 8
  %6 = call %struct.sun6i_dphy* @phy_get_drvdata(%struct.phy* %5)
  store %struct.sun6i_dphy* %6, %struct.sun6i_dphy** %3, align 8
  %7 = load %struct.sun6i_dphy*, %struct.sun6i_dphy** %3, align 8
  %8 = getelementptr inbounds %struct.sun6i_dphy, %struct.sun6i_dphy* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = sub nsw i64 %10, 1
  %12 = call i32 @GENMASK(i64 %11, i32 0)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.sun6i_dphy*, %struct.sun6i_dphy** %3, align 8
  %14 = getelementptr inbounds %struct.sun6i_dphy, %struct.sun6i_dphy* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @SUN6I_DPHY_TX_CTL_REG, align 4
  %17 = load i32, i32* @SUN6I_DPHY_TX_CTL_HS_TX_CLK_CONT, align 4
  %18 = call i32 @regmap_write(i32 %15, i32 %16, i32 %17)
  %19 = load %struct.sun6i_dphy*, %struct.sun6i_dphy** %3, align 8
  %20 = getelementptr inbounds %struct.sun6i_dphy, %struct.sun6i_dphy* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @SUN6I_DPHY_TX_TIME0_REG, align 4
  %23 = call i32 @SUN6I_DPHY_TX_TIME0_LP_CLK_DIV(i32 14)
  %24 = call i32 @SUN6I_DPHY_TX_TIME0_HS_PREPARE(i32 6)
  %25 = or i32 %23, %24
  %26 = call i32 @SUN6I_DPHY_TX_TIME0_HS_TRAIL(i32 10)
  %27 = or i32 %25, %26
  %28 = call i32 @regmap_write(i32 %21, i32 %22, i32 %27)
  %29 = load %struct.sun6i_dphy*, %struct.sun6i_dphy** %3, align 8
  %30 = getelementptr inbounds %struct.sun6i_dphy, %struct.sun6i_dphy* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @SUN6I_DPHY_TX_TIME1_REG, align 4
  %33 = call i32 @SUN6I_DPHY_TX_TIME1_CLK_PREPARE(i32 7)
  %34 = call i32 @SUN6I_DPHY_TX_TIME1_CLK_ZERO(i32 50)
  %35 = or i32 %33, %34
  %36 = call i32 @SUN6I_DPHY_TX_TIME1_CLK_PRE(i32 3)
  %37 = or i32 %35, %36
  %38 = call i32 @SUN6I_DPHY_TX_TIME1_CLK_POST(i32 10)
  %39 = or i32 %37, %38
  %40 = call i32 @regmap_write(i32 %31, i32 %32, i32 %39)
  %41 = load %struct.sun6i_dphy*, %struct.sun6i_dphy** %3, align 8
  %42 = getelementptr inbounds %struct.sun6i_dphy, %struct.sun6i_dphy* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @SUN6I_DPHY_TX_TIME2_REG, align 4
  %45 = call i32 @SUN6I_DPHY_TX_TIME2_CLK_TRAIL(i32 30)
  %46 = call i32 @regmap_write(i32 %43, i32 %44, i32 %45)
  %47 = load %struct.sun6i_dphy*, %struct.sun6i_dphy** %3, align 8
  %48 = getelementptr inbounds %struct.sun6i_dphy, %struct.sun6i_dphy* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @SUN6I_DPHY_TX_TIME3_REG, align 4
  %51 = call i32 @regmap_write(i32 %49, i32 %50, i32 0)
  %52 = load %struct.sun6i_dphy*, %struct.sun6i_dphy** %3, align 8
  %53 = getelementptr inbounds %struct.sun6i_dphy, %struct.sun6i_dphy* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @SUN6I_DPHY_TX_TIME4_REG, align 4
  %56 = call i32 @SUN6I_DPHY_TX_TIME4_HS_TX_ANA0(i32 3)
  %57 = call i32 @SUN6I_DPHY_TX_TIME4_HS_TX_ANA1(i32 3)
  %58 = or i32 %56, %57
  %59 = call i32 @regmap_write(i32 %54, i32 %55, i32 %58)
  %60 = load %struct.sun6i_dphy*, %struct.sun6i_dphy** %3, align 8
  %61 = getelementptr inbounds %struct.sun6i_dphy, %struct.sun6i_dphy* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @SUN6I_DPHY_GCTL_REG, align 4
  %64 = load %struct.sun6i_dphy*, %struct.sun6i_dphy** %3, align 8
  %65 = getelementptr inbounds %struct.sun6i_dphy, %struct.sun6i_dphy* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @SUN6I_DPHY_GCTL_LANE_NUM(i64 %67)
  %69 = load i32, i32* @SUN6I_DPHY_GCTL_EN, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @regmap_write(i32 %62, i32 %63, i32 %70)
  %72 = load %struct.sun6i_dphy*, %struct.sun6i_dphy** %3, align 8
  %73 = getelementptr inbounds %struct.sun6i_dphy, %struct.sun6i_dphy* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @SUN6I_DPHY_ANA0_REG, align 4
  %76 = load i32, i32* @SUN6I_DPHY_ANA0_REG_PWS, align 4
  %77 = load i32, i32* @SUN6I_DPHY_ANA0_REG_DMPC, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @SUN6I_DPHY_ANA0_REG_SLV(i32 7)
  %80 = or i32 %78, %79
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @SUN6I_DPHY_ANA0_REG_DMPD(i32 %81)
  %83 = or i32 %80, %82
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @SUN6I_DPHY_ANA0_REG_DEN(i32 %84)
  %86 = or i32 %83, %85
  %87 = call i32 @regmap_write(i32 %74, i32 %75, i32 %86)
  %88 = load %struct.sun6i_dphy*, %struct.sun6i_dphy** %3, align 8
  %89 = getelementptr inbounds %struct.sun6i_dphy, %struct.sun6i_dphy* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @SUN6I_DPHY_ANA1_REG, align 4
  %92 = call i32 @SUN6I_DPHY_ANA1_REG_CSMPS(i32 1)
  %93 = call i32 @SUN6I_DPHY_ANA1_REG_SVTT(i32 7)
  %94 = or i32 %92, %93
  %95 = call i32 @regmap_write(i32 %90, i32 %91, i32 %94)
  %96 = load %struct.sun6i_dphy*, %struct.sun6i_dphy** %3, align 8
  %97 = getelementptr inbounds %struct.sun6i_dphy, %struct.sun6i_dphy* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @SUN6I_DPHY_ANA4_REG, align 4
  %100 = call i32 @SUN6I_DPHY_ANA4_REG_CKDV(i32 1)
  %101 = call i32 @SUN6I_DPHY_ANA4_REG_TMSC(i32 1)
  %102 = or i32 %100, %101
  %103 = call i32 @SUN6I_DPHY_ANA4_REG_TMSD(i32 1)
  %104 = or i32 %102, %103
  %105 = call i32 @SUN6I_DPHY_ANA4_REG_TXDNSC(i32 1)
  %106 = or i32 %104, %105
  %107 = call i32 @SUN6I_DPHY_ANA4_REG_TXDNSD(i32 1)
  %108 = or i32 %106, %107
  %109 = call i32 @SUN6I_DPHY_ANA4_REG_TXPUSC(i32 1)
  %110 = or i32 %108, %109
  %111 = call i32 @SUN6I_DPHY_ANA4_REG_TXPUSD(i32 1)
  %112 = or i32 %110, %111
  %113 = load i32, i32* @SUN6I_DPHY_ANA4_REG_DMPLVC, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* %4, align 4
  %116 = call i32 @SUN6I_DPHY_ANA4_REG_DMPLVD(i32 %115)
  %117 = or i32 %114, %116
  %118 = call i32 @regmap_write(i32 %98, i32 %99, i32 %117)
  %119 = load %struct.sun6i_dphy*, %struct.sun6i_dphy** %3, align 8
  %120 = getelementptr inbounds %struct.sun6i_dphy, %struct.sun6i_dphy* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @SUN6I_DPHY_ANA2_REG, align 4
  %123 = load i32, i32* @SUN6I_DPHY_ANA2_REG_ENIB, align 4
  %124 = call i32 @regmap_write(i32 %121, i32 %122, i32 %123)
  %125 = call i32 @udelay(i32 5)
  %126 = load %struct.sun6i_dphy*, %struct.sun6i_dphy** %3, align 8
  %127 = getelementptr inbounds %struct.sun6i_dphy, %struct.sun6i_dphy* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @SUN6I_DPHY_ANA3_REG, align 4
  %130 = load i32, i32* @SUN6I_DPHY_ANA3_EN_LDOR, align 4
  %131 = load i32, i32* @SUN6I_DPHY_ANA3_EN_LDOC, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @SUN6I_DPHY_ANA3_EN_LDOD, align 4
  %134 = or i32 %132, %133
  %135 = call i32 @regmap_write(i32 %128, i32 %129, i32 %134)
  %136 = call i32 @udelay(i32 1)
  %137 = load %struct.sun6i_dphy*, %struct.sun6i_dphy** %3, align 8
  %138 = getelementptr inbounds %struct.sun6i_dphy, %struct.sun6i_dphy* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @SUN6I_DPHY_ANA3_REG, align 4
  %141 = load i32, i32* @SUN6I_DPHY_ANA3_EN_VTTC, align 4
  %142 = load i32, i32* @SUN6I_DPHY_ANA3_EN_VTTD_MASK, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* @SUN6I_DPHY_ANA3_EN_VTTC, align 4
  %145 = load i32, i32* %4, align 4
  %146 = call i32 @SUN6I_DPHY_ANA3_EN_VTTD(i32 %145)
  %147 = or i32 %144, %146
  %148 = call i32 @regmap_update_bits(i32 %139, i32 %140, i32 %143, i32 %147)
  %149 = call i32 @udelay(i32 1)
  %150 = load %struct.sun6i_dphy*, %struct.sun6i_dphy** %3, align 8
  %151 = getelementptr inbounds %struct.sun6i_dphy, %struct.sun6i_dphy* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @SUN6I_DPHY_ANA3_REG, align 4
  %154 = load i32, i32* @SUN6I_DPHY_ANA3_EN_DIV, align 4
  %155 = load i32, i32* @SUN6I_DPHY_ANA3_EN_DIV, align 4
  %156 = call i32 @regmap_update_bits(i32 %152, i32 %153, i32 %154, i32 %155)
  %157 = call i32 @udelay(i32 1)
  %158 = load %struct.sun6i_dphy*, %struct.sun6i_dphy** %3, align 8
  %159 = getelementptr inbounds %struct.sun6i_dphy, %struct.sun6i_dphy* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @SUN6I_DPHY_ANA2_REG, align 4
  %162 = load i32, i32* @SUN6I_DPHY_ANA2_EN_CK_CPU, align 4
  %163 = load i32, i32* @SUN6I_DPHY_ANA2_EN_CK_CPU, align 4
  %164 = call i32 @regmap_update_bits(i32 %160, i32 %161, i32 %162, i32 %163)
  %165 = call i32 @udelay(i32 1)
  %166 = load %struct.sun6i_dphy*, %struct.sun6i_dphy** %3, align 8
  %167 = getelementptr inbounds %struct.sun6i_dphy, %struct.sun6i_dphy* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @SUN6I_DPHY_ANA1_REG, align 4
  %170 = load i32, i32* @SUN6I_DPHY_ANA1_REG_VTTMODE, align 4
  %171 = load i32, i32* @SUN6I_DPHY_ANA1_REG_VTTMODE, align 4
  %172 = call i32 @regmap_update_bits(i32 %168, i32 %169, i32 %170, i32 %171)
  %173 = load %struct.sun6i_dphy*, %struct.sun6i_dphy** %3, align 8
  %174 = getelementptr inbounds %struct.sun6i_dphy, %struct.sun6i_dphy* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @SUN6I_DPHY_ANA2_REG, align 4
  %177 = load i32, i32* @SUN6I_DPHY_ANA2_EN_P2S_CPU_MASK, align 4
  %178 = load i32, i32* %4, align 4
  %179 = call i32 @SUN6I_DPHY_ANA2_EN_P2S_CPU(i32 %178)
  %180 = call i32 @regmap_update_bits(i32 %175, i32 %176, i32 %177, i32 %179)
  ret i32 0
}

declare dso_local %struct.sun6i_dphy* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @GENMASK(i64, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @SUN6I_DPHY_TX_TIME0_LP_CLK_DIV(i32) #1

declare dso_local i32 @SUN6I_DPHY_TX_TIME0_HS_PREPARE(i32) #1

declare dso_local i32 @SUN6I_DPHY_TX_TIME0_HS_TRAIL(i32) #1

declare dso_local i32 @SUN6I_DPHY_TX_TIME1_CLK_PREPARE(i32) #1

declare dso_local i32 @SUN6I_DPHY_TX_TIME1_CLK_ZERO(i32) #1

declare dso_local i32 @SUN6I_DPHY_TX_TIME1_CLK_PRE(i32) #1

declare dso_local i32 @SUN6I_DPHY_TX_TIME1_CLK_POST(i32) #1

declare dso_local i32 @SUN6I_DPHY_TX_TIME2_CLK_TRAIL(i32) #1

declare dso_local i32 @SUN6I_DPHY_TX_TIME4_HS_TX_ANA0(i32) #1

declare dso_local i32 @SUN6I_DPHY_TX_TIME4_HS_TX_ANA1(i32) #1

declare dso_local i32 @SUN6I_DPHY_GCTL_LANE_NUM(i64) #1

declare dso_local i32 @SUN6I_DPHY_ANA0_REG_SLV(i32) #1

declare dso_local i32 @SUN6I_DPHY_ANA0_REG_DMPD(i32) #1

declare dso_local i32 @SUN6I_DPHY_ANA0_REG_DEN(i32) #1

declare dso_local i32 @SUN6I_DPHY_ANA1_REG_CSMPS(i32) #1

declare dso_local i32 @SUN6I_DPHY_ANA1_REG_SVTT(i32) #1

declare dso_local i32 @SUN6I_DPHY_ANA4_REG_CKDV(i32) #1

declare dso_local i32 @SUN6I_DPHY_ANA4_REG_TMSC(i32) #1

declare dso_local i32 @SUN6I_DPHY_ANA4_REG_TMSD(i32) #1

declare dso_local i32 @SUN6I_DPHY_ANA4_REG_TXDNSC(i32) #1

declare dso_local i32 @SUN6I_DPHY_ANA4_REG_TXDNSD(i32) #1

declare dso_local i32 @SUN6I_DPHY_ANA4_REG_TXPUSC(i32) #1

declare dso_local i32 @SUN6I_DPHY_ANA4_REG_TXPUSD(i32) #1

declare dso_local i32 @SUN6I_DPHY_ANA4_REG_DMPLVD(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @SUN6I_DPHY_ANA3_EN_VTTD(i32) #1

declare dso_local i32 @SUN6I_DPHY_ANA2_EN_P2S_CPU(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
