; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/hisilicon/extr_phy-histb-combphy.c_histb_combphy_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/hisilicon/extr_phy-histb-combphy.c_histb_combphy_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.histb_combphy_priv = type { %struct.regmap*, %struct.histb_combphy_mode }
%struct.regmap = type { i32 }
%struct.histb_combphy_mode = type { i32, i32, i32, i32 }

@COMBPHY_MODE_SATA = common dso_local global i32 0, align 4
@COMBPHY_MODE_PCIE = common dso_local global i32 0, align 4
@COMBPHY_MODE_USB3 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.histb_combphy_priv*)* @histb_combphy_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @histb_combphy_set_mode(%struct.histb_combphy_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.histb_combphy_priv*, align 8
  %4 = alloca %struct.histb_combphy_mode*, align 8
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca i32, align 4
  store %struct.histb_combphy_priv* %0, %struct.histb_combphy_priv** %3, align 8
  %7 = load %struct.histb_combphy_priv*, %struct.histb_combphy_priv** %3, align 8
  %8 = getelementptr inbounds %struct.histb_combphy_priv, %struct.histb_combphy_priv* %7, i32 0, i32 1
  store %struct.histb_combphy_mode* %8, %struct.histb_combphy_mode** %4, align 8
  %9 = load %struct.histb_combphy_priv*, %struct.histb_combphy_priv** %3, align 8
  %10 = getelementptr inbounds %struct.histb_combphy_priv, %struct.histb_combphy_priv* %9, i32 0, i32 0
  %11 = load %struct.regmap*, %struct.regmap** %10, align 8
  store %struct.regmap* %11, %struct.regmap** %5, align 8
  %12 = load %struct.histb_combphy_mode*, %struct.histb_combphy_mode** %4, align 8
  %13 = call i64 @is_mode_fixed(%struct.histb_combphy_mode* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %43

16:                                               ; preds = %1
  %17 = load %struct.histb_combphy_mode*, %struct.histb_combphy_mode** %4, align 8
  %18 = getelementptr inbounds %struct.histb_combphy_mode, %struct.histb_combphy_mode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %26 [
    i32 129, label %20
    i32 130, label %22
    i32 128, label %24
  ]

20:                                               ; preds = %16
  %21 = load i32, i32* @COMBPHY_MODE_SATA, align 4
  store i32 %21, i32* %6, align 4
  br label %29

22:                                               ; preds = %16
  %23 = load i32, i32* @COMBPHY_MODE_PCIE, align 4
  store i32 %23, i32* %6, align 4
  br label %29

24:                                               ; preds = %16
  %25 = load i32, i32* @COMBPHY_MODE_USB3, align 4
  store i32 %25, i32* %6, align 4
  br label %29

26:                                               ; preds = %16
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %43

29:                                               ; preds = %24, %22, %20
  %30 = load %struct.regmap*, %struct.regmap** %5, align 8
  %31 = load %struct.histb_combphy_mode*, %struct.histb_combphy_mode** %4, align 8
  %32 = getelementptr inbounds %struct.histb_combphy_mode, %struct.histb_combphy_mode* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.histb_combphy_mode*, %struct.histb_combphy_mode** %4, align 8
  %35 = getelementptr inbounds %struct.histb_combphy_mode, %struct.histb_combphy_mode* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.histb_combphy_mode*, %struct.histb_combphy_mode** %4, align 8
  %39 = getelementptr inbounds %struct.histb_combphy_mode, %struct.histb_combphy_mode* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %37, %40
  %42 = call i32 @regmap_update_bits(%struct.regmap* %30, i32 %33, i32 %36, i32 %41)
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %29, %26, %15
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i64 @is_mode_fixed(%struct.histb_combphy_mode*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
