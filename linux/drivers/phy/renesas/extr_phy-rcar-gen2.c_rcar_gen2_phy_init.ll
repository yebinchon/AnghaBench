; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/renesas/extr_phy-rcar-gen2.c_rcar_gen2_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/renesas/extr_phy-rcar-gen2.c_rcar_gen2_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.rcar_gen2_phy = type { i32, i32, %struct.rcar_gen2_channel* }
%struct.rcar_gen2_channel = type { i32, i32, %struct.rcar_gen2_phy_driver* }
%struct.rcar_gen2_phy_driver = type { i32, i64, i32 }

@EBUSY = common dso_local global i32 0, align 4
@USBHS_UGCTRL2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @rcar_gen2_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_gen2_phy_init(%struct.phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.rcar_gen2_phy*, align 8
  %5 = alloca %struct.rcar_gen2_channel*, align 8
  %6 = alloca %struct.rcar_gen2_phy_driver*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %3, align 8
  %9 = load %struct.phy*, %struct.phy** %3, align 8
  %10 = call %struct.rcar_gen2_phy* @phy_get_drvdata(%struct.phy* %9)
  store %struct.rcar_gen2_phy* %10, %struct.rcar_gen2_phy** %4, align 8
  %11 = load %struct.rcar_gen2_phy*, %struct.rcar_gen2_phy** %4, align 8
  %12 = getelementptr inbounds %struct.rcar_gen2_phy, %struct.rcar_gen2_phy* %11, i32 0, i32 2
  %13 = load %struct.rcar_gen2_channel*, %struct.rcar_gen2_channel** %12, align 8
  store %struct.rcar_gen2_channel* %13, %struct.rcar_gen2_channel** %5, align 8
  %14 = load %struct.rcar_gen2_channel*, %struct.rcar_gen2_channel** %5, align 8
  %15 = getelementptr inbounds %struct.rcar_gen2_channel, %struct.rcar_gen2_channel* %14, i32 0, i32 2
  %16 = load %struct.rcar_gen2_phy_driver*, %struct.rcar_gen2_phy_driver** %15, align 8
  store %struct.rcar_gen2_phy_driver* %16, %struct.rcar_gen2_phy_driver** %6, align 8
  %17 = load %struct.rcar_gen2_channel*, %struct.rcar_gen2_channel** %5, align 8
  %18 = getelementptr inbounds %struct.rcar_gen2_channel, %struct.rcar_gen2_channel* %17, i32 0, i32 1
  %19 = load %struct.rcar_gen2_phy*, %struct.rcar_gen2_phy** %4, align 8
  %20 = getelementptr inbounds %struct.rcar_gen2_phy, %struct.rcar_gen2_phy* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @cmpxchg(i32* %18, i32 -1, i32 %21)
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %64

27:                                               ; preds = %1
  %28 = load %struct.rcar_gen2_phy_driver*, %struct.rcar_gen2_phy_driver** %6, align 8
  %29 = getelementptr inbounds %struct.rcar_gen2_phy_driver, %struct.rcar_gen2_phy_driver* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @clk_prepare_enable(i32 %30)
  %32 = load %struct.rcar_gen2_phy_driver*, %struct.rcar_gen2_phy_driver** %6, align 8
  %33 = getelementptr inbounds %struct.rcar_gen2_phy_driver, %struct.rcar_gen2_phy_driver* %32, i32 0, i32 0
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @spin_lock_irqsave(i32* %33, i64 %34)
  %36 = load %struct.rcar_gen2_phy_driver*, %struct.rcar_gen2_phy_driver** %6, align 8
  %37 = getelementptr inbounds %struct.rcar_gen2_phy_driver, %struct.rcar_gen2_phy_driver* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @USBHS_UGCTRL2, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @readl(i64 %40)
  store i32 %41, i32* %8, align 4
  %42 = load %struct.rcar_gen2_channel*, %struct.rcar_gen2_channel** %5, align 8
  %43 = getelementptr inbounds %struct.rcar_gen2_channel, %struct.rcar_gen2_channel* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %8, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %8, align 4
  %48 = load %struct.rcar_gen2_phy*, %struct.rcar_gen2_phy** %4, align 8
  %49 = getelementptr inbounds %struct.rcar_gen2_phy, %struct.rcar_gen2_phy* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.rcar_gen2_phy_driver*, %struct.rcar_gen2_phy_driver** %6, align 8
  %55 = getelementptr inbounds %struct.rcar_gen2_phy_driver, %struct.rcar_gen2_phy_driver* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @USBHS_UGCTRL2, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writel(i32 %53, i64 %58)
  %60 = load %struct.rcar_gen2_phy_driver*, %struct.rcar_gen2_phy_driver** %6, align 8
  %61 = getelementptr inbounds %struct.rcar_gen2_phy_driver, %struct.rcar_gen2_phy_driver* %60, i32 0, i32 0
  %62 = load i64, i64* %7, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %27, %24
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.rcar_gen2_phy* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
