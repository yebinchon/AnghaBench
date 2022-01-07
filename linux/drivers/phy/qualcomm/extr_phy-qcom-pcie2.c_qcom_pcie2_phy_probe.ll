; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/qualcomm/extr_phy-qcom-pcie2.c_qcom_pcie2_phy_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/qualcomm/extr_phy-qcom-pcie2.c_qcom_pcie2_phy_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.phy_provider = type { i32 }
%struct.qcom_phy = type { %struct.phy_provider*, %struct.phy_provider*, %struct.phy_provider*, %struct.TYPE_3__*, %struct.phy_provider*, %struct.device* }
%struct.TYPE_3__ = type { i8* }
%struct.resource = type { i32 }
%struct.phy = type opaque

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to register pipe_clk\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"vdda-vp\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"vdda-vph\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"failed to acquire pipe clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"phy\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"failed to acquire phy reset\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"pipe\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"failed to acquire pipe reset\0A\00", align 1
@qcom_pcie2_ops = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"failed to create phy\0A\00", align 1
@of_phy_simple_xlate = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"failed to register phy provider\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @qcom_pcie2_phy_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_pcie2_phy_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.phy_provider*, align 8
  %5 = alloca %struct.qcom_phy*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.phy*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %7, align 8
  %12 = load %struct.device*, %struct.device** %7, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.qcom_phy* @devm_kzalloc(%struct.device* %12, i32 48, i32 %13)
  store %struct.qcom_phy* %14, %struct.qcom_phy** %5, align 8
  %15 = load %struct.qcom_phy*, %struct.qcom_phy** %5, align 8
  %16 = icmp ne %struct.qcom_phy* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %162

20:                                               ; preds = %1
  %21 = load %struct.device*, %struct.device** %7, align 8
  %22 = load %struct.qcom_phy*, %struct.qcom_phy** %5, align 8
  %23 = getelementptr inbounds %struct.qcom_phy, %struct.qcom_phy* %22, i32 0, i32 5
  store %struct.device* %21, %struct.device** %23, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = load i32, i32* @IORESOURCE_MEM, align 4
  %26 = call %struct.resource* @platform_get_resource(%struct.platform_device* %24, i32 %25, i32 0)
  store %struct.resource* %26, %struct.resource** %6, align 8
  %27 = load %struct.device*, %struct.device** %7, align 8
  %28 = load %struct.resource*, %struct.resource** %6, align 8
  %29 = call %struct.phy_provider* @devm_ioremap_resource(%struct.device* %27, %struct.resource* %28)
  %30 = load %struct.qcom_phy*, %struct.qcom_phy** %5, align 8
  %31 = getelementptr inbounds %struct.qcom_phy, %struct.qcom_phy* %30, i32 0, i32 4
  store %struct.phy_provider* %29, %struct.phy_provider** %31, align 8
  %32 = load %struct.qcom_phy*, %struct.qcom_phy** %5, align 8
  %33 = getelementptr inbounds %struct.qcom_phy, %struct.qcom_phy* %32, i32 0, i32 4
  %34 = load %struct.phy_provider*, %struct.phy_provider** %33, align 8
  %35 = call i64 @IS_ERR(%struct.phy_provider* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %20
  %38 = load %struct.qcom_phy*, %struct.qcom_phy** %5, align 8
  %39 = getelementptr inbounds %struct.qcom_phy, %struct.qcom_phy* %38, i32 0, i32 4
  %40 = load %struct.phy_provider*, %struct.phy_provider** %39, align 8
  %41 = call i32 @PTR_ERR(%struct.phy_provider* %40)
  store i32 %41, i32* %2, align 4
  br label %162

42:                                               ; preds = %20
  %43 = load %struct.qcom_phy*, %struct.qcom_phy** %5, align 8
  %44 = call i32 @phy_pipe_clksrc_register(%struct.qcom_phy* %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.device*, %struct.device** %7, align 8
  %49 = call i32 @dev_err(%struct.device* %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %2, align 4
  br label %162

51:                                               ; preds = %42
  %52 = load %struct.qcom_phy*, %struct.qcom_phy** %5, align 8
  %53 = getelementptr inbounds %struct.qcom_phy, %struct.qcom_phy* %52, i32 0, i32 3
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %56, align 8
  %57 = load %struct.qcom_phy*, %struct.qcom_phy** %5, align 8
  %58 = getelementptr inbounds %struct.qcom_phy, %struct.qcom_phy* %57, i32 0, i32 3
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %61, align 8
  %62 = load %struct.device*, %struct.device** %7, align 8
  %63 = load %struct.qcom_phy*, %struct.qcom_phy** %5, align 8
  %64 = getelementptr inbounds %struct.qcom_phy, %struct.qcom_phy* %63, i32 0, i32 3
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %65)
  %67 = load %struct.qcom_phy*, %struct.qcom_phy** %5, align 8
  %68 = getelementptr inbounds %struct.qcom_phy, %struct.qcom_phy* %67, i32 0, i32 3
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = call i32 @devm_regulator_bulk_get(%struct.device* %62, i32 %66, %struct.TYPE_3__* %69)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %51
  %74 = load i32, i32* %9, align 4
  store i32 %74, i32* %2, align 4
  br label %162

75:                                               ; preds = %51
  %76 = load %struct.device*, %struct.device** %7, align 8
  %77 = call %struct.phy_provider* @devm_clk_get(%struct.device* %76, i32* null)
  %78 = load %struct.qcom_phy*, %struct.qcom_phy** %5, align 8
  %79 = getelementptr inbounds %struct.qcom_phy, %struct.qcom_phy* %78, i32 0, i32 2
  store %struct.phy_provider* %77, %struct.phy_provider** %79, align 8
  %80 = load %struct.qcom_phy*, %struct.qcom_phy** %5, align 8
  %81 = getelementptr inbounds %struct.qcom_phy, %struct.qcom_phy* %80, i32 0, i32 2
  %82 = load %struct.phy_provider*, %struct.phy_provider** %81, align 8
  %83 = call i64 @IS_ERR(%struct.phy_provider* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %75
  %86 = load %struct.device*, %struct.device** %7, align 8
  %87 = call i32 @dev_err(%struct.device* %86, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %88 = load %struct.qcom_phy*, %struct.qcom_phy** %5, align 8
  %89 = getelementptr inbounds %struct.qcom_phy, %struct.qcom_phy* %88, i32 0, i32 2
  %90 = load %struct.phy_provider*, %struct.phy_provider** %89, align 8
  %91 = call i32 @PTR_ERR(%struct.phy_provider* %90)
  store i32 %91, i32* %2, align 4
  br label %162

92:                                               ; preds = %75
  %93 = load %struct.device*, %struct.device** %7, align 8
  %94 = call i8* @devm_reset_control_get_exclusive(%struct.device* %93, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %95 = bitcast i8* %94 to %struct.phy_provider*
  %96 = load %struct.qcom_phy*, %struct.qcom_phy** %5, align 8
  %97 = getelementptr inbounds %struct.qcom_phy, %struct.qcom_phy* %96, i32 0, i32 1
  store %struct.phy_provider* %95, %struct.phy_provider** %97, align 8
  %98 = load %struct.qcom_phy*, %struct.qcom_phy** %5, align 8
  %99 = getelementptr inbounds %struct.qcom_phy, %struct.qcom_phy* %98, i32 0, i32 1
  %100 = load %struct.phy_provider*, %struct.phy_provider** %99, align 8
  %101 = call i64 @IS_ERR(%struct.phy_provider* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %92
  %104 = load %struct.device*, %struct.device** %7, align 8
  %105 = call i32 @dev_err(%struct.device* %104, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %106 = load %struct.qcom_phy*, %struct.qcom_phy** %5, align 8
  %107 = getelementptr inbounds %struct.qcom_phy, %struct.qcom_phy* %106, i32 0, i32 1
  %108 = load %struct.phy_provider*, %struct.phy_provider** %107, align 8
  %109 = call i32 @PTR_ERR(%struct.phy_provider* %108)
  store i32 %109, i32* %2, align 4
  br label %162

110:                                              ; preds = %92
  %111 = load %struct.device*, %struct.device** %7, align 8
  %112 = call i8* @devm_reset_control_get_exclusive(%struct.device* %111, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %113 = bitcast i8* %112 to %struct.phy_provider*
  %114 = load %struct.qcom_phy*, %struct.qcom_phy** %5, align 8
  %115 = getelementptr inbounds %struct.qcom_phy, %struct.qcom_phy* %114, i32 0, i32 0
  store %struct.phy_provider* %113, %struct.phy_provider** %115, align 8
  %116 = load %struct.qcom_phy*, %struct.qcom_phy** %5, align 8
  %117 = getelementptr inbounds %struct.qcom_phy, %struct.qcom_phy* %116, i32 0, i32 0
  %118 = load %struct.phy_provider*, %struct.phy_provider** %117, align 8
  %119 = call i64 @IS_ERR(%struct.phy_provider* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %110
  %122 = load %struct.device*, %struct.device** %7, align 8
  %123 = call i32 @dev_err(%struct.device* %122, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %124 = load %struct.qcom_phy*, %struct.qcom_phy** %5, align 8
  %125 = getelementptr inbounds %struct.qcom_phy, %struct.qcom_phy* %124, i32 0, i32 0
  %126 = load %struct.phy_provider*, %struct.phy_provider** %125, align 8
  %127 = call i32 @PTR_ERR(%struct.phy_provider* %126)
  store i32 %127, i32* %2, align 4
  br label %162

128:                                              ; preds = %110
  %129 = load %struct.device*, %struct.device** %7, align 8
  %130 = load %struct.device*, %struct.device** %7, align 8
  %131 = getelementptr inbounds %struct.device, %struct.device* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call %struct.phy_provider* @devm_phy_create(%struct.device* %129, i32 %132, i32* @qcom_pcie2_ops)
  %134 = bitcast %struct.phy_provider* %133 to %struct.phy*
  store %struct.phy* %134, %struct.phy** %8, align 8
  %135 = load %struct.phy*, %struct.phy** %8, align 8
  %136 = bitcast %struct.phy* %135 to %struct.phy_provider*
  %137 = call i64 @IS_ERR(%struct.phy_provider* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %128
  %140 = load %struct.device*, %struct.device** %7, align 8
  %141 = call i32 @dev_err(%struct.device* %140, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  %142 = load %struct.phy*, %struct.phy** %8, align 8
  %143 = bitcast %struct.phy* %142 to %struct.phy_provider*
  %144 = call i32 @PTR_ERR(%struct.phy_provider* %143)
  store i32 %144, i32* %2, align 4
  br label %162

145:                                              ; preds = %128
  %146 = load %struct.phy*, %struct.phy** %8, align 8
  %147 = bitcast %struct.phy* %146 to %struct.phy_provider*
  %148 = load %struct.qcom_phy*, %struct.qcom_phy** %5, align 8
  %149 = call i32 @phy_set_drvdata(%struct.phy_provider* %147, %struct.qcom_phy* %148)
  %150 = load %struct.device*, %struct.device** %7, align 8
  %151 = load i32, i32* @of_phy_simple_xlate, align 4
  %152 = call %struct.phy_provider* @devm_of_phy_provider_register(%struct.device* %150, i32 %151)
  store %struct.phy_provider* %152, %struct.phy_provider** %4, align 8
  %153 = load %struct.phy_provider*, %struct.phy_provider** %4, align 8
  %154 = call i64 @IS_ERR(%struct.phy_provider* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %145
  %157 = load %struct.device*, %struct.device** %7, align 8
  %158 = call i32 @dev_err(%struct.device* %157, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  br label %159

159:                                              ; preds = %156, %145
  %160 = load %struct.phy_provider*, %struct.phy_provider** %4, align 8
  %161 = call i32 @PTR_ERR_OR_ZERO(%struct.phy_provider* %160)
  store i32 %161, i32* %2, align 4
  br label %162

162:                                              ; preds = %159, %139, %121, %103, %85, %73, %47, %37, %17
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

declare dso_local %struct.qcom_phy* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.phy_provider* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.phy_provider*) #1

declare dso_local i32 @PTR_ERR(%struct.phy_provider*) #1

declare dso_local i32 @phy_pipe_clksrc_register(%struct.qcom_phy*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @devm_regulator_bulk_get(%struct.device*, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local %struct.phy_provider* @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i8* @devm_reset_control_get_exclusive(%struct.device*, i8*) #1

declare dso_local %struct.phy_provider* @devm_phy_create(%struct.device*, i32, i32*) #1

declare dso_local i32 @phy_set_drvdata(%struct.phy_provider*, %struct.qcom_phy*) #1

declare dso_local %struct.phy_provider* @devm_of_phy_provider_register(%struct.device*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.phy_provider*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
