; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/lantiq/extr_phy-lantiq-rcu-usb2.c_ltq_rcu_usb2_of_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/lantiq/extr_phy-lantiq-rcu-usb2.c_ltq_rcu_usb2_of_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ltq_rcu_usb2_priv = type { i32, i32, i32, i8*, %struct.TYPE_4__*, i8*, i32, %struct.device* }
%struct.TYPE_4__ = type { i64 }
%struct.device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.platform_device = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Failed to lookup RCU regmap\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to get RCU PHY reg offset\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Failed to get RCU ANA CFG1 reg offset\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"phy\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Unable to get USB phy gate clk\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"ctrl\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"failed to get 'ctrl' reset\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ltq_rcu_usb2_priv*, %struct.platform_device*)* @ltq_rcu_usb2_of_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltq_rcu_usb2_of_parse(%struct.ltq_rcu_usb2_priv* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ltq_rcu_usb2_priv*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32*, align 8
  store %struct.ltq_rcu_usb2_priv* %0, %struct.ltq_rcu_usb2_priv** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %8 = load %struct.ltq_rcu_usb2_priv*, %struct.ltq_rcu_usb2_priv** %4, align 8
  %9 = getelementptr inbounds %struct.ltq_rcu_usb2_priv, %struct.ltq_rcu_usb2_priv* %8, i32 0, i32 7
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %6, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = call %struct.TYPE_4__* @of_device_get_match_data(%struct.device* %11)
  %13 = load %struct.ltq_rcu_usb2_priv*, %struct.ltq_rcu_usb2_priv** %4, align 8
  %14 = getelementptr inbounds %struct.ltq_rcu_usb2_priv, %struct.ltq_rcu_usb2_priv* %13, i32 0, i32 4
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %14, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @syscon_node_to_regmap(i32 %19)
  %21 = load %struct.ltq_rcu_usb2_priv*, %struct.ltq_rcu_usb2_priv** %4, align 8
  %22 = getelementptr inbounds %struct.ltq_rcu_usb2_priv, %struct.ltq_rcu_usb2_priv* %21, i32 0, i32 6
  store i32 %20, i32* %22, align 8
  %23 = load %struct.ltq_rcu_usb2_priv*, %struct.ltq_rcu_usb2_priv** %4, align 8
  %24 = getelementptr inbounds %struct.ltq_rcu_usb2_priv, %struct.ltq_rcu_usb2_priv* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @IS_ERR(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %2
  %29 = load %struct.device*, %struct.device** %6, align 8
  %30 = call i32 @dev_err(%struct.device* %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.ltq_rcu_usb2_priv*, %struct.ltq_rcu_usb2_priv** %4, align 8
  %32 = getelementptr inbounds %struct.ltq_rcu_usb2_priv, %struct.ltq_rcu_usb2_priv* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @PTR_ERR(i32 %33)
  store i32 %34, i32* %3, align 4
  br label %129

35:                                               ; preds = %2
  %36 = load %struct.device*, %struct.device** %6, align 8
  %37 = getelementptr inbounds %struct.device, %struct.device* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = call i32* @of_get_address(%struct.TYPE_3__* %38, i32 0, i32* null, i32* null)
  store i32* %39, i32** %7, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %35
  %43 = load %struct.device*, %struct.device** %6, align 8
  %44 = call i32 @dev_err(%struct.device* %43, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @ENOENT, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %129

47:                                               ; preds = %35
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @__be32_to_cpu(i32 %49)
  %51 = load %struct.ltq_rcu_usb2_priv*, %struct.ltq_rcu_usb2_priv** %4, align 8
  %52 = getelementptr inbounds %struct.ltq_rcu_usb2_priv, %struct.ltq_rcu_usb2_priv* %51, i32 0, i32 5
  store i8* %50, i8** %52, align 8
  %53 = load %struct.ltq_rcu_usb2_priv*, %struct.ltq_rcu_usb2_priv** %4, align 8
  %54 = getelementptr inbounds %struct.ltq_rcu_usb2_priv, %struct.ltq_rcu_usb2_priv* %53, i32 0, i32 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %77

59:                                               ; preds = %47
  %60 = load %struct.device*, %struct.device** %6, align 8
  %61 = getelementptr inbounds %struct.device, %struct.device* %60, i32 0, i32 0
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = call i32* @of_get_address(%struct.TYPE_3__* %62, i32 1, i32* null, i32* null)
  store i32* %63, i32** %7, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %71, label %66

66:                                               ; preds = %59
  %67 = load %struct.device*, %struct.device** %6, align 8
  %68 = call i32 @dev_err(%struct.device* %67, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %69 = load i32, i32* @ENOENT, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %129

71:                                               ; preds = %59
  %72 = load i32*, i32** %7, align 8
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @__be32_to_cpu(i32 %73)
  %75 = load %struct.ltq_rcu_usb2_priv*, %struct.ltq_rcu_usb2_priv** %4, align 8
  %76 = getelementptr inbounds %struct.ltq_rcu_usb2_priv, %struct.ltq_rcu_usb2_priv* %75, i32 0, i32 3
  store i8* %74, i8** %76, align 8
  br label %77

77:                                               ; preds = %71, %47
  %78 = load %struct.device*, %struct.device** %6, align 8
  %79 = call i32 @devm_clk_get(%struct.device* %78, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %80 = load %struct.ltq_rcu_usb2_priv*, %struct.ltq_rcu_usb2_priv** %4, align 8
  %81 = getelementptr inbounds %struct.ltq_rcu_usb2_priv, %struct.ltq_rcu_usb2_priv* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  %82 = load %struct.ltq_rcu_usb2_priv*, %struct.ltq_rcu_usb2_priv** %4, align 8
  %83 = getelementptr inbounds %struct.ltq_rcu_usb2_priv, %struct.ltq_rcu_usb2_priv* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i64 @IS_ERR(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %77
  %88 = load %struct.device*, %struct.device** %6, align 8
  %89 = call i32 @dev_err(%struct.device* %88, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %90 = load %struct.ltq_rcu_usb2_priv*, %struct.ltq_rcu_usb2_priv** %4, align 8
  %91 = getelementptr inbounds %struct.ltq_rcu_usb2_priv, %struct.ltq_rcu_usb2_priv* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @PTR_ERR(i32 %92)
  store i32 %93, i32* %3, align 4
  br label %129

94:                                               ; preds = %77
  %95 = load %struct.device*, %struct.device** %6, align 8
  %96 = call i32 @devm_reset_control_get_shared(%struct.device* %95, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %97 = load %struct.ltq_rcu_usb2_priv*, %struct.ltq_rcu_usb2_priv** %4, align 8
  %98 = getelementptr inbounds %struct.ltq_rcu_usb2_priv, %struct.ltq_rcu_usb2_priv* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load %struct.ltq_rcu_usb2_priv*, %struct.ltq_rcu_usb2_priv** %4, align 8
  %100 = getelementptr inbounds %struct.ltq_rcu_usb2_priv, %struct.ltq_rcu_usb2_priv* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @IS_ERR(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %120

104:                                              ; preds = %94
  %105 = load %struct.ltq_rcu_usb2_priv*, %struct.ltq_rcu_usb2_priv** %4, align 8
  %106 = getelementptr inbounds %struct.ltq_rcu_usb2_priv, %struct.ltq_rcu_usb2_priv* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @PTR_ERR(i32 %107)
  %109 = load i32, i32* @EPROBE_DEFER, align 4
  %110 = sub nsw i32 0, %109
  %111 = icmp ne i32 %108, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %104
  %113 = load %struct.device*, %struct.device** %6, align 8
  %114 = call i32 @dev_err(%struct.device* %113, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  br label %115

115:                                              ; preds = %112, %104
  %116 = load %struct.ltq_rcu_usb2_priv*, %struct.ltq_rcu_usb2_priv** %4, align 8
  %117 = getelementptr inbounds %struct.ltq_rcu_usb2_priv, %struct.ltq_rcu_usb2_priv* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @PTR_ERR(i32 %118)
  store i32 %119, i32* %3, align 4
  br label %129

120:                                              ; preds = %94
  %121 = load %struct.device*, %struct.device** %6, align 8
  %122 = call i32 @devm_reset_control_get_optional(%struct.device* %121, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %123 = load %struct.ltq_rcu_usb2_priv*, %struct.ltq_rcu_usb2_priv** %4, align 8
  %124 = getelementptr inbounds %struct.ltq_rcu_usb2_priv, %struct.ltq_rcu_usb2_priv* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 8
  %125 = load %struct.ltq_rcu_usb2_priv*, %struct.ltq_rcu_usb2_priv** %4, align 8
  %126 = getelementptr inbounds %struct.ltq_rcu_usb2_priv, %struct.ltq_rcu_usb2_priv* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @PTR_ERR_OR_ZERO(i32 %127)
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %120, %115, %87, %66, %42, %28
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local %struct.TYPE_4__* @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @syscon_node_to_regmap(i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32* @of_get_address(%struct.TYPE_3__*, i32, i32*, i32*) #1

declare dso_local i8* @__be32_to_cpu(i32) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @devm_reset_control_get_shared(%struct.device*, i8*) #1

declare dso_local i32 @devm_reset_control_get_optional(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
