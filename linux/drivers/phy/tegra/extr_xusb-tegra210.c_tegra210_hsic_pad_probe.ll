; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb-tegra210.c_tegra210_hsic_pad_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/tegra/extr_xusb-tegra210.c_tegra210_hsic_pad_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_xusb_pad = type { i32, %struct.tegra_xusb_pad_soc*, i32* }
%struct.tegra_xusb_padctl = type { i32 }
%struct.tegra_xusb_pad_soc = type { i32 }
%struct.device_node = type { i32 }
%struct.tegra_xusb_hsic_pad = type { i32, %struct.tegra_xusb_pad }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tegra210_hsic_lane_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"trk\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to get trk clock: %d\0A\00", align 1
@tegra210_hsic_phy_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tegra_xusb_pad* (%struct.tegra_xusb_padctl*, %struct.tegra_xusb_pad_soc*, %struct.device_node*)* @tegra210_hsic_pad_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tegra_xusb_pad* @tegra210_hsic_pad_probe(%struct.tegra_xusb_padctl* %0, %struct.tegra_xusb_pad_soc* %1, %struct.device_node* %2) #0 {
  %4 = alloca %struct.tegra_xusb_pad*, align 8
  %5 = alloca %struct.tegra_xusb_padctl*, align 8
  %6 = alloca %struct.tegra_xusb_pad_soc*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.tegra_xusb_hsic_pad*, align 8
  %9 = alloca %struct.tegra_xusb_pad*, align 8
  %10 = alloca i32, align 4
  store %struct.tegra_xusb_padctl* %0, %struct.tegra_xusb_padctl** %5, align 8
  store %struct.tegra_xusb_pad_soc* %1, %struct.tegra_xusb_pad_soc** %6, align 8
  store %struct.device_node* %2, %struct.device_node** %7, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.tegra_xusb_hsic_pad* @kzalloc(i32 32, i32 %11)
  store %struct.tegra_xusb_hsic_pad* %12, %struct.tegra_xusb_hsic_pad** %8, align 8
  %13 = load %struct.tegra_xusb_hsic_pad*, %struct.tegra_xusb_hsic_pad** %8, align 8
  %14 = icmp ne %struct.tegra_xusb_hsic_pad* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.tegra_xusb_pad* @ERR_PTR(i32 %17)
  store %struct.tegra_xusb_pad* %18, %struct.tegra_xusb_pad** %4, align 8
  br label %75

19:                                               ; preds = %3
  %20 = load %struct.tegra_xusb_hsic_pad*, %struct.tegra_xusb_hsic_pad** %8, align 8
  %21 = getelementptr inbounds %struct.tegra_xusb_hsic_pad, %struct.tegra_xusb_hsic_pad* %20, i32 0, i32 1
  store %struct.tegra_xusb_pad* %21, %struct.tegra_xusb_pad** %9, align 8
  %22 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %9, align 8
  %23 = getelementptr inbounds %struct.tegra_xusb_pad, %struct.tegra_xusb_pad* %22, i32 0, i32 2
  store i32* @tegra210_hsic_lane_ops, i32** %23, align 8
  %24 = load %struct.tegra_xusb_pad_soc*, %struct.tegra_xusb_pad_soc** %6, align 8
  %25 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %9, align 8
  %26 = getelementptr inbounds %struct.tegra_xusb_pad, %struct.tegra_xusb_pad* %25, i32 0, i32 1
  store %struct.tegra_xusb_pad_soc* %24, %struct.tegra_xusb_pad_soc** %26, align 8
  %27 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %9, align 8
  %28 = load %struct.tegra_xusb_padctl*, %struct.tegra_xusb_padctl** %5, align 8
  %29 = load %struct.device_node*, %struct.device_node** %7, align 8
  %30 = call i32 @tegra_xusb_pad_init(%struct.tegra_xusb_pad* %27, %struct.tegra_xusb_padctl* %28, %struct.device_node* %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %19
  %34 = load %struct.tegra_xusb_hsic_pad*, %struct.tegra_xusb_hsic_pad** %8, align 8
  %35 = call i32 @kfree(%struct.tegra_xusb_hsic_pad* %34)
  br label %72

36:                                               ; preds = %19
  %37 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %9, align 8
  %38 = getelementptr inbounds %struct.tegra_xusb_pad, %struct.tegra_xusb_pad* %37, i32 0, i32 0
  %39 = call i32 @devm_clk_get(i32* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.tegra_xusb_hsic_pad*, %struct.tegra_xusb_hsic_pad** %8, align 8
  %41 = getelementptr inbounds %struct.tegra_xusb_hsic_pad, %struct.tegra_xusb_hsic_pad* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.tegra_xusb_hsic_pad*, %struct.tegra_xusb_hsic_pad** %8, align 8
  %43 = getelementptr inbounds %struct.tegra_xusb_hsic_pad, %struct.tegra_xusb_hsic_pad* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @IS_ERR(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %36
  %48 = load %struct.tegra_xusb_hsic_pad*, %struct.tegra_xusb_hsic_pad** %8, align 8
  %49 = getelementptr inbounds %struct.tegra_xusb_hsic_pad, %struct.tegra_xusb_hsic_pad* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @PTR_ERR(i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %9, align 8
  %53 = getelementptr inbounds %struct.tegra_xusb_pad, %struct.tegra_xusb_pad* %52, i32 0, i32 0
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @dev_err(i32* %53, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  br label %68

56:                                               ; preds = %36
  %57 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %9, align 8
  %58 = call i32 @tegra_xusb_pad_register(%struct.tegra_xusb_pad* %57, i32* @tegra210_hsic_phy_ops)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %68

62:                                               ; preds = %56
  %63 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %9, align 8
  %64 = getelementptr inbounds %struct.tegra_xusb_pad, %struct.tegra_xusb_pad* %63, i32 0, i32 0
  %65 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %9, align 8
  %66 = call i32 @dev_set_drvdata(i32* %64, %struct.tegra_xusb_pad* %65)
  %67 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %9, align 8
  store %struct.tegra_xusb_pad* %67, %struct.tegra_xusb_pad** %4, align 8
  br label %75

68:                                               ; preds = %61, %47
  %69 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %9, align 8
  %70 = getelementptr inbounds %struct.tegra_xusb_pad, %struct.tegra_xusb_pad* %69, i32 0, i32 0
  %71 = call i32 @device_unregister(i32* %70)
  br label %72

72:                                               ; preds = %68, %33
  %73 = load i32, i32* %10, align 4
  %74 = call %struct.tegra_xusb_pad* @ERR_PTR(i32 %73)
  store %struct.tegra_xusb_pad* %74, %struct.tegra_xusb_pad** %4, align 8
  br label %75

75:                                               ; preds = %72, %62, %15
  %76 = load %struct.tegra_xusb_pad*, %struct.tegra_xusb_pad** %4, align 8
  ret %struct.tegra_xusb_pad* %76
}

declare dso_local %struct.tegra_xusb_hsic_pad* @kzalloc(i32, i32) #1

declare dso_local %struct.tegra_xusb_pad* @ERR_PTR(i32) #1

declare dso_local i32 @tegra_xusb_pad_init(%struct.tegra_xusb_pad*, %struct.tegra_xusb_padctl*, %struct.device_node*) #1

declare dso_local i32 @kfree(%struct.tegra_xusb_hsic_pad*) #1

declare dso_local i32 @devm_clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @tegra_xusb_pad_register(%struct.tegra_xusb_pad*, i32*) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.tegra_xusb_pad*) #1

declare dso_local i32 @device_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
