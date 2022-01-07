; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/amlogic/extr_meson-gx-pwrc-vpu.c_meson_gx_pwrc_vpu_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/amlogic/extr_meson-gx-pwrc-vpu.c_meson_gx_pwrc_vpu_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.meson_gx_pwrc_vpu = type { i32, %struct.reset_control*, %struct.reset_control*, %struct.reset_control*, %struct.reset_control*, %struct.reset_control* }
%struct.reset_control = type { i32 }
%struct.regmap = type opaque
%struct.clk = type opaque

@.str = private unnamed_addr constant [26 x i8] c"failed to get match data\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"failed to get regmap\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"amlogic,hhi-sysctrl\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"failed to get HHI regmap\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"failed to get reset lines\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"vpu\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"vpu clock request failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"vapb\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"vapb clock request failed\0A\00", align 1
@pm_domain_always_on_gov = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @meson_gx_pwrc_vpu_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_gx_pwrc_vpu_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.meson_gx_pwrc_vpu*, align 8
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca %struct.meson_gx_pwrc_vpu*, align 8
  %8 = alloca %struct.reset_control*, align 8
  %9 = alloca %struct.clk*, align 8
  %10 = alloca %struct.clk*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = call %struct.meson_gx_pwrc_vpu* @of_device_get_match_data(%struct.TYPE_6__* %14)
  store %struct.meson_gx_pwrc_vpu* %15, %struct.meson_gx_pwrc_vpu** %4, align 8
  %16 = load %struct.meson_gx_pwrc_vpu*, %struct.meson_gx_pwrc_vpu** %4, align 8
  %17 = icmp ne %struct.meson_gx_pwrc_vpu* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = call i32 @dev_err(%struct.TYPE_6__* %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %173

24:                                               ; preds = %1
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.meson_gx_pwrc_vpu* @devm_kzalloc(%struct.TYPE_6__* %26, i32 48, i32 %27)
  store %struct.meson_gx_pwrc_vpu* %28, %struct.meson_gx_pwrc_vpu** %7, align 8
  %29 = load %struct.meson_gx_pwrc_vpu*, %struct.meson_gx_pwrc_vpu** %7, align 8
  %30 = icmp ne %struct.meson_gx_pwrc_vpu* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %173

34:                                               ; preds = %24
  %35 = load %struct.meson_gx_pwrc_vpu*, %struct.meson_gx_pwrc_vpu** %7, align 8
  %36 = load %struct.meson_gx_pwrc_vpu*, %struct.meson_gx_pwrc_vpu** %4, align 8
  %37 = call i32 @memcpy(%struct.meson_gx_pwrc_vpu* %35, %struct.meson_gx_pwrc_vpu* %36, i32 48)
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @of_get_parent(i32 %41)
  %43 = call %struct.reset_control* @syscon_node_to_regmap(i32 %42)
  %44 = bitcast %struct.reset_control* %43 to %struct.regmap*
  store %struct.regmap* %44, %struct.regmap** %5, align 8
  %45 = load %struct.regmap*, %struct.regmap** %5, align 8
  %46 = bitcast %struct.regmap* %45 to %struct.reset_control*
  %47 = call i64 @IS_ERR(%struct.reset_control* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %34
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = call i32 @dev_err(%struct.TYPE_6__* %51, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.regmap*, %struct.regmap** %5, align 8
  %54 = bitcast %struct.regmap* %53 to %struct.reset_control*
  %55 = call i32 @PTR_ERR(%struct.reset_control* %54)
  store i32 %55, i32* %2, align 4
  br label %173

56:                                               ; preds = %34
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call %struct.reset_control* @syscon_regmap_lookup_by_phandle(i32 %60, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %62 = bitcast %struct.reset_control* %61 to %struct.regmap*
  store %struct.regmap* %62, %struct.regmap** %6, align 8
  %63 = load %struct.regmap*, %struct.regmap** %6, align 8
  %64 = bitcast %struct.regmap* %63 to %struct.reset_control*
  %65 = call i64 @IS_ERR(%struct.reset_control* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %56
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 0
  %70 = call i32 @dev_err(%struct.TYPE_6__* %69, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %71 = load %struct.regmap*, %struct.regmap** %6, align 8
  %72 = bitcast %struct.regmap* %71 to %struct.reset_control*
  %73 = call i32 @PTR_ERR(%struct.reset_control* %72)
  store i32 %73, i32* %2, align 4
  br label %173

74:                                               ; preds = %56
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 0
  %77 = call %struct.reset_control* @devm_reset_control_array_get(%struct.TYPE_6__* %76, i32 0, i32 0)
  store %struct.reset_control* %77, %struct.reset_control** %8, align 8
  %78 = load %struct.reset_control*, %struct.reset_control** %8, align 8
  %79 = call i64 @IS_ERR(%struct.reset_control* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %74
  %82 = load %struct.reset_control*, %struct.reset_control** %8, align 8
  %83 = call i32 @PTR_ERR(%struct.reset_control* %82)
  %84 = load i32, i32* @EPROBE_DEFER, align 4
  %85 = sub nsw i32 0, %84
  %86 = icmp ne i32 %83, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %81
  %88 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %89 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %88, i32 0, i32 0
  %90 = call i32 @dev_err(%struct.TYPE_6__* %89, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %91

91:                                               ; preds = %87, %81
  %92 = load %struct.reset_control*, %struct.reset_control** %8, align 8
  %93 = call i32 @PTR_ERR(%struct.reset_control* %92)
  store i32 %93, i32* %2, align 4
  br label %173

94:                                               ; preds = %74
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %95, i32 0, i32 0
  %97 = call %struct.reset_control* @devm_clk_get(%struct.TYPE_6__* %96, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %98 = bitcast %struct.reset_control* %97 to %struct.clk*
  store %struct.clk* %98, %struct.clk** %9, align 8
  %99 = load %struct.clk*, %struct.clk** %9, align 8
  %100 = bitcast %struct.clk* %99 to %struct.reset_control*
  %101 = call i64 @IS_ERR(%struct.reset_control* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %94
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %104, i32 0, i32 0
  %106 = call i32 @dev_err(%struct.TYPE_6__* %105, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %107 = load %struct.clk*, %struct.clk** %9, align 8
  %108 = bitcast %struct.clk* %107 to %struct.reset_control*
  %109 = call i32 @PTR_ERR(%struct.reset_control* %108)
  store i32 %109, i32* %2, align 4
  br label %173

110:                                              ; preds = %94
  %111 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %112 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %111, i32 0, i32 0
  %113 = call %struct.reset_control* @devm_clk_get(%struct.TYPE_6__* %112, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %114 = bitcast %struct.reset_control* %113 to %struct.clk*
  store %struct.clk* %114, %struct.clk** %10, align 8
  %115 = load %struct.clk*, %struct.clk** %10, align 8
  %116 = bitcast %struct.clk* %115 to %struct.reset_control*
  %117 = call i64 @IS_ERR(%struct.reset_control* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %110
  %120 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %121 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %120, i32 0, i32 0
  %122 = call i32 @dev_err(%struct.TYPE_6__* %121, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  %123 = load %struct.clk*, %struct.clk** %10, align 8
  %124 = bitcast %struct.clk* %123 to %struct.reset_control*
  %125 = call i32 @PTR_ERR(%struct.reset_control* %124)
  store i32 %125, i32* %2, align 4
  br label %173

126:                                              ; preds = %110
  %127 = load %struct.regmap*, %struct.regmap** %5, align 8
  %128 = bitcast %struct.regmap* %127 to %struct.reset_control*
  %129 = load %struct.meson_gx_pwrc_vpu*, %struct.meson_gx_pwrc_vpu** %7, align 8
  %130 = getelementptr inbounds %struct.meson_gx_pwrc_vpu, %struct.meson_gx_pwrc_vpu* %129, i32 0, i32 5
  store %struct.reset_control* %128, %struct.reset_control** %130, align 8
  %131 = load %struct.regmap*, %struct.regmap** %6, align 8
  %132 = bitcast %struct.regmap* %131 to %struct.reset_control*
  %133 = load %struct.meson_gx_pwrc_vpu*, %struct.meson_gx_pwrc_vpu** %7, align 8
  %134 = getelementptr inbounds %struct.meson_gx_pwrc_vpu, %struct.meson_gx_pwrc_vpu* %133, i32 0, i32 4
  store %struct.reset_control* %132, %struct.reset_control** %134, align 8
  %135 = load %struct.reset_control*, %struct.reset_control** %8, align 8
  %136 = load %struct.meson_gx_pwrc_vpu*, %struct.meson_gx_pwrc_vpu** %7, align 8
  %137 = getelementptr inbounds %struct.meson_gx_pwrc_vpu, %struct.meson_gx_pwrc_vpu* %136, i32 0, i32 3
  store %struct.reset_control* %135, %struct.reset_control** %137, align 8
  %138 = load %struct.clk*, %struct.clk** %9, align 8
  %139 = bitcast %struct.clk* %138 to %struct.reset_control*
  %140 = load %struct.meson_gx_pwrc_vpu*, %struct.meson_gx_pwrc_vpu** %7, align 8
  %141 = getelementptr inbounds %struct.meson_gx_pwrc_vpu, %struct.meson_gx_pwrc_vpu* %140, i32 0, i32 2
  store %struct.reset_control* %139, %struct.reset_control** %141, align 8
  %142 = load %struct.clk*, %struct.clk** %10, align 8
  %143 = bitcast %struct.clk* %142 to %struct.reset_control*
  %144 = load %struct.meson_gx_pwrc_vpu*, %struct.meson_gx_pwrc_vpu** %7, align 8
  %145 = getelementptr inbounds %struct.meson_gx_pwrc_vpu, %struct.meson_gx_pwrc_vpu* %144, i32 0, i32 1
  store %struct.reset_control* %143, %struct.reset_control** %145, align 8
  %146 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %147 = load %struct.meson_gx_pwrc_vpu*, %struct.meson_gx_pwrc_vpu** %7, align 8
  %148 = call i32 @platform_set_drvdata(%struct.platform_device* %146, %struct.meson_gx_pwrc_vpu* %147)
  %149 = load %struct.meson_gx_pwrc_vpu*, %struct.meson_gx_pwrc_vpu** %7, align 8
  %150 = call i32 @meson_gx_pwrc_vpu_get_power(%struct.meson_gx_pwrc_vpu* %149)
  store i32 %150, i32* %11, align 4
  %151 = load i32, i32* %11, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %161, label %153

153:                                              ; preds = %126
  %154 = load %struct.meson_gx_pwrc_vpu*, %struct.meson_gx_pwrc_vpu** %7, align 8
  %155 = call i32 @meson_gx_pwrc_vpu_setup_clk(%struct.meson_gx_pwrc_vpu* %154)
  store i32 %155, i32* %12, align 4
  %156 = load i32, i32* %12, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %153
  %159 = load i32, i32* %12, align 4
  store i32 %159, i32* %2, align 4
  br label %173

160:                                              ; preds = %153
  br label %161

161:                                              ; preds = %160, %126
  %162 = load %struct.meson_gx_pwrc_vpu*, %struct.meson_gx_pwrc_vpu** %7, align 8
  %163 = getelementptr inbounds %struct.meson_gx_pwrc_vpu, %struct.meson_gx_pwrc_vpu* %162, i32 0, i32 0
  %164 = load i32, i32* %11, align 4
  %165 = call i32 @pm_genpd_init(i32* %163, i32* @pm_domain_always_on_gov, i32 %164)
  %166 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %167 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.meson_gx_pwrc_vpu*, %struct.meson_gx_pwrc_vpu** %7, align 8
  %171 = getelementptr inbounds %struct.meson_gx_pwrc_vpu, %struct.meson_gx_pwrc_vpu* %170, i32 0, i32 0
  %172 = call i32 @of_genpd_add_provider_simple(i32 %169, i32* %171)
  store i32 %172, i32* %2, align 4
  br label %173

173:                                              ; preds = %161, %158, %119, %103, %91, %67, %49, %31, %18
  %174 = load i32, i32* %2, align 4
  ret i32 %174
}

declare dso_local %struct.meson_gx_pwrc_vpu* @of_device_get_match_data(%struct.TYPE_6__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*) #1

declare dso_local %struct.meson_gx_pwrc_vpu* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.meson_gx_pwrc_vpu*, %struct.meson_gx_pwrc_vpu*, i32) #1

declare dso_local %struct.reset_control* @syscon_node_to_regmap(i32) #1

declare dso_local i32 @of_get_parent(i32) #1

declare dso_local i64 @IS_ERR(%struct.reset_control*) #1

declare dso_local i32 @PTR_ERR(%struct.reset_control*) #1

declare dso_local %struct.reset_control* @syscon_regmap_lookup_by_phandle(i32, i8*) #1

declare dso_local %struct.reset_control* @devm_reset_control_array_get(%struct.TYPE_6__*, i32, i32) #1

declare dso_local %struct.reset_control* @devm_clk_get(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.meson_gx_pwrc_vpu*) #1

declare dso_local i32 @meson_gx_pwrc_vpu_get_power(%struct.meson_gx_pwrc_vpu*) #1

declare dso_local i32 @meson_gx_pwrc_vpu_setup_clk(%struct.meson_gx_pwrc_vpu*) #1

declare dso_local i32 @pm_genpd_init(i32*, i32*, i32) #1

declare dso_local i32 @of_genpd_add_provider_simple(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
