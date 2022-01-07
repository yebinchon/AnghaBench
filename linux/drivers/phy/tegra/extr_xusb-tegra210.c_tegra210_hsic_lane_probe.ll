; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb-tegra210.c_tegra210_hsic_lane_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb-tegra210.c_tegra210_hsic_lane_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_xusb_lane = type { i32, %struct.device_node*, %struct.tegra_xusb_pad*, i32*, i32 }
%struct.tegra_xusb_pad = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.device_node = type { i32 }
%struct.tegra_xusb_hsic_lane = type { %struct.tegra_xusb_lane }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tegra_xusb_lane* (%struct.tegra_xusb_pad*, %struct.device_node*, i32)* @tegra210_hsic_lane_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tegra_xusb_lane* @tegra210_hsic_lane_probe(%struct.tegra_xusb_pad* %0, %struct.device_node* %1, i32 %2) #0 {
  %4 = alloca %struct.tegra_xusb_lane*, align 8
  %5 = alloca %struct.tegra_xusb_pad*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tegra_xusb_hsic_lane*, align 8
  %9 = alloca i32, align 4
  store %struct.tegra_xusb_pad* %0, %struct.tegra_xusb_pad** %5, align 8
  store %struct.device_node* %1, %struct.device_node** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.tegra_xusb_hsic_lane* @kzalloc(i32 40, i32 %10)
  store %struct.tegra_xusb_hsic_lane* %11, %struct.tegra_xusb_hsic_lane** %8, align 8
  %12 = load %struct.tegra_xusb_hsic_lane*, %struct.tegra_xusb_hsic_lane** %8, align 8
  %13 = icmp ne %struct.tegra_xusb_hsic_lane* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.tegra_xusb_lane* @ERR_PTR(i32 %16)
  store %struct.tegra_xusb_lane* %17, %struct.tegra_xusb_lane** %4, align 8
  br label %60

18:                                               ; preds = %3
  %19 = load %struct.tegra_xusb_hsic_lane*, %struct.tegra_xusb_hsic_lane** %8, align 8
  %20 = getelementptr inbounds %struct.tegra_xusb_hsic_lane, %struct.tegra_xusb_hsic_lane* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.tegra_xusb_lane, %struct.tegra_xusb_lane* %20, i32 0, i32 4
  %22 = call i32 @INIT_LIST_HEAD(i32* %21)
  %23 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %5, align 8
  %24 = getelementptr inbounds %struct.tegra_xusb_pad, %struct.tegra_xusb_pad* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load %struct.tegra_xusb_hsic_lane*, %struct.tegra_xusb_hsic_lane** %8, align 8
  %32 = getelementptr inbounds %struct.tegra_xusb_hsic_lane, %struct.tegra_xusb_hsic_lane* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.tegra_xusb_lane, %struct.tegra_xusb_lane* %32, i32 0, i32 3
  store i32* %30, i32** %33, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.tegra_xusb_hsic_lane*, %struct.tegra_xusb_hsic_lane** %8, align 8
  %36 = getelementptr inbounds %struct.tegra_xusb_hsic_lane, %struct.tegra_xusb_hsic_lane* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.tegra_xusb_lane, %struct.tegra_xusb_lane* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  %38 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %5, align 8
  %39 = load %struct.tegra_xusb_hsic_lane*, %struct.tegra_xusb_hsic_lane** %8, align 8
  %40 = getelementptr inbounds %struct.tegra_xusb_hsic_lane, %struct.tegra_xusb_hsic_lane* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.tegra_xusb_lane, %struct.tegra_xusb_lane* %40, i32 0, i32 2
  store %struct.tegra_xusb_pad* %38, %struct.tegra_xusb_pad** %41, align 8
  %42 = load %struct.device_node*, %struct.device_node** %6, align 8
  %43 = load %struct.tegra_xusb_hsic_lane*, %struct.tegra_xusb_hsic_lane** %8, align 8
  %44 = getelementptr inbounds %struct.tegra_xusb_hsic_lane, %struct.tegra_xusb_hsic_lane* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.tegra_xusb_lane, %struct.tegra_xusb_lane* %44, i32 0, i32 1
  store %struct.device_node* %42, %struct.device_node** %45, align 8
  %46 = load %struct.tegra_xusb_hsic_lane*, %struct.tegra_xusb_hsic_lane** %8, align 8
  %47 = getelementptr inbounds %struct.tegra_xusb_hsic_lane, %struct.tegra_xusb_hsic_lane* %46, i32 0, i32 0
  %48 = load %struct.device_node*, %struct.device_node** %6, align 8
  %49 = call i32 @tegra_xusb_lane_parse_dt(%struct.tegra_xusb_lane* %47, %struct.device_node* %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %18
  %53 = load %struct.tegra_xusb_hsic_lane*, %struct.tegra_xusb_hsic_lane** %8, align 8
  %54 = call i32 @kfree(%struct.tegra_xusb_hsic_lane* %53)
  %55 = load i32, i32* %9, align 4
  %56 = call %struct.tegra_xusb_lane* @ERR_PTR(i32 %55)
  store %struct.tegra_xusb_lane* %56, %struct.tegra_xusb_lane** %4, align 8
  br label %60

57:                                               ; preds = %18
  %58 = load %struct.tegra_xusb_hsic_lane*, %struct.tegra_xusb_hsic_lane** %8, align 8
  %59 = getelementptr inbounds %struct.tegra_xusb_hsic_lane, %struct.tegra_xusb_hsic_lane* %58, i32 0, i32 0
  store %struct.tegra_xusb_lane* %59, %struct.tegra_xusb_lane** %4, align 8
  br label %60

60:                                               ; preds = %57, %52, %14
  %61 = load %struct.tegra_xusb_lane*, %struct.tegra_xusb_lane** %4, align 8
  ret %struct.tegra_xusb_lane* %61
}

declare dso_local %struct.tegra_xusb_hsic_lane* @kzalloc(i32, i32) #1

declare dso_local %struct.tegra_xusb_lane* @ERR_PTR(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @tegra_xusb_lane_parse_dt(%struct.tegra_xusb_lane*, %struct.device_node*) #1

declare dso_local i32 @kfree(%struct.tegra_xusb_hsic_lane*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
