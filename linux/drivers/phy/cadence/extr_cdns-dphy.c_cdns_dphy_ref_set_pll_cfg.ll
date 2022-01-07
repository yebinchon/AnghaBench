; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/cadence/extr_cdns-dphy.c_cdns_dphy_ref_set_pll_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/cadence/extr_cdns-dphy.c_cdns_dphy_ref_set_pll_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns_dphy = type { i64 }
%struct.cdns_dphy_cfg = type { i32, i32, i32 }

@DPHY_CMN_IPDIV_FROM_REG = common dso_local global i32 0, align 4
@DPHY_CMN_OPDIV_FROM_REG = common dso_local global i32 0, align 4
@DPHY_CMN_OPIPDIV = common dso_local global i64 0, align 8
@DPHY_CMN_FBDIV_FROM_REG = common dso_local global i32 0, align 4
@DPHY_CMN_FBDIV = common dso_local global i64 0, align 8
@DPHY_CMN_PWM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cdns_dphy*, %struct.cdns_dphy_cfg*)* @cdns_dphy_ref_set_pll_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdns_dphy_ref_set_pll_cfg(%struct.cdns_dphy* %0, %struct.cdns_dphy_cfg* %1) #0 {
  %3 = alloca %struct.cdns_dphy*, align 8
  %4 = alloca %struct.cdns_dphy_cfg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cdns_dphy* %0, %struct.cdns_dphy** %3, align 8
  store %struct.cdns_dphy_cfg* %1, %struct.cdns_dphy_cfg** %4, align 8
  %7 = load %struct.cdns_dphy_cfg*, %struct.cdns_dphy_cfg** %4, align 8
  %8 = getelementptr inbounds %struct.cdns_dphy_cfg, %struct.cdns_dphy_cfg* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = sdiv i32 %9, 4
  %11 = sub nsw i32 %10, 2
  store i32 %11, i32* %5, align 4
  %12 = load %struct.cdns_dphy_cfg*, %struct.cdns_dphy_cfg** %4, align 8
  %13 = getelementptr inbounds %struct.cdns_dphy_cfg, %struct.cdns_dphy_cfg* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %5, align 4
  %16 = sub nsw i32 %14, %15
  %17 = sub nsw i32 %16, 2
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* @DPHY_CMN_IPDIV_FROM_REG, align 4
  %19 = load i32, i32* @DPHY_CMN_OPDIV_FROM_REG, align 4
  %20 = or i32 %18, %19
  %21 = load %struct.cdns_dphy_cfg*, %struct.cdns_dphy_cfg** %4, align 8
  %22 = getelementptr inbounds %struct.cdns_dphy_cfg, %struct.cdns_dphy_cfg* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @DPHY_CMN_IPDIV(i32 %23)
  %25 = or i32 %20, %24
  %26 = load %struct.cdns_dphy_cfg*, %struct.cdns_dphy_cfg** %4, align 8
  %27 = getelementptr inbounds %struct.cdns_dphy_cfg, %struct.cdns_dphy_cfg* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @DPHY_CMN_OPDIV(i32 %28)
  %30 = or i32 %25, %29
  %31 = load %struct.cdns_dphy*, %struct.cdns_dphy** %3, align 8
  %32 = getelementptr inbounds %struct.cdns_dphy, %struct.cdns_dphy* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @DPHY_CMN_OPIPDIV, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel(i32 %30, i64 %35)
  %37 = load i32, i32* @DPHY_CMN_FBDIV_FROM_REG, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @DPHY_CMN_FBDIV_VAL(i32 %38, i32 %39)
  %41 = or i32 %37, %40
  %42 = load %struct.cdns_dphy*, %struct.cdns_dphy** %3, align 8
  %43 = getelementptr inbounds %struct.cdns_dphy, %struct.cdns_dphy* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @DPHY_CMN_FBDIV, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writel(i32 %41, i64 %46)
  %48 = call i32 @DPHY_CMN_PWM_HIGH(i32 6)
  %49 = call i32 @DPHY_CMN_PWM_LOW(i32 257)
  %50 = or i32 %48, %49
  %51 = call i32 @DPHY_CMN_PWM_DIV(i32 8)
  %52 = or i32 %50, %51
  %53 = load %struct.cdns_dphy*, %struct.cdns_dphy** %3, align 8
  %54 = getelementptr inbounds %struct.cdns_dphy, %struct.cdns_dphy* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @DPHY_CMN_PWM, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @writel(i32 %52, i64 %57)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @DPHY_CMN_IPDIV(i32) #1

declare dso_local i32 @DPHY_CMN_OPDIV(i32) #1

declare dso_local i32 @DPHY_CMN_FBDIV_VAL(i32, i32) #1

declare dso_local i32 @DPHY_CMN_PWM_HIGH(i32) #1

declare dso_local i32 @DPHY_CMN_PWM_LOW(i32) #1

declare dso_local i32 @DPHY_CMN_PWM_DIV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
