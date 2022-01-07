; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/socionext/extr_phy-uniphier-usb2.c_uniphier_u2phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/socionext/extr_phy-uniphier-usb2.c_uniphier_u2phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.uniphier_u2phy_priv = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @uniphier_u2phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_u2phy_init(%struct.phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.uniphier_u2phy_priv*, align 8
  store %struct.phy* %0, %struct.phy** %3, align 8
  %5 = load %struct.phy*, %struct.phy** %3, align 8
  %6 = call %struct.uniphier_u2phy_priv* @phy_get_drvdata(%struct.phy* %5)
  store %struct.uniphier_u2phy_priv* %6, %struct.uniphier_u2phy_priv** %4, align 8
  %7 = load %struct.uniphier_u2phy_priv*, %struct.uniphier_u2phy_priv** %4, align 8
  %8 = getelementptr inbounds %struct.uniphier_u2phy_priv, %struct.uniphier_u2phy_priv* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = icmp ne %struct.TYPE_6__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %45

12:                                               ; preds = %1
  %13 = load %struct.uniphier_u2phy_priv*, %struct.uniphier_u2phy_priv** %4, align 8
  %14 = getelementptr inbounds %struct.uniphier_u2phy_priv, %struct.uniphier_u2phy_priv* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.uniphier_u2phy_priv*, %struct.uniphier_u2phy_priv** %4, align 8
  %17 = getelementptr inbounds %struct.uniphier_u2phy_priv, %struct.uniphier_u2phy_priv* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.uniphier_u2phy_priv*, %struct.uniphier_u2phy_priv** %4, align 8
  %23 = getelementptr inbounds %struct.uniphier_u2phy_priv, %struct.uniphier_u2phy_priv* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @regmap_write(i32 %15, i32 %21, i32 %27)
  %29 = load %struct.uniphier_u2phy_priv*, %struct.uniphier_u2phy_priv** %4, align 8
  %30 = getelementptr inbounds %struct.uniphier_u2phy_priv, %struct.uniphier_u2phy_priv* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.uniphier_u2phy_priv*, %struct.uniphier_u2phy_priv** %4, align 8
  %33 = getelementptr inbounds %struct.uniphier_u2phy_priv, %struct.uniphier_u2phy_priv* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.uniphier_u2phy_priv*, %struct.uniphier_u2phy_priv** %4, align 8
  %39 = getelementptr inbounds %struct.uniphier_u2phy_priv, %struct.uniphier_u2phy_priv* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @regmap_write(i32 %31, i32 %37, i32 %43)
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %12, %11
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.uniphier_u2phy_priv* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
