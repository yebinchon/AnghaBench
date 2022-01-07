; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/tegra/extr_pinctrl-tegra-xusb.c_tegra_xusb_padctl_pinconf_group_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/tegra/extr_pinctrl-tegra-xusb.c_tegra_xusb_padctl_pinconf_group_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.tegra_xusb_padctl = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.tegra_xusb_padctl_lane* }
%struct.tegra_xusb_padctl_lane = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"invalid configuration parameter: %04x\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*)* @tegra_xusb_padctl_pinconf_group_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_xusb_padctl_pinconf_group_get(%struct.pinctrl_dev* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.tegra_xusb_padctl*, align 8
  %9 = alloca %struct.tegra_xusb_padctl_lane*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %12 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %13 = call %struct.tegra_xusb_padctl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %12)
  store %struct.tegra_xusb_padctl* %13, %struct.tegra_xusb_padctl** %8, align 8
  %14 = load i64*, i64** %7, align 8
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @TEGRA_XUSB_PADCTL_UNPACK_PARAM(i64 %15)
  store i32 %16, i32* %10, align 4
  %17 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %8, align 8
  %18 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.tegra_xusb_padctl_lane*, %struct.tegra_xusb_padctl_lane** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.tegra_xusb_padctl_lane, %struct.tegra_xusb_padctl_lane* %21, i64 %23
  store %struct.tegra_xusb_padctl_lane* %24, %struct.tegra_xusb_padctl_lane** %9, align 8
  %25 = load i32, i32* %10, align 4
  switch i32 %25, label %54 [
    i32 128, label %26
  ]

26:                                               ; preds = %3
  %27 = load %struct.tegra_xusb_padctl_lane*, %struct.tegra_xusb_padctl_lane** %9, align 8
  %28 = getelementptr inbounds %struct.tegra_xusb_padctl_lane, %struct.tegra_xusb_padctl_lane* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %63

34:                                               ; preds = %26
  %35 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %8, align 8
  %36 = load %struct.tegra_xusb_padctl_lane*, %struct.tegra_xusb_padctl_lane** %9, align 8
  %37 = getelementptr inbounds %struct.tegra_xusb_padctl_lane, %struct.tegra_xusb_padctl_lane* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %35, i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load %struct.tegra_xusb_padctl_lane*, %struct.tegra_xusb_padctl_lane** %9, align 8
  %42 = getelementptr inbounds %struct.tegra_xusb_padctl_lane, %struct.tegra_xusb_padctl_lane* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @BIT(i32 %43)
  %45 = and i32 %40, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %34
  store i32 0, i32* %11, align 4
  br label %49

48:                                               ; preds = %34
  store i32 1, i32* %11, align 4
  br label %49

49:                                               ; preds = %48, %47
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i64 @TEGRA_XUSB_PADCTL_PACK(i32 %50, i32 %51)
  %53 = load i64*, i64** %7, align 8
  store i64 %52, i64* %53, align 8
  br label %62

54:                                               ; preds = %3
  %55 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %8, align 8
  %56 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @dev_err(i32 %57, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @ENOTSUPP, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %63

62:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %54, %31
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local %struct.tegra_xusb_padctl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @TEGRA_XUSB_PADCTL_UNPACK_PARAM(i64) #1

declare dso_local i32 @padctl_readl(%struct.tegra_xusb_padctl*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @TEGRA_XUSB_PADCTL_PACK(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
