; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/freescale/extr_phy-fsl-imx8-mipi-dphy.c_mixel_phy_set_hs_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/freescale/extr_phy-fsl-imx8-mipi-dphy.c_mixel_phy_set_hs_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.mixel_dphy_priv = type { %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32 }

@DPHY_M_PRG_HS_PREPARE = common dso_local global i32 0, align 4
@DPHY_MC_PRG_HS_PREPARE = common dso_local global i32 0, align 4
@DPHY_M_PRG_HS_ZERO = common dso_local global i32 0, align 4
@DPHY_MC_PRG_HS_ZERO = common dso_local global i32 0, align 4
@DPHY_M_PRG_HS_TRAIL = common dso_local global i32 0, align 4
@DPHY_MC_PRG_HS_TRAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.phy*)* @mixel_phy_set_hs_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mixel_phy_set_hs_timings(%struct.phy* %0) #0 {
  %2 = alloca %struct.phy*, align 8
  %3 = alloca %struct.mixel_dphy_priv*, align 8
  store %struct.phy* %0, %struct.phy** %2, align 8
  %4 = load %struct.phy*, %struct.phy** %2, align 8
  %5 = call %struct.mixel_dphy_priv* @phy_get_drvdata(%struct.phy* %4)
  store %struct.mixel_dphy_priv* %5, %struct.mixel_dphy_priv** %3, align 8
  %6 = load %struct.phy*, %struct.phy** %2, align 8
  %7 = load %struct.mixel_dphy_priv*, %struct.mixel_dphy_priv** %3, align 8
  %8 = getelementptr inbounds %struct.mixel_dphy_priv, %struct.mixel_dphy_priv* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @DPHY_M_PRG_HS_PREPARE, align 4
  %12 = call i32 @phy_write(%struct.phy* %6, i32 %10, i32 %11)
  %13 = load %struct.phy*, %struct.phy** %2, align 8
  %14 = load %struct.mixel_dphy_priv*, %struct.mixel_dphy_priv** %3, align 8
  %15 = getelementptr inbounds %struct.mixel_dphy_priv, %struct.mixel_dphy_priv* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @DPHY_MC_PRG_HS_PREPARE, align 4
  %19 = call i32 @phy_write(%struct.phy* %13, i32 %17, i32 %18)
  %20 = load %struct.phy*, %struct.phy** %2, align 8
  %21 = load %struct.mixel_dphy_priv*, %struct.mixel_dphy_priv** %3, align 8
  %22 = getelementptr inbounds %struct.mixel_dphy_priv, %struct.mixel_dphy_priv* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @DPHY_M_PRG_HS_ZERO, align 4
  %26 = call i32 @phy_write(%struct.phy* %20, i32 %24, i32 %25)
  %27 = load %struct.phy*, %struct.phy** %2, align 8
  %28 = load %struct.mixel_dphy_priv*, %struct.mixel_dphy_priv** %3, align 8
  %29 = getelementptr inbounds %struct.mixel_dphy_priv, %struct.mixel_dphy_priv* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @DPHY_MC_PRG_HS_ZERO, align 4
  %33 = call i32 @phy_write(%struct.phy* %27, i32 %31, i32 %32)
  %34 = load %struct.phy*, %struct.phy** %2, align 8
  %35 = load %struct.mixel_dphy_priv*, %struct.mixel_dphy_priv** %3, align 8
  %36 = getelementptr inbounds %struct.mixel_dphy_priv, %struct.mixel_dphy_priv* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @DPHY_M_PRG_HS_TRAIL, align 4
  %40 = call i32 @phy_write(%struct.phy* %34, i32 %38, i32 %39)
  %41 = load %struct.phy*, %struct.phy** %2, align 8
  %42 = load %struct.mixel_dphy_priv*, %struct.mixel_dphy_priv** %3, align 8
  %43 = getelementptr inbounds %struct.mixel_dphy_priv, %struct.mixel_dphy_priv* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @DPHY_MC_PRG_HS_TRAIL, align 4
  %47 = call i32 @phy_write(%struct.phy* %41, i32 %45, i32 %46)
  %48 = load %struct.phy*, %struct.phy** %2, align 8
  %49 = load %struct.mixel_dphy_priv*, %struct.mixel_dphy_priv** %3, align 8
  %50 = getelementptr inbounds %struct.mixel_dphy_priv, %struct.mixel_dphy_priv* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.mixel_dphy_priv*, %struct.mixel_dphy_priv** %3, align 8
  %54 = getelementptr inbounds %struct.mixel_dphy_priv, %struct.mixel_dphy_priv* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @phy_write(%struct.phy* %48, i32 %52, i32 %57)
  ret void
}

declare dso_local %struct.mixel_dphy_priv* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @phy_write(%struct.phy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
