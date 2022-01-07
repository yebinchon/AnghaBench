; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/socionext/extr_phy-uniphier-usb3hs.c_uniphier_u3hsphy_trim_ld20.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/socionext/extr_phy-uniphier-usb3hs.c_uniphier_u3hsphy_trim_ld20.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uniphier_u3hsphy_priv = type { i32 }
%struct.uniphier_u3hsphy_trim_param = type { i32, i32, i32 }

@HSPHY_CFG0_RTERM_MASK = common dso_local global i32 0, align 4
@HSPHY_CFG0_SEL_T_MASK = common dso_local global i32 0, align 4
@HSPHY_CFG0_HS_I_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uniphier_u3hsphy_priv*, i32*, %struct.uniphier_u3hsphy_trim_param*)* @uniphier_u3hsphy_trim_ld20 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uniphier_u3hsphy_trim_ld20(%struct.uniphier_u3hsphy_priv* %0, i32* %1, %struct.uniphier_u3hsphy_trim_param* %2) #0 {
  %4 = alloca %struct.uniphier_u3hsphy_priv*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.uniphier_u3hsphy_trim_param*, align 8
  store %struct.uniphier_u3hsphy_priv* %0, %struct.uniphier_u3hsphy_priv** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.uniphier_u3hsphy_trim_param* %2, %struct.uniphier_u3hsphy_trim_param** %6, align 8
  %7 = load i32, i32* @HSPHY_CFG0_RTERM_MASK, align 4
  %8 = xor i32 %7, -1
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, %8
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* @HSPHY_CFG0_RTERM_MASK, align 4
  %13 = load %struct.uniphier_u3hsphy_trim_param*, %struct.uniphier_u3hsphy_trim_param** %6, align 8
  %14 = getelementptr inbounds %struct.uniphier_u3hsphy_trim_param, %struct.uniphier_u3hsphy_trim_param* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @FIELD_PREP(i32 %12, i32 %15)
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %16
  store i32 %19, i32* %17, align 4
  %20 = load i32, i32* @HSPHY_CFG0_SEL_T_MASK, align 4
  %21 = xor i32 %20, -1
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, %21
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* @HSPHY_CFG0_SEL_T_MASK, align 4
  %26 = load %struct.uniphier_u3hsphy_trim_param*, %struct.uniphier_u3hsphy_trim_param** %6, align 8
  %27 = getelementptr inbounds %struct.uniphier_u3hsphy_trim_param, %struct.uniphier_u3hsphy_trim_param* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @FIELD_PREP(i32 %25, i32 %28)
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %29
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* @HSPHY_CFG0_HS_I_MASK, align 4
  %34 = xor i32 %33, -1
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, %34
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* @HSPHY_CFG0_HS_I_MASK, align 4
  %39 = load %struct.uniphier_u3hsphy_trim_param*, %struct.uniphier_u3hsphy_trim_param** %6, align 8
  %40 = getelementptr inbounds %struct.uniphier_u3hsphy_trim_param, %struct.uniphier_u3hsphy_trim_param* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @FIELD_PREP(i32 %38, i32 %41)
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %42
  store i32 %45, i32* %43, align 4
  ret void
}

declare dso_local i32 @FIELD_PREP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
