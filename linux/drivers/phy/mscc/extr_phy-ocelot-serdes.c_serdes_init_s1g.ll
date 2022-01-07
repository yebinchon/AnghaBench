; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/mscc/extr_phy-ocelot-serdes.c_serdes_init_s1g.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/mscc/extr_phy-ocelot-serdes.c_serdes_init_s1g.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 }

@HSIO_S1G_COMMON_CFG = common dso_local global i32 0, align 4
@HSIO_S1G_COMMON_CFG_SYS_RST = common dso_local global i32 0, align 4
@HSIO_S1G_COMMON_CFG_ENA_LANE = common dso_local global i32 0, align 4
@HSIO_S1G_COMMON_CFG_ENA_ELOOP = common dso_local global i32 0, align 4
@HSIO_S1G_COMMON_CFG_ENA_FLOOP = common dso_local global i32 0, align 4
@HSIO_S1G_PLL_CFG = common dso_local global i32 0, align 4
@HSIO_S1G_PLL_CFG_PLL_FSM_ENA = common dso_local global i32 0, align 4
@HSIO_S1G_PLL_CFG_PLL_FSM_CTRL_DATA_M = common dso_local global i32 0, align 4
@HSIO_S1G_MISC_CFG = common dso_local global i32 0, align 4
@HSIO_S1G_MISC_CFG_DES_100FX_CPMD_ENA = common dso_local global i32 0, align 4
@HSIO_S1G_MISC_CFG_LANE_RST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regmap*, i32)* @serdes_init_s1g to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serdes_init_s1g(%struct.regmap* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.regmap* %0, %struct.regmap** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.regmap*, %struct.regmap** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @serdes_update_mcb_s1g(%struct.regmap* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %67

14:                                               ; preds = %2
  %15 = load %struct.regmap*, %struct.regmap** %4, align 8
  %16 = load i32, i32* @HSIO_S1G_COMMON_CFG, align 4
  %17 = load i32, i32* @HSIO_S1G_COMMON_CFG_SYS_RST, align 4
  %18 = load i32, i32* @HSIO_S1G_COMMON_CFG_ENA_LANE, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @HSIO_S1G_COMMON_CFG_ENA_ELOOP, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @HSIO_S1G_COMMON_CFG_ENA_FLOOP, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @HSIO_S1G_COMMON_CFG_ENA_LANE, align 4
  %25 = call i32 @regmap_update_bits(%struct.regmap* %15, i32 %16, i32 %23, i32 %24)
  %26 = load %struct.regmap*, %struct.regmap** %4, align 8
  %27 = load i32, i32* @HSIO_S1G_PLL_CFG, align 4
  %28 = load i32, i32* @HSIO_S1G_PLL_CFG_PLL_FSM_ENA, align 4
  %29 = load i32, i32* @HSIO_S1G_PLL_CFG_PLL_FSM_CTRL_DATA_M, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @HSIO_S1G_PLL_CFG_PLL_FSM_CTRL_DATA(i32 200)
  %32 = load i32, i32* @HSIO_S1G_PLL_CFG_PLL_FSM_ENA, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @regmap_update_bits(%struct.regmap* %26, i32 %27, i32 %30, i32 %33)
  %35 = load %struct.regmap*, %struct.regmap** %4, align 8
  %36 = load i32, i32* @HSIO_S1G_MISC_CFG, align 4
  %37 = load i32, i32* @HSIO_S1G_MISC_CFG_DES_100FX_CPMD_ENA, align 4
  %38 = load i32, i32* @HSIO_S1G_MISC_CFG_LANE_RST, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @HSIO_S1G_MISC_CFG_LANE_RST, align 4
  %41 = call i32 @regmap_update_bits(%struct.regmap* %35, i32 %36, i32 %39, i32 %40)
  %42 = load %struct.regmap*, %struct.regmap** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @serdes_commit_mcb_s1g(%struct.regmap* %42, i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %14
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %67

49:                                               ; preds = %14
  %50 = load %struct.regmap*, %struct.regmap** %4, align 8
  %51 = load i32, i32* @HSIO_S1G_COMMON_CFG, align 4
  %52 = load i32, i32* @HSIO_S1G_COMMON_CFG_SYS_RST, align 4
  %53 = load i32, i32* @HSIO_S1G_COMMON_CFG_SYS_RST, align 4
  %54 = call i32 @regmap_update_bits(%struct.regmap* %50, i32 %51, i32 %52, i32 %53)
  %55 = load %struct.regmap*, %struct.regmap** %4, align 8
  %56 = load i32, i32* @HSIO_S1G_MISC_CFG, align 4
  %57 = load i32, i32* @HSIO_S1G_MISC_CFG_LANE_RST, align 4
  %58 = call i32 @regmap_update_bits(%struct.regmap* %55, i32 %56, i32 %57, i32 0)
  %59 = load %struct.regmap*, %struct.regmap** %4, align 8
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @serdes_commit_mcb_s1g(%struct.regmap* %59, i32 %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %49
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %3, align 4
  br label %67

66:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %64, %47, %12
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @serdes_update_mcb_s1g(%struct.regmap*, i32) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @HSIO_S1G_PLL_CFG_PLL_FSM_CTRL_DATA(i32) #1

declare dso_local i32 @serdes_commit_mcb_s1g(%struct.regmap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
