; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/qualcomm/extr_phy-qcom-pcie2.c_phy_pipe_clksrc_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/qualcomm/extr_phy-qcom-pcie2.c_phy_pipe_clksrc_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_phy = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.clk_fixed_rate = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i32*, i32 }

@.str = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"%s: No clock-output-names\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@clk_fixed_rate_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_phy*)* @phy_pipe_clksrc_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phy_pipe_clksrc_register(%struct.qcom_phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qcom_phy*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.clk_fixed_rate*, align 8
  %6 = alloca %struct.clk_init_data, align 8
  %7 = alloca i32, align 4
  store %struct.qcom_phy* %0, %struct.qcom_phy** %3, align 8
  %8 = load %struct.qcom_phy*, %struct.qcom_phy** %3, align 8
  %9 = getelementptr inbounds %struct.qcom_phy, %struct.qcom_phy* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %4, align 8
  %13 = bitcast %struct.clk_init_data* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 16, i1 false)
  %14 = load %struct.device_node*, %struct.device_node** %4, align 8
  %15 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %6, i32 0, i32 1
  %16 = call i32 @of_property_read_string(%struct.device_node* %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %1
  %20 = load %struct.qcom_phy*, %struct.qcom_phy** %3, align 8
  %21 = getelementptr inbounds %struct.qcom_phy, %struct.qcom_phy* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = load %struct.device_node*, %struct.device_node** %4, align 8
  %24 = getelementptr inbounds %struct.device_node, %struct.device_node* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dev_err(%struct.TYPE_5__* %22, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %2, align 4
  br label %52

28:                                               ; preds = %1
  %29 = load %struct.qcom_phy*, %struct.qcom_phy** %3, align 8
  %30 = getelementptr inbounds %struct.qcom_phy, %struct.qcom_phy* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.clk_fixed_rate* @devm_kzalloc(%struct.TYPE_5__* %31, i32 16, i32 %32)
  store %struct.clk_fixed_rate* %33, %struct.clk_fixed_rate** %5, align 8
  %34 = load %struct.clk_fixed_rate*, %struct.clk_fixed_rate** %5, align 8
  %35 = icmp ne %struct.clk_fixed_rate* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %28
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %52

39:                                               ; preds = %28
  %40 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %6, i32 0, i32 0
  store i32* @clk_fixed_rate_ops, i32** %40, align 8
  %41 = load %struct.clk_fixed_rate*, %struct.clk_fixed_rate** %5, align 8
  %42 = getelementptr inbounds %struct.clk_fixed_rate, %struct.clk_fixed_rate* %41, i32 0, i32 0
  store i32 250000000, i32* %42, align 8
  %43 = load %struct.clk_fixed_rate*, %struct.clk_fixed_rate** %5, align 8
  %44 = getelementptr inbounds %struct.clk_fixed_rate, %struct.clk_fixed_rate* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store %struct.clk_init_data* %6, %struct.clk_init_data** %45, align 8
  %46 = load %struct.qcom_phy*, %struct.qcom_phy** %3, align 8
  %47 = getelementptr inbounds %struct.qcom_phy, %struct.qcom_phy* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = load %struct.clk_fixed_rate*, %struct.clk_fixed_rate** %5, align 8
  %50 = getelementptr inbounds %struct.clk_fixed_rate, %struct.clk_fixed_rate* %49, i32 0, i32 1
  %51 = call i32 @devm_clk_hw_register(%struct.TYPE_5__* %48, %struct.TYPE_6__* %50)
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %39, %36, %19
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @of_property_read_string(%struct.device_node*, i8*, i32*) #2

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*, i32) #2

declare dso_local %struct.clk_fixed_rate* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #2

declare dso_local i32 @devm_clk_hw_register(%struct.TYPE_5__*, %struct.TYPE_6__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
