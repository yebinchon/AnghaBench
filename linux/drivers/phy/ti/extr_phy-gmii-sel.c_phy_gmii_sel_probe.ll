; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-gmii-sel.c_phy_gmii_sel_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-gmii-sel.c_phy_gmii_sel_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.of_device_id = type { i32 }
%struct.phy_gmii_sel_priv = type { i32, i32, i32, %struct.device* }

@phy_gmii_sel_id_table = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed to get syscon %d\0A\00", align 1
@phy_gmii_sel_of_xlate = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to create phy provider %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @phy_gmii_sel_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phy_gmii_sel_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.of_device_id*, align 8
  %7 = alloca %struct.phy_gmii_sel_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %5, align 8
  %14 = load i32, i32* @phy_gmii_sel_id_table, align 4
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 0
  %18 = load %struct.device_node*, %struct.device_node** %17, align 8
  %19 = call %struct.of_device_id* @of_match_node(i32 %14, %struct.device_node* %18)
  store %struct.of_device_id* %19, %struct.of_device_id** %6, align 8
  %20 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %21 = icmp ne %struct.of_device_id* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %97

25:                                               ; preds = %1
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.phy_gmii_sel_priv* @devm_kzalloc(%struct.device* %27, i32 24, i32 %28)
  store %struct.phy_gmii_sel_priv* %29, %struct.phy_gmii_sel_priv** %7, align 8
  %30 = load %struct.phy_gmii_sel_priv*, %struct.phy_gmii_sel_priv** %7, align 8
  %31 = icmp ne %struct.phy_gmii_sel_priv* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %97

35:                                               ; preds = %25
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = load %struct.phy_gmii_sel_priv*, %struct.phy_gmii_sel_priv** %7, align 8
  %39 = getelementptr inbounds %struct.phy_gmii_sel_priv, %struct.phy_gmii_sel_priv* %38, i32 0, i32 3
  store %struct.device* %37, %struct.device** %39, align 8
  %40 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %41 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.phy_gmii_sel_priv*, %struct.phy_gmii_sel_priv** %7, align 8
  %44 = getelementptr inbounds %struct.phy_gmii_sel_priv, %struct.phy_gmii_sel_priv* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load %struct.device_node*, %struct.device_node** %5, align 8
  %46 = getelementptr inbounds %struct.device_node, %struct.device_node* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @syscon_node_to_regmap(i32 %47)
  %49 = load %struct.phy_gmii_sel_priv*, %struct.phy_gmii_sel_priv** %7, align 8
  %50 = getelementptr inbounds %struct.phy_gmii_sel_priv, %struct.phy_gmii_sel_priv* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.phy_gmii_sel_priv*, %struct.phy_gmii_sel_priv** %7, align 8
  %52 = getelementptr inbounds %struct.phy_gmii_sel_priv, %struct.phy_gmii_sel_priv* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @IS_ERR(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %35
  %57 = load %struct.phy_gmii_sel_priv*, %struct.phy_gmii_sel_priv** %7, align 8
  %58 = getelementptr inbounds %struct.phy_gmii_sel_priv, %struct.phy_gmii_sel_priv* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @PTR_ERR(i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = load %struct.device*, %struct.device** %4, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @dev_err(%struct.device* %61, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %2, align 4
  br label %97

65:                                               ; preds = %35
  %66 = load %struct.phy_gmii_sel_priv*, %struct.phy_gmii_sel_priv** %7, align 8
  %67 = call i32 @phy_gmii_sel_init_ports(%struct.phy_gmii_sel_priv* %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %2, align 4
  br label %97

72:                                               ; preds = %65
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = load %struct.phy_gmii_sel_priv*, %struct.phy_gmii_sel_priv** %7, align 8
  %76 = call i32 @dev_set_drvdata(%struct.device* %74, %struct.phy_gmii_sel_priv* %75)
  %77 = load %struct.device*, %struct.device** %4, align 8
  %78 = load i32, i32* @phy_gmii_sel_of_xlate, align 4
  %79 = call i32 @devm_of_phy_provider_register(%struct.device* %77, i32 %78)
  %80 = load %struct.phy_gmii_sel_priv*, %struct.phy_gmii_sel_priv** %7, align 8
  %81 = getelementptr inbounds %struct.phy_gmii_sel_priv, %struct.phy_gmii_sel_priv* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load %struct.phy_gmii_sel_priv*, %struct.phy_gmii_sel_priv** %7, align 8
  %83 = getelementptr inbounds %struct.phy_gmii_sel_priv, %struct.phy_gmii_sel_priv* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i64 @IS_ERR(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %72
  %88 = load %struct.phy_gmii_sel_priv*, %struct.phy_gmii_sel_priv** %7, align 8
  %89 = getelementptr inbounds %struct.phy_gmii_sel_priv, %struct.phy_gmii_sel_priv* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @PTR_ERR(i32 %90)
  store i32 %91, i32* %8, align 4
  %92 = load %struct.device*, %struct.device** %4, align 8
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @dev_err(%struct.device* %92, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* %8, align 4
  store i32 %95, i32* %2, align 4
  br label %97

96:                                               ; preds = %72
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %96, %87, %70, %56, %32, %22
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local %struct.of_device_id* @of_match_node(i32, %struct.device_node*) #1

declare dso_local %struct.phy_gmii_sel_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @syscon_node_to_regmap(i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @phy_gmii_sel_init_ports(%struct.phy_gmii_sel_priv*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.phy_gmii_sel_priv*) #1

declare dso_local i32 @devm_of_phy_provider_register(%struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
