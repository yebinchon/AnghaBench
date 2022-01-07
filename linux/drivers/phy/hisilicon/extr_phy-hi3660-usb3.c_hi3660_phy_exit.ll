; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/hisilicon/extr_phy-hi3660-usb3.c_hi3660_phy_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/hisilicon/extr_phy-hi3660-usb3.c_hi3660_phy_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.hi3660_priv = type { i32, i32, i32 }

@IP_RST_USB3OTGPHY_POR = common dso_local global i32 0, align 4
@PERI_CRG_RSTEN4 = common dso_local global i32 0, align 4
@USB_TCXO_EN = common dso_local global i32 0, align 4
@PCTRL_PERI_CTRL3_MSK_START = common dso_local global i32 0, align 4
@PCTRL_PERI_CTRL3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to exit phy ret: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @hi3660_phy_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hi3660_phy_exit(%struct.phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.hi3660_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %3, align 8
  %7 = load %struct.phy*, %struct.phy** %3, align 8
  %8 = call %struct.hi3660_priv* @phy_get_drvdata(%struct.phy* %7)
  store %struct.hi3660_priv* %8, %struct.hi3660_priv** %4, align 8
  %9 = load i32, i32* @IP_RST_USB3OTGPHY_POR, align 4
  store i32 %9, i32* %5, align 4
  %10 = load %struct.hi3660_priv*, %struct.hi3660_priv** %4, align 8
  %11 = getelementptr inbounds %struct.hi3660_priv, %struct.hi3660_priv* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @PERI_CRG_RSTEN4, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @regmap_write(i32 %12, i32 %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %33

19:                                               ; preds = %1
  %20 = load i32, i32* @USB_TCXO_EN, align 4
  %21 = load i32, i32* @PCTRL_PERI_CTRL3_MSK_START, align 4
  %22 = shl i32 %20, %21
  store i32 %22, i32* %5, align 4
  %23 = load %struct.hi3660_priv*, %struct.hi3660_priv** %4, align 8
  %24 = getelementptr inbounds %struct.hi3660_priv, %struct.hi3660_priv* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PCTRL_PERI_CTRL3, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @regmap_write(i32 %25, i32 %26, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  br label %33

32:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %40

33:                                               ; preds = %31, %18
  %34 = load %struct.hi3660_priv*, %struct.hi3660_priv** %4, align 8
  %35 = getelementptr inbounds %struct.hi3660_priv, %struct.hi3660_priv* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %33, %32
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.hi3660_priv* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
