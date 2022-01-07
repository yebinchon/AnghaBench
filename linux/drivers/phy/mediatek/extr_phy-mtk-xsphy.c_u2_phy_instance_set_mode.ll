; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/mediatek/extr_phy-mtk-xsphy.c_u2_phy_instance_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/mediatek/extr_phy-mtk-xsphy.c_u2_phy_instance_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_xsphy = type { i32 }
%struct.xsphy_instance = type { i64 }

@XSP_U2PHYDTM1 = common dso_local global i64 0, align 8
@P2D_FORCE_IDDIG = common dso_local global i32 0, align 4
@P2D_RG_IDDIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_xsphy*, %struct.xsphy_instance*, i32)* @u2_phy_instance_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @u2_phy_instance_set_mode(%struct.mtk_xsphy* %0, %struct.xsphy_instance* %1, i32 %2) #0 {
  %4 = alloca %struct.mtk_xsphy*, align 8
  %5 = alloca %struct.xsphy_instance*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mtk_xsphy* %0, %struct.mtk_xsphy** %4, align 8
  store %struct.xsphy_instance* %1, %struct.xsphy_instance** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.xsphy_instance*, %struct.xsphy_instance** %5, align 8
  %9 = getelementptr inbounds %struct.xsphy_instance, %struct.xsphy_instance* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @XSP_U2PHYDTM1, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @readl(i64 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %36 [
    i32 130, label %15
    i32 129, label %21
    i32 128, label %29
  ]

15:                                               ; preds = %3
  %16 = load i32, i32* @P2D_FORCE_IDDIG, align 4
  %17 = load i32, i32* @P2D_RG_IDDIG, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* %7, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %7, align 4
  br label %37

21:                                               ; preds = %3
  %22 = load i32, i32* @P2D_FORCE_IDDIG, align 4
  %23 = load i32, i32* %7, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* @P2D_RG_IDDIG, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %7, align 4
  br label %37

29:                                               ; preds = %3
  %30 = load i32, i32* @P2D_FORCE_IDDIG, align 4
  %31 = load i32, i32* @P2D_RG_IDDIG, align 4
  %32 = or i32 %30, %31
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %7, align 4
  br label %37

36:                                               ; preds = %3
  br label %45

37:                                               ; preds = %29, %21, %15
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.xsphy_instance*, %struct.xsphy_instance** %5, align 8
  %40 = getelementptr inbounds %struct.xsphy_instance, %struct.xsphy_instance* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @XSP_U2PHYDTM1, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @writel(i32 %38, i64 %43)
  br label %45

45:                                               ; preds = %37, %36
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
