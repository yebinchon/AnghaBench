; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb.c_tegra_xusb_lane_program.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb.c_tegra_xusb_lane_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_xusb_lane = type { i32, %struct.tegra_xusb_lane_soc*, %struct.TYPE_2__* }
%struct.tegra_xusb_lane_soc = type { i32, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.tegra_xusb_padctl* }
%struct.tegra_xusb_padctl = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_xusb_lane*)* @tegra_xusb_lane_program to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_xusb_lane_program(%struct.tegra_xusb_lane* %0) #0 {
  %2 = alloca %struct.tegra_xusb_lane*, align 8
  %3 = alloca %struct.tegra_xusb_padctl*, align 8
  %4 = alloca %struct.tegra_xusb_lane_soc*, align 8
  %5 = alloca i32, align 4
  store %struct.tegra_xusb_lane* %0, %struct.tegra_xusb_lane** %2, align 8
  %6 = load %struct.tegra_xusb_lane*, %struct.tegra_xusb_lane** %2, align 8
  %7 = getelementptr inbounds %struct.tegra_xusb_lane, %struct.tegra_xusb_lane* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %9, align 8
  store %struct.tegra_xusb_padctl* %10, %struct.tegra_xusb_padctl** %3, align 8
  %11 = load %struct.tegra_xusb_lane*, %struct.tegra_xusb_lane** %2, align 8
  %12 = getelementptr inbounds %struct.tegra_xusb_lane, %struct.tegra_xusb_lane* %11, i32 0, i32 1
  %13 = load %struct.tegra_xusb_lane_soc*, %struct.tegra_xusb_lane_soc** %12, align 8
  store %struct.tegra_xusb_lane_soc* %13, %struct.tegra_xusb_lane_soc** %4, align 8
  %14 = load %struct.tegra_xusb_lane_soc*, %struct.tegra_xusb_lane_soc** %4, align 8
  %15 = getelementptr inbounds %struct.tegra_xusb_lane_soc, %struct.tegra_xusb_lane_soc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %50

19:                                               ; preds = %1
  %20 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %21 = load %struct.tegra_xusb_lane_soc*, %struct.tegra_xusb_lane_soc** %4, align 8
  %22 = getelementptr inbounds %struct.tegra_xusb_lane_soc, %struct.tegra_xusb_lane_soc* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @padctl_readl(%struct.tegra_xusb_padctl* %20, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load %struct.tegra_xusb_lane_soc*, %struct.tegra_xusb_lane_soc** %4, align 8
  %26 = getelementptr inbounds %struct.tegra_xusb_lane_soc, %struct.tegra_xusb_lane_soc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.tegra_xusb_lane_soc*, %struct.tegra_xusb_lane_soc** %4, align 8
  %29 = getelementptr inbounds %struct.tegra_xusb_lane_soc, %struct.tegra_xusb_lane_soc* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %27, %30
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load %struct.tegra_xusb_lane*, %struct.tegra_xusb_lane** %2, align 8
  %36 = getelementptr inbounds %struct.tegra_xusb_lane, %struct.tegra_xusb_lane* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.tegra_xusb_lane_soc*, %struct.tegra_xusb_lane_soc** %4, align 8
  %39 = getelementptr inbounds %struct.tegra_xusb_lane_soc, %struct.tegra_xusb_lane_soc* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %37, %40
  %42 = load i32, i32* %5, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %5, align 4
  %44 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %3, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.tegra_xusb_lane_soc*, %struct.tegra_xusb_lane_soc** %4, align 8
  %47 = getelementptr inbounds %struct.tegra_xusb_lane_soc, %struct.tegra_xusb_lane_soc* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @padctl_writel(%struct.tegra_xusb_padctl* %44, i32 %45, i32 %48)
  br label %50

50:                                               ; preds = %19, %18
  ret void
}

declare dso_local i32 @padctl_readl(%struct.tegra_xusb_padctl*, i32) #1

declare dso_local i32 @padctl_writel(%struct.tegra_xusb_padctl*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
