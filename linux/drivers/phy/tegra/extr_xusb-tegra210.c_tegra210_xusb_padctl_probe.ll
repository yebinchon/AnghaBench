; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb-tegra210.c_tegra210_xusb_padctl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb-tegra210.c_tegra210_xusb_padctl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_xusb_padctl = type { %struct.tegra_xusb_padctl_soc*, %struct.device* }
%struct.device = type { i32 }
%struct.tegra_xusb_padctl_soc = type { i32 }
%struct.tegra210_xusb_padctl = type { %struct.tegra_xusb_padctl, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tegra_xusb_padctl* (%struct.device*, %struct.tegra_xusb_padctl_soc*)* @tegra210_xusb_padctl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tegra_xusb_padctl* @tegra210_xusb_padctl_probe(%struct.device* %0, %struct.tegra_xusb_padctl_soc* %1) #0 {
  %3 = alloca %struct.tegra_xusb_padctl*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.tegra_xusb_padctl_soc*, align 8
  %6 = alloca %struct.tegra210_xusb_padctl*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.tegra_xusb_padctl_soc* %1, %struct.tegra_xusb_padctl_soc** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.tegra210_xusb_padctl* @devm_kzalloc(%struct.device* %8, i32 24, i32 %9)
  store %struct.tegra210_xusb_padctl* %10, %struct.tegra210_xusb_padctl** %6, align 8
  %11 = load %struct.tegra210_xusb_padctl*, %struct.tegra210_xusb_padctl** %6, align 8
  %12 = icmp ne %struct.tegra210_xusb_padctl* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.tegra_xusb_padctl* @ERR_PTR(i32 %15)
  store %struct.tegra_xusb_padctl* %16, %struct.tegra_xusb_padctl** %3, align 8
  br label %37

17:                                               ; preds = %2
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = load %struct.tegra210_xusb_padctl*, %struct.tegra210_xusb_padctl** %6, align 8
  %20 = getelementptr inbounds %struct.tegra210_xusb_padctl, %struct.tegra210_xusb_padctl* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %20, i32 0, i32 1
  store %struct.device* %18, %struct.device** %21, align 8
  %22 = load %struct.tegra_xusb_padctl_soc*, %struct.tegra_xusb_padctl_soc** %5, align 8
  %23 = load %struct.tegra210_xusb_padctl*, %struct.tegra210_xusb_padctl** %6, align 8
  %24 = getelementptr inbounds %struct.tegra210_xusb_padctl, %struct.tegra210_xusb_padctl* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.tegra_xusb_padctl, %struct.tegra_xusb_padctl* %24, i32 0, i32 0
  store %struct.tegra_xusb_padctl_soc* %22, %struct.tegra_xusb_padctl_soc** %25, align 8
  %26 = load %struct.tegra210_xusb_padctl*, %struct.tegra210_xusb_padctl** %6, align 8
  %27 = getelementptr inbounds %struct.tegra210_xusb_padctl, %struct.tegra210_xusb_padctl* %26, i32 0, i32 1
  %28 = call i32 @tegra210_xusb_read_fuse_calibration(i32* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %17
  %32 = load i32, i32* %7, align 4
  %33 = call %struct.tegra_xusb_padctl* @ERR_PTR(i32 %32)
  store %struct.tegra_xusb_padctl* %33, %struct.tegra_xusb_padctl** %3, align 8
  br label %37

34:                                               ; preds = %17
  %35 = load %struct.tegra210_xusb_padctl*, %struct.tegra210_xusb_padctl** %6, align 8
  %36 = getelementptr inbounds %struct.tegra210_xusb_padctl, %struct.tegra210_xusb_padctl* %35, i32 0, i32 0
  store %struct.tegra_xusb_padctl* %36, %struct.tegra_xusb_padctl** %3, align 8
  br label %37

37:                                               ; preds = %34, %31, %13
  %38 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  ret %struct.tegra_xusb_padctl* %38
}

declare dso_local %struct.tegra210_xusb_padctl* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.tegra_xusb_padctl* @ERR_PTR(i32) #1

declare dso_local i32 @tegra210_xusb_read_fuse_calibration(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
