; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/amlogic/extr_meson-ee-pwrc.c_meson_ee_pwrc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/amlogic/extr_meson-ee-pwrc.c_meson_ee_pwrc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.meson_ee_pwrc_domain_data = type { i32, i32* }
%struct.regmap = type { i32 }
%struct.meson_ee_pwrc = type { %struct.TYPE_6__, %struct.meson_ee_pwrc_domain*, %struct.regmap*, %struct.regmap* }
%struct.TYPE_6__ = type { i32, i32** }
%struct.meson_ee_pwrc_domain = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"failed to get match data\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to get HHI regmap\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"amlogic,ao-sysctrl\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"failed to get AO regmap\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @meson_ee_pwrc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_ee_pwrc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.meson_ee_pwrc_domain_data*, align 8
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca %struct.meson_ee_pwrc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.meson_ee_pwrc_domain*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = call %struct.meson_ee_pwrc_domain_data* @of_device_get_match_data(%struct.TYPE_7__* %12)
  store %struct.meson_ee_pwrc_domain_data* %13, %struct.meson_ee_pwrc_domain_data** %4, align 8
  %14 = load %struct.meson_ee_pwrc_domain_data*, %struct.meson_ee_pwrc_domain_data** %4, align 8
  %15 = icmp ne %struct.meson_ee_pwrc_domain_data* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call i32 @dev_err(%struct.TYPE_7__* %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %168

22:                                               ; preds = %1
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.meson_ee_pwrc* @devm_kzalloc(%struct.TYPE_7__* %24, i32 40, i32 %25)
  store %struct.meson_ee_pwrc* %26, %struct.meson_ee_pwrc** %7, align 8
  %27 = load %struct.meson_ee_pwrc*, %struct.meson_ee_pwrc** %7, align 8
  %28 = icmp ne %struct.meson_ee_pwrc* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %168

32:                                               ; preds = %22
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = load %struct.meson_ee_pwrc_domain_data*, %struct.meson_ee_pwrc_domain_data** %4, align 8
  %36 = getelementptr inbounds %struct.meson_ee_pwrc_domain_data, %struct.meson_ee_pwrc_domain_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call i8* @devm_kcalloc(%struct.TYPE_7__* %34, i32 %37, i32 8, i32 %38)
  %40 = bitcast i8* %39 to i32**
  %41 = load %struct.meson_ee_pwrc*, %struct.meson_ee_pwrc** %7, align 8
  %42 = getelementptr inbounds %struct.meson_ee_pwrc, %struct.meson_ee_pwrc* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  store i32** %40, i32*** %43, align 8
  %44 = load %struct.meson_ee_pwrc*, %struct.meson_ee_pwrc** %7, align 8
  %45 = getelementptr inbounds %struct.meson_ee_pwrc, %struct.meson_ee_pwrc* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32**, i32*** %46, align 8
  %48 = icmp ne i32** %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %32
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %168

52:                                               ; preds = %32
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = load %struct.meson_ee_pwrc_domain_data*, %struct.meson_ee_pwrc_domain_data** %4, align 8
  %56 = getelementptr inbounds %struct.meson_ee_pwrc_domain_data, %struct.meson_ee_pwrc_domain_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = call i8* @devm_kcalloc(%struct.TYPE_7__* %54, i32 %57, i32 8, i32 %58)
  %60 = bitcast i8* %59 to %struct.meson_ee_pwrc_domain*
  %61 = load %struct.meson_ee_pwrc*, %struct.meson_ee_pwrc** %7, align 8
  %62 = getelementptr inbounds %struct.meson_ee_pwrc, %struct.meson_ee_pwrc* %61, i32 0, i32 1
  store %struct.meson_ee_pwrc_domain* %60, %struct.meson_ee_pwrc_domain** %62, align 8
  %63 = load %struct.meson_ee_pwrc*, %struct.meson_ee_pwrc** %7, align 8
  %64 = getelementptr inbounds %struct.meson_ee_pwrc, %struct.meson_ee_pwrc* %63, i32 0, i32 1
  %65 = load %struct.meson_ee_pwrc_domain*, %struct.meson_ee_pwrc_domain** %64, align 8
  %66 = icmp ne %struct.meson_ee_pwrc_domain* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %52
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %168

70:                                               ; preds = %52
  %71 = load %struct.meson_ee_pwrc_domain_data*, %struct.meson_ee_pwrc_domain_data** %4, align 8
  %72 = getelementptr inbounds %struct.meson_ee_pwrc_domain_data, %struct.meson_ee_pwrc_domain_data* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.meson_ee_pwrc*, %struct.meson_ee_pwrc** %7, align 8
  %75 = getelementptr inbounds %struct.meson_ee_pwrc, %struct.meson_ee_pwrc* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 8
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @of_get_parent(i32 %80)
  %82 = call %struct.regmap* @syscon_node_to_regmap(i32 %81)
  store %struct.regmap* %82, %struct.regmap** %6, align 8
  %83 = load %struct.regmap*, %struct.regmap** %6, align 8
  %84 = call i64 @IS_ERR(%struct.regmap* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %70
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %87, i32 0, i32 0
  %89 = call i32 @dev_err(%struct.TYPE_7__* %88, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %90 = load %struct.regmap*, %struct.regmap** %6, align 8
  %91 = call i32 @PTR_ERR(%struct.regmap* %90)
  store i32 %91, i32* %2, align 4
  br label %168

92:                                               ; preds = %70
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call %struct.regmap* @syscon_regmap_lookup_by_phandle(i32 %96, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store %struct.regmap* %97, %struct.regmap** %5, align 8
  %98 = load %struct.regmap*, %struct.regmap** %5, align 8
  %99 = call i64 @IS_ERR(%struct.regmap* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %92
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %102, i32 0, i32 0
  %104 = call i32 @dev_err(%struct.TYPE_7__* %103, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %105 = load %struct.regmap*, %struct.regmap** %5, align 8
  %106 = call i32 @PTR_ERR(%struct.regmap* %105)
  store i32 %106, i32* %2, align 4
  br label %168

107:                                              ; preds = %92
  %108 = load %struct.regmap*, %struct.regmap** %5, align 8
  %109 = load %struct.meson_ee_pwrc*, %struct.meson_ee_pwrc** %7, align 8
  %110 = getelementptr inbounds %struct.meson_ee_pwrc, %struct.meson_ee_pwrc* %109, i32 0, i32 3
  store %struct.regmap* %108, %struct.regmap** %110, align 8
  %111 = load %struct.regmap*, %struct.regmap** %6, align 8
  %112 = load %struct.meson_ee_pwrc*, %struct.meson_ee_pwrc** %7, align 8
  %113 = getelementptr inbounds %struct.meson_ee_pwrc, %struct.meson_ee_pwrc* %112, i32 0, i32 2
  store %struct.regmap* %111, %struct.regmap** %113, align 8
  %114 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %115 = load %struct.meson_ee_pwrc*, %struct.meson_ee_pwrc** %7, align 8
  %116 = call i32 @platform_set_drvdata(%struct.platform_device* %114, %struct.meson_ee_pwrc* %115)
  store i32 0, i32* %8, align 4
  br label %117

117:                                              ; preds = %157, %107
  %118 = load i32, i32* %8, align 4
  %119 = load %struct.meson_ee_pwrc_domain_data*, %struct.meson_ee_pwrc_domain_data** %4, align 8
  %120 = getelementptr inbounds %struct.meson_ee_pwrc_domain_data, %struct.meson_ee_pwrc_domain_data* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp slt i32 %118, %121
  br i1 %122, label %123, label %160

123:                                              ; preds = %117
  %124 = load %struct.meson_ee_pwrc*, %struct.meson_ee_pwrc** %7, align 8
  %125 = getelementptr inbounds %struct.meson_ee_pwrc, %struct.meson_ee_pwrc* %124, i32 0, i32 1
  %126 = load %struct.meson_ee_pwrc_domain*, %struct.meson_ee_pwrc_domain** %125, align 8
  %127 = load i32, i32* %8, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.meson_ee_pwrc_domain, %struct.meson_ee_pwrc_domain* %126, i64 %128
  store %struct.meson_ee_pwrc_domain* %129, %struct.meson_ee_pwrc_domain** %10, align 8
  %130 = load %struct.meson_ee_pwrc_domain*, %struct.meson_ee_pwrc_domain** %10, align 8
  %131 = getelementptr inbounds %struct.meson_ee_pwrc_domain, %struct.meson_ee_pwrc_domain* %130, i32 0, i32 1
  %132 = load %struct.meson_ee_pwrc_domain_data*, %struct.meson_ee_pwrc_domain_data** %4, align 8
  %133 = getelementptr inbounds %struct.meson_ee_pwrc_domain_data, %struct.meson_ee_pwrc_domain_data* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %8, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = call i32 @memcpy(i32* %131, i32* %137, i32 4)
  %139 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %140 = load %struct.meson_ee_pwrc*, %struct.meson_ee_pwrc** %7, align 8
  %141 = load %struct.meson_ee_pwrc_domain*, %struct.meson_ee_pwrc_domain** %10, align 8
  %142 = call i32 @meson_ee_pwrc_init_domain(%struct.platform_device* %139, %struct.meson_ee_pwrc* %140, %struct.meson_ee_pwrc_domain* %141)
  store i32 %142, i32* %9, align 4
  %143 = load i32, i32* %9, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %123
  %146 = load i32, i32* %9, align 4
  store i32 %146, i32* %2, align 4
  br label %168

147:                                              ; preds = %123
  %148 = load %struct.meson_ee_pwrc_domain*, %struct.meson_ee_pwrc_domain** %10, align 8
  %149 = getelementptr inbounds %struct.meson_ee_pwrc_domain, %struct.meson_ee_pwrc_domain* %148, i32 0, i32 0
  %150 = load %struct.meson_ee_pwrc*, %struct.meson_ee_pwrc** %7, align 8
  %151 = getelementptr inbounds %struct.meson_ee_pwrc, %struct.meson_ee_pwrc* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 1
  %153 = load i32**, i32*** %152, align 8
  %154 = load i32, i32* %8, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32*, i32** %153, i64 %155
  store i32* %149, i32** %156, align 8
  br label %157

157:                                              ; preds = %147
  %158 = load i32, i32* %8, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %8, align 4
  br label %117

160:                                              ; preds = %117
  %161 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %162 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.meson_ee_pwrc*, %struct.meson_ee_pwrc** %7, align 8
  %166 = getelementptr inbounds %struct.meson_ee_pwrc, %struct.meson_ee_pwrc* %165, i32 0, i32 0
  %167 = call i32 @of_genpd_add_provider_onecell(i32 %164, %struct.TYPE_6__* %166)
  store i32 0, i32* %2, align 4
  br label %168

168:                                              ; preds = %160, %145, %101, %86, %67, %49, %29, %16
  %169 = load i32, i32* %2, align 4
  ret i32 %169
}

declare dso_local %struct.meson_ee_pwrc_domain_data* @of_device_get_match_data(%struct.TYPE_7__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*) #1

declare dso_local %struct.meson_ee_pwrc* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i8* @devm_kcalloc(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local %struct.regmap* @syscon_node_to_regmap(i32) #1

declare dso_local i32 @of_get_parent(i32) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local %struct.regmap* @syscon_regmap_lookup_by_phandle(i32, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.meson_ee_pwrc*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @meson_ee_pwrc_init_domain(%struct.platform_device*, %struct.meson_ee_pwrc*, %struct.meson_ee_pwrc_domain*) #1

declare dso_local i32 @of_genpd_add_provider_onecell(i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
