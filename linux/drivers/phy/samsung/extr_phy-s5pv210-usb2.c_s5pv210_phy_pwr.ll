; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/samsung/extr_phy-s5pv210-usb2.c_s5pv210_phy_pwr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/samsung/extr_phy-s5pv210-usb2.c_s5pv210_phy_pwr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.samsung_usb2_phy_instance = type { %struct.TYPE_2__*, %struct.samsung_usb2_phy_driver* }
%struct.TYPE_2__ = type { i32 }
%struct.samsung_usb2_phy_driver = type { i32, i64 }

@S5PV210_UPHYPWR_PHY0 = common dso_local global i32 0, align 4
@S5PV210_URSTCON_PHY0 = common dso_local global i32 0, align 4
@S5PV210_UPHYPWR_PHY1 = common dso_local global i32 0, align 4
@S5PV210_URSTCON_PHY1_ALL = common dso_local global i32 0, align 4
@S5PV210_URSTCON_HOST_LINK_ALL = common dso_local global i32 0, align 4
@S5PV210_UPHYCLK = common dso_local global i64 0, align 8
@S5PV210_UPHYPWR = common dso_local global i64 0, align 8
@S5PV210_UPHYRST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.samsung_usb2_phy_instance*, i32)* @s5pv210_phy_pwr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s5pv210_phy_pwr(%struct.samsung_usb2_phy_instance* %0, i32 %1) #0 {
  %3 = alloca %struct.samsung_usb2_phy_instance*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.samsung_usb2_phy_driver*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.samsung_usb2_phy_instance* %0, %struct.samsung_usb2_phy_instance** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.samsung_usb2_phy_instance*, %struct.samsung_usb2_phy_instance** %3, align 8
  %11 = getelementptr inbounds %struct.samsung_usb2_phy_instance, %struct.samsung_usb2_phy_instance* %10, i32 0, i32 1
  %12 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %11, align 8
  store %struct.samsung_usb2_phy_driver* %12, %struct.samsung_usb2_phy_driver** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = load %struct.samsung_usb2_phy_instance*, %struct.samsung_usb2_phy_instance** %3, align 8
  %14 = getelementptr inbounds %struct.samsung_usb2_phy_instance, %struct.samsung_usb2_phy_instance* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %26 [
    i32 129, label %18
    i32 128, label %21
  ]

18:                                               ; preds = %2
  %19 = load i32, i32* @S5PV210_UPHYPWR_PHY0, align 4
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @S5PV210_URSTCON_PHY0, align 4
  store i32 %20, i32* %6, align 4
  br label %26

21:                                               ; preds = %2
  %22 = load i32, i32* @S5PV210_UPHYPWR_PHY1, align 4
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* @S5PV210_URSTCON_PHY1_ALL, align 4
  %24 = load i32, i32* @S5PV210_URSTCON_HOST_LINK_ALL, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %2, %21, %18
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %84

29:                                               ; preds = %26
  %30 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %5, align 8
  %31 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %5, align 8
  %34 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @S5PV210_UPHYCLK, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writel(i32 %32, i64 %37)
  %39 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %5, align 8
  %40 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @S5PV210_UPHYPWR, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @readl(i64 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %7, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %9, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %5, align 8
  %51 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @S5PV210_UPHYPWR, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writel(i32 %49, i64 %54)
  %56 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %5, align 8
  %57 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @S5PV210_UPHYRST, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @readl(i64 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %8, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %5, align 8
  %67 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @S5PV210_UPHYRST, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @writel(i32 %65, i64 %70)
  %72 = call i32 @udelay(i32 10)
  %73 = load i32, i32* %6, align 4
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %8, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %5, align 8
  %79 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @S5PV210_UPHYRST, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @writel(i32 %77, i64 %82)
  br label %101

84:                                               ; preds = %26
  %85 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %5, align 8
  %86 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @S5PV210_UPHYPWR, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @readl(i64 %89)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %9, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %5, align 8
  %96 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @S5PV210_UPHYPWR, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @writel(i32 %94, i64 %99)
  br label %101

101:                                              ; preds = %84, %29
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
