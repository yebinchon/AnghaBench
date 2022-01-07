; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb-tegra124.c_tegra124_usb2_pad_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb-tegra124.c_tegra124_usb2_pad_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_xusb_pad = type { i32, %struct.tegra_xusb_pad_soc*, i32* }
%struct.tegra_xusb_padctl = type { i32 }
%struct.tegra_xusb_pad_soc = type { i32 }
%struct.device_node = type { i32 }
%struct.tegra_xusb_usb2_pad = type { %struct.tegra_xusb_pad, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tegra124_usb2_lane_ops = common dso_local global i32 0, align 4
@tegra124_usb2_phy_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tegra_xusb_pad* (%struct.tegra_xusb_padctl*, %struct.tegra_xusb_pad_soc*, %struct.device_node*)* @tegra124_usb2_pad_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tegra_xusb_pad* @tegra124_usb2_pad_probe(%struct.tegra_xusb_padctl* %0, %struct.tegra_xusb_pad_soc* %1, %struct.device_node* %2) #0 {
  %4 = alloca %struct.tegra_xusb_pad*, align 8
  %5 = alloca %struct.tegra_xusb_padctl*, align 8
  %6 = alloca %struct.tegra_xusb_pad_soc*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.tegra_xusb_usb2_pad*, align 8
  %9 = alloca %struct.tegra_xusb_pad*, align 8
  %10 = alloca i32, align 4
  store %struct.tegra_xusb_padctl* %0, %struct.tegra_xusb_padctl** %5, align 8
  store %struct.tegra_xusb_pad_soc* %1, %struct.tegra_xusb_pad_soc** %6, align 8
  store %struct.device_node* %2, %struct.device_node** %7, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.tegra_xusb_usb2_pad* @kzalloc(i32 32, i32 %11)
  store %struct.tegra_xusb_usb2_pad* %12, %struct.tegra_xusb_usb2_pad** %8, align 8
  %13 = load %struct.tegra_xusb_usb2_pad*, %struct.tegra_xusb_usb2_pad** %8, align 8
  %14 = icmp ne %struct.tegra_xusb_usb2_pad* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.tegra_xusb_pad* @ERR_PTR(i32 %17)
  store %struct.tegra_xusb_pad* %18, %struct.tegra_xusb_pad** %4, align 8
  br label %58

19:                                               ; preds = %3
  %20 = load %struct.tegra_xusb_usb2_pad*, %struct.tegra_xusb_usb2_pad** %8, align 8
  %21 = getelementptr inbounds %struct.tegra_xusb_usb2_pad, %struct.tegra_xusb_usb2_pad* %20, i32 0, i32 1
  %22 = call i32 @mutex_init(i32* %21)
  %23 = load %struct.tegra_xusb_usb2_pad*, %struct.tegra_xusb_usb2_pad** %8, align 8
  %24 = getelementptr inbounds %struct.tegra_xusb_usb2_pad, %struct.tegra_xusb_usb2_pad* %23, i32 0, i32 0
  store %struct.tegra_xusb_pad* %24, %struct.tegra_xusb_pad** %9, align 8
  %25 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %9, align 8
  %26 = getelementptr inbounds %struct.tegra_xusb_pad, %struct.tegra_xusb_pad* %25, i32 0, i32 2
  store i32* @tegra124_usb2_lane_ops, i32** %26, align 8
  %27 = load %struct.tegra_xusb_pad_soc*, %struct.tegra_xusb_pad_soc** %6, align 8
  %28 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %9, align 8
  %29 = getelementptr inbounds %struct.tegra_xusb_pad, %struct.tegra_xusb_pad* %28, i32 0, i32 1
  store %struct.tegra_xusb_pad_soc* %27, %struct.tegra_xusb_pad_soc** %29, align 8
  %30 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %9, align 8
  %31 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %5, align 8
  %32 = load %struct.device_node*, %struct.device_node** %7, align 8
  %33 = call i32 @tegra_xusb_pad_init(%struct.tegra_xusb_pad* %30, %struct.tegra_xusb_padctl* %31, %struct.device_node* %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %19
  %37 = load %struct.tegra_xusb_usb2_pad*, %struct.tegra_xusb_usb2_pad** %8, align 8
  %38 = call i32 @kfree(%struct.tegra_xusb_usb2_pad* %37)
  br label %55

39:                                               ; preds = %19
  %40 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %9, align 8
  %41 = call i32 @tegra_xusb_pad_register(%struct.tegra_xusb_pad* %40, i32* @tegra124_usb2_phy_ops)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %51

45:                                               ; preds = %39
  %46 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %9, align 8
  %47 = getelementptr inbounds %struct.tegra_xusb_pad, %struct.tegra_xusb_pad* %46, i32 0, i32 0
  %48 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %9, align 8
  %49 = call i32 @dev_set_drvdata(i32* %47, %struct.tegra_xusb_pad* %48)
  %50 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %9, align 8
  store %struct.tegra_xusb_pad* %50, %struct.tegra_xusb_pad** %4, align 8
  br label %58

51:                                               ; preds = %44
  %52 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %9, align 8
  %53 = getelementptr inbounds %struct.tegra_xusb_pad, %struct.tegra_xusb_pad* %52, i32 0, i32 0
  %54 = call i32 @device_unregister(i32* %53)
  br label %55

55:                                               ; preds = %51, %36
  %56 = load i32, i32* %10, align 4
  %57 = call %struct.tegra_xusb_pad* @ERR_PTR(i32 %56)
  store %struct.tegra_xusb_pad* %57, %struct.tegra_xusb_pad** %4, align 8
  br label %58

58:                                               ; preds = %55, %45, %15
  %59 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %4, align 8
  ret %struct.tegra_xusb_pad* %59
}

declare dso_local %struct.tegra_xusb_usb2_pad* @kzalloc(i32, i32) #1

declare dso_local %struct.tegra_xusb_pad* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @tegra_xusb_pad_init(%struct.tegra_xusb_pad*, %struct.tegra_xusb_padctl*, %struct.device_node*) #1

declare dso_local i32 @kfree(%struct.tegra_xusb_usb2_pad*) #1

declare dso_local i32 @tegra_xusb_pad_register(%struct.tegra_xusb_pad*, i32*) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.tegra_xusb_pad*) #1

declare dso_local i32 @device_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
