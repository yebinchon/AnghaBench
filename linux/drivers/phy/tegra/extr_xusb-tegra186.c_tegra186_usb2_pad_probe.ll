; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb-tegra186.c_tegra186_usb2_pad_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb-tegra186.c_tegra186_usb2_pad_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_xusb_pad = type { i32, %struct.tegra_xusb_pad_soc*, i32* }
%struct.tegra_xusb_padctl = type { i32 }
%struct.tegra_xusb_pad_soc = type { i32 }
%struct.device_node = type { i32 }
%struct.tegra186_xusb_padctl = type { i32 }
%struct.tegra_xusb_usb2_pad = type { %struct.tegra_xusb_pad }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tegra186_usb2_lane_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"trk\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to get usb2 trk clock: %d\0A\00", align 1
@utmi_phy_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tegra_xusb_pad* (%struct.tegra_xusb_padctl*, %struct.tegra_xusb_pad_soc*, %struct.device_node*)* @tegra186_usb2_pad_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tegra_xusb_pad* @tegra186_usb2_pad_probe(%struct.tegra_xusb_padctl* %0, %struct.tegra_xusb_pad_soc* %1, %struct.device_node* %2) #0 {
  %4 = alloca %struct.tegra_xusb_pad*, align 8
  %5 = alloca %struct.tegra_xusb_padctl*, align 8
  %6 = alloca %struct.tegra_xusb_pad_soc*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.tegra186_xusb_padctl*, align 8
  %9 = alloca %struct.tegra_xusb_usb2_pad*, align 8
  %10 = alloca %struct.tegra_xusb_pad*, align 8
  %11 = alloca i32, align 4
  store %struct.tegra_xusb_padctl* %0, %struct.tegra_xusb_padctl** %5, align 8
  store %struct.tegra_xusb_pad_soc* %1, %struct.tegra_xusb_pad_soc** %6, align 8
  store %struct.device_node* %2, %struct.device_node** %7, align 8
  %12 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %5, align 8
  %13 = call %struct.tegra186_xusb_padctl* @to_tegra186_xusb_padctl(%struct.tegra_xusb_padctl* %12)
  store %struct.tegra186_xusb_padctl* %13, %struct.tegra186_xusb_padctl** %8, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.tegra_xusb_usb2_pad* @kzalloc(i32 24, i32 %14)
  store %struct.tegra_xusb_usb2_pad* %15, %struct.tegra_xusb_usb2_pad** %9, align 8
  %16 = load %struct.tegra_xusb_usb2_pad*, %struct.tegra_xusb_usb2_pad** %9, align 8
  %17 = icmp ne %struct.tegra_xusb_usb2_pad* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.tegra_xusb_pad* @ERR_PTR(i32 %20)
  store %struct.tegra_xusb_pad* %21, %struct.tegra_xusb_pad** %4, align 8
  br label %78

22:                                               ; preds = %3
  %23 = load %struct.tegra_xusb_usb2_pad*, %struct.tegra_xusb_usb2_pad** %9, align 8
  %24 = getelementptr inbounds %struct.tegra_xusb_usb2_pad, %struct.tegra_xusb_usb2_pad* %23, i32 0, i32 0
  store %struct.tegra_xusb_pad* %24, %struct.tegra_xusb_pad** %10, align 8
  %25 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %10, align 8
  %26 = getelementptr inbounds %struct.tegra_xusb_pad, %struct.tegra_xusb_pad* %25, i32 0, i32 2
  store i32* @tegra186_usb2_lane_ops, i32** %26, align 8
  %27 = load %struct.tegra_xusb_pad_soc*, %struct.tegra_xusb_pad_soc** %6, align 8
  %28 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %10, align 8
  %29 = getelementptr inbounds %struct.tegra_xusb_pad, %struct.tegra_xusb_pad* %28, i32 0, i32 1
  store %struct.tegra_xusb_pad_soc* %27, %struct.tegra_xusb_pad_soc** %29, align 8
  %30 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %10, align 8
  %31 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %5, align 8
  %32 = load %struct.device_node*, %struct.device_node** %7, align 8
  %33 = call i32 @tegra_xusb_pad_init(%struct.tegra_xusb_pad* %30, %struct.tegra_xusb_padctl* %31, %struct.device_node* %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %22
  %37 = load %struct.tegra_xusb_usb2_pad*, %struct.tegra_xusb_usb2_pad** %9, align 8
  %38 = call i32 @kfree(%struct.tegra_xusb_usb2_pad* %37)
  br label %75

39:                                               ; preds = %22
  %40 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %10, align 8
  %41 = getelementptr inbounds %struct.tegra_xusb_pad, %struct.tegra_xusb_pad* %40, i32 0, i32 0
  %42 = call i32 @devm_clk_get(i32* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.tegra186_xusb_padctl*, %struct.tegra186_xusb_padctl** %8, align 8
  %44 = getelementptr inbounds %struct.tegra186_xusb_padctl, %struct.tegra186_xusb_padctl* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.tegra186_xusb_padctl*, %struct.tegra186_xusb_padctl** %8, align 8
  %46 = getelementptr inbounds %struct.tegra186_xusb_padctl, %struct.tegra186_xusb_padctl* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @IS_ERR(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %39
  %51 = load %struct.tegra186_xusb_padctl*, %struct.tegra186_xusb_padctl** %8, align 8
  %52 = getelementptr inbounds %struct.tegra186_xusb_padctl, %struct.tegra186_xusb_padctl* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @PTR_ERR(i32 %53)
  store i32 %54, i32* %11, align 4
  %55 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %10, align 8
  %56 = getelementptr inbounds %struct.tegra_xusb_pad, %struct.tegra_xusb_pad* %55, i32 0, i32 0
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @dev_dbg(i32* %56, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  br label %71

59:                                               ; preds = %39
  %60 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %10, align 8
  %61 = call i32 @tegra_xusb_pad_register(%struct.tegra_xusb_pad* %60, i32* @utmi_phy_ops)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %71

65:                                               ; preds = %59
  %66 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %10, align 8
  %67 = getelementptr inbounds %struct.tegra_xusb_pad, %struct.tegra_xusb_pad* %66, i32 0, i32 0
  %68 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %10, align 8
  %69 = call i32 @dev_set_drvdata(i32* %67, %struct.tegra_xusb_pad* %68)
  %70 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %10, align 8
  store %struct.tegra_xusb_pad* %70, %struct.tegra_xusb_pad** %4, align 8
  br label %78

71:                                               ; preds = %64, %50
  %72 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %10, align 8
  %73 = getelementptr inbounds %struct.tegra_xusb_pad, %struct.tegra_xusb_pad* %72, i32 0, i32 0
  %74 = call i32 @device_unregister(i32* %73)
  br label %75

75:                                               ; preds = %71, %36
  %76 = load i32, i32* %11, align 4
  %77 = call %struct.tegra_xusb_pad* @ERR_PTR(i32 %76)
  store %struct.tegra_xusb_pad* %77, %struct.tegra_xusb_pad** %4, align 8
  br label %78

78:                                               ; preds = %75, %65, %18
  %79 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %4, align 8
  ret %struct.tegra_xusb_pad* %79
}

declare dso_local %struct.tegra186_xusb_padctl* @to_tegra186_xusb_padctl(%struct.tegra_xusb_padctl*) #1

declare dso_local %struct.tegra_xusb_usb2_pad* @kzalloc(i32, i32) #1

declare dso_local %struct.tegra_xusb_pad* @ERR_PTR(i32) #1

declare dso_local i32 @tegra_xusb_pad_init(%struct.tegra_xusb_pad*, %struct.tegra_xusb_padctl*, %struct.device_node*) #1

declare dso_local i32 @kfree(%struct.tegra_xusb_usb2_pad*) #1

declare dso_local i32 @devm_clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @tegra_xusb_pad_register(%struct.tegra_xusb_pad*, i32*) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.tegra_xusb_pad*) #1

declare dso_local i32 @device_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
