; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/tegra/extr_pinctrl-tegra-xusb.c_tegra_xusb_padctl_pinmux_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/tegra/extr_pinctrl-tegra-xusb.c_tegra_xusb_padctl_pinmux_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.tegra_xusb_padctl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.tegra_xusb_padctl_lane* }
%struct.tegra_xusb_padctl_lane = type { i32, i32*, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i32)* @tegra_xusb_padctl_pinmux_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_xusb_padctl_pinmux_set(%struct.pinctrl_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tegra_xusb_padctl*, align 8
  %9 = alloca %struct.tegra_xusb_padctl_lane*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %13 = call %struct.tegra_xusb_padctl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %12)
  store %struct.tegra_xusb_padctl* %13, %struct.tegra_xusb_padctl** %8, align 8
  %14 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %8, align 8
  %15 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.tegra_xusb_padctl_lane*, %struct.tegra_xusb_padctl_lane** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.tegra_xusb_padctl_lane, %struct.tegra_xusb_padctl_lane* %18, i64 %20
  store %struct.tegra_xusb_padctl_lane* %21, %struct.tegra_xusb_padctl_lane** %9, align 8
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %40, %3
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.tegra_xusb_padctl_lane*, %struct.tegra_xusb_padctl_lane** %9, align 8
  %25 = getelementptr inbounds %struct.tegra_xusb_padctl_lane, %struct.tegra_xusb_padctl_lane* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ult i32 %23, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %22
  %29 = load %struct.tegra_xusb_padctl_lane*, %struct.tegra_xusb_padctl_lane** %9, align 8
  %30 = getelementptr inbounds %struct.tegra_xusb_padctl_lane, %struct.tegra_xusb_padctl_lane* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  br label %43

39:                                               ; preds = %28
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %10, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %10, align 4
  br label %22

43:                                               ; preds = %38, %22
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.tegra_xusb_padctl_lane*, %struct.tegra_xusb_padctl_lane** %9, align 8
  %46 = getelementptr inbounds %struct.tegra_xusb_padctl_lane, %struct.tegra_xusb_padctl_lane* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp uge i32 %44, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %81

52:                                               ; preds = %43
  %53 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %8, align 8
  %54 = load %struct.tegra_xusb_padctl_lane*, %struct.tegra_xusb_padctl_lane** %9, align 8
  %55 = getelementptr inbounds %struct.tegra_xusb_padctl_lane, %struct.tegra_xusb_padctl_lane* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %53, i32 %56)
  store i32 %57, i32* %11, align 4
  %58 = load %struct.tegra_xusb_padctl_lane*, %struct.tegra_xusb_padctl_lane** %9, align 8
  %59 = getelementptr inbounds %struct.tegra_xusb_padctl_lane, %struct.tegra_xusb_padctl_lane* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.tegra_xusb_padctl_lane*, %struct.tegra_xusb_padctl_lane** %9, align 8
  %62 = getelementptr inbounds %struct.tegra_xusb_padctl_lane, %struct.tegra_xusb_padctl_lane* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = shl i32 %60, %63
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %11, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load %struct.tegra_xusb_padctl_lane*, %struct.tegra_xusb_padctl_lane** %9, align 8
  %70 = getelementptr inbounds %struct.tegra_xusb_padctl_lane, %struct.tegra_xusb_padctl_lane* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 %68, %71
  %73 = load i32, i32* %11, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %11, align 4
  %75 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %8, align 8
  %76 = load i32, i32* %11, align 4
  %77 = load %struct.tegra_xusb_padctl_lane*, %struct.tegra_xusb_padctl_lane** %9, align 8
  %78 = getelementptr inbounds %struct.tegra_xusb_padctl_lane, %struct.tegra_xusb_padctl_lane* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %75, i32 %76, i32 %79)
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %52, %49
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local %struct.tegra_xusb_padctl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @padctl_readl(%struct.tegra_xusb_padctl*, i32) #1

declare dso_local i32 @padctl_writel(%struct.tegra_xusb_padctl*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
