; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/tegra/extr_pinctrl-tegra-xusb.c_tegra_xusb_padctl_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/tegra/extr_pinctrl-tegra-xusb.c_tegra_xusb_padctl_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.device = type { i32 }
%struct.of_phandle_args = type { i32*, i64 }
%struct.tegra_xusb_padctl = type { %struct.phy** }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.phy* (%struct.device*, %struct.of_phandle_args*)* @tegra_xusb_padctl_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.phy* @tegra_xusb_padctl_xlate(%struct.device* %0, %struct.of_phandle_args* %1) #0 {
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.of_phandle_args*, align 8
  %6 = alloca %struct.tegra_xusb_padctl*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.of_phandle_args* %1, %struct.of_phandle_args** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.tegra_xusb_padctl* @dev_get_drvdata(%struct.device* %8)
  store %struct.tegra_xusb_padctl* %9, %struct.tegra_xusb_padctl** %6, align 8
  %10 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %11 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %16 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp sle i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.phy* @ERR_PTR(i32 %21)
  store %struct.phy* %22, %struct.phy** %3, align 8
  br label %42

23:                                               ; preds = %2
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %6, align 8
  %26 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %25, i32 0, i32 0
  %27 = load %struct.phy**, %struct.phy*** %26, align 8
  %28 = call i32 @ARRAY_SIZE(%struct.phy** %27)
  %29 = icmp uge i32 %24, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.phy* @ERR_PTR(i32 %32)
  store %struct.phy* %33, %struct.phy** %3, align 8
  br label %42

34:                                               ; preds = %23
  %35 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %6, align 8
  %36 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %35, i32 0, i32 0
  %37 = load %struct.phy**, %struct.phy*** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.phy*, %struct.phy** %37, i64 %39
  %41 = load %struct.phy*, %struct.phy** %40, align 8
  store %struct.phy* %41, %struct.phy** %3, align 8
  br label %42

42:                                               ; preds = %34, %30, %19
  %43 = load %struct.phy*, %struct.phy** %3, align 8
  ret %struct.phy* %43
}

declare dso_local %struct.tegra_xusb_padctl* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.phy* @ERR_PTR(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.phy**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
