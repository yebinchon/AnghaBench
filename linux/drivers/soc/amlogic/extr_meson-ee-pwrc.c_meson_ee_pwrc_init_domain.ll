; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/amlogic/extr_meson-ee-pwrc.c_meson_ee_pwrc_init_domain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/amlogic/extr_meson-ee-pwrc.c_meson_ee_pwrc_init_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.meson_ee_pwrc = type { i32 }
%struct.meson_ee_pwrc_domain = type { i32, i32, %struct.TYPE_3__, %struct.TYPE_4__, i32, i32, %struct.meson_ee_pwrc* }
%struct.TYPE_3__ = type { i32, i32, i32 (%struct.meson_ee_pwrc_domain.0*)*, i32 }
%struct.meson_ee_pwrc_domain.0 = type opaque
%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Invalid resets count %d for domain %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Invalid clocks count %d for domain %s\0A\00", align 1
@meson_ee_pwrc_on = common dso_local global i32 0, align 4
@meson_ee_pwrc_off = common dso_local global i32 0, align 4
@pm_domain_always_on_gov = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.meson_ee_pwrc*, %struct.meson_ee_pwrc_domain*)* @meson_ee_pwrc_init_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_ee_pwrc_init_domain(%struct.platform_device* %0, %struct.meson_ee_pwrc* %1, %struct.meson_ee_pwrc_domain* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.meson_ee_pwrc*, align 8
  %7 = alloca %struct.meson_ee_pwrc_domain*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %5, align 8
  store %struct.meson_ee_pwrc* %1, %struct.meson_ee_pwrc** %6, align 8
  store %struct.meson_ee_pwrc_domain* %2, %struct.meson_ee_pwrc_domain** %7, align 8
  %11 = load %struct.meson_ee_pwrc*, %struct.meson_ee_pwrc** %6, align 8
  %12 = load %struct.meson_ee_pwrc_domain*, %struct.meson_ee_pwrc_domain** %7, align 8
  %13 = getelementptr inbounds %struct.meson_ee_pwrc_domain, %struct.meson_ee_pwrc_domain* %12, i32 0, i32 6
  store %struct.meson_ee_pwrc* %11, %struct.meson_ee_pwrc** %13, align 8
  %14 = load %struct.meson_ee_pwrc_domain*, %struct.meson_ee_pwrc_domain** %7, align 8
  %15 = getelementptr inbounds %struct.meson_ee_pwrc_domain, %struct.meson_ee_pwrc_domain* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.meson_ee_pwrc_domain*, %struct.meson_ee_pwrc_domain** %7, align 8
  %19 = getelementptr inbounds %struct.meson_ee_pwrc_domain, %struct.meson_ee_pwrc_domain* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.meson_ee_pwrc_domain*, %struct.meson_ee_pwrc_domain** %7, align 8
  %21 = getelementptr inbounds %struct.meson_ee_pwrc_domain, %struct.meson_ee_pwrc_domain* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.meson_ee_pwrc_domain*, %struct.meson_ee_pwrc_domain** %7, align 8
  %25 = getelementptr inbounds %struct.meson_ee_pwrc_domain, %struct.meson_ee_pwrc_domain* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.meson_ee_pwrc_domain*, %struct.meson_ee_pwrc_domain** %7, align 8
  %27 = getelementptr inbounds %struct.meson_ee_pwrc_domain, %struct.meson_ee_pwrc_domain* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %65

30:                                               ; preds = %3
  %31 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = call i32 @reset_control_get_count(i32* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.meson_ee_pwrc_domain*, %struct.meson_ee_pwrc_domain** %7, align 8
  %36 = getelementptr inbounds %struct.meson_ee_pwrc_domain, %struct.meson_ee_pwrc_domain* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %34, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %30
  %40 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.meson_ee_pwrc_domain*, %struct.meson_ee_pwrc_domain** %7, align 8
  %44 = getelementptr inbounds %struct.meson_ee_pwrc_domain, %struct.meson_ee_pwrc_domain* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @dev_warn(i32* %41, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %46)
  br label %48

48:                                               ; preds = %39, %30
  %49 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %50 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %49, i32 0, i32 0
  %51 = call i32 @devm_reset_control_array_get(i32* %50, i32 0, i32 0)
  %52 = load %struct.meson_ee_pwrc_domain*, %struct.meson_ee_pwrc_domain** %7, align 8
  %53 = getelementptr inbounds %struct.meson_ee_pwrc_domain, %struct.meson_ee_pwrc_domain* %52, i32 0, i32 5
  store i32 %51, i32* %53, align 8
  %54 = load %struct.meson_ee_pwrc_domain*, %struct.meson_ee_pwrc_domain** %7, align 8
  %55 = getelementptr inbounds %struct.meson_ee_pwrc_domain, %struct.meson_ee_pwrc_domain* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @IS_ERR(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %48
  %60 = load %struct.meson_ee_pwrc_domain*, %struct.meson_ee_pwrc_domain** %7, align 8
  %61 = getelementptr inbounds %struct.meson_ee_pwrc_domain, %struct.meson_ee_pwrc_domain* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @PTR_ERR(i32 %62)
  store i32 %63, i32* %4, align 4
  br label %171

64:                                               ; preds = %48
  br label %65

65:                                               ; preds = %64, %3
  %66 = load %struct.meson_ee_pwrc_domain*, %struct.meson_ee_pwrc_domain** %7, align 8
  %67 = getelementptr inbounds %struct.meson_ee_pwrc_domain, %struct.meson_ee_pwrc_domain* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %99

70:                                               ; preds = %65
  %71 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = load %struct.meson_ee_pwrc_domain*, %struct.meson_ee_pwrc_domain** %7, align 8
  %74 = getelementptr inbounds %struct.meson_ee_pwrc_domain, %struct.meson_ee_pwrc_domain* %73, i32 0, i32 4
  %75 = call i32 @devm_clk_bulk_get_all(i32* %72, i32* %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %70
  %79 = load i32, i32* %9, align 4
  store i32 %79, i32* %4, align 4
  br label %171

80:                                               ; preds = %70
  %81 = load %struct.meson_ee_pwrc_domain*, %struct.meson_ee_pwrc_domain** %7, align 8
  %82 = getelementptr inbounds %struct.meson_ee_pwrc_domain, %struct.meson_ee_pwrc_domain* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %98

86:                                               ; preds = %80
  %87 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %88 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %87, i32 0, i32 0
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.meson_ee_pwrc_domain*, %struct.meson_ee_pwrc_domain** %7, align 8
  %91 = getelementptr inbounds %struct.meson_ee_pwrc_domain, %struct.meson_ee_pwrc_domain* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @dev_warn(i32* %88, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %89, i32 %93)
  %95 = load i32, i32* %9, align 4
  %96 = load %struct.meson_ee_pwrc_domain*, %struct.meson_ee_pwrc_domain** %7, align 8
  %97 = getelementptr inbounds %struct.meson_ee_pwrc_domain, %struct.meson_ee_pwrc_domain* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  br label %98

98:                                               ; preds = %86, %80
  br label %99

99:                                               ; preds = %98, %65
  %100 = load %struct.meson_ee_pwrc_domain*, %struct.meson_ee_pwrc_domain** %7, align 8
  %101 = getelementptr inbounds %struct.meson_ee_pwrc_domain, %struct.meson_ee_pwrc_domain* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.meson_ee_pwrc_domain*, %struct.meson_ee_pwrc_domain** %7, align 8
  %105 = getelementptr inbounds %struct.meson_ee_pwrc_domain, %struct.meson_ee_pwrc_domain* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  store i32 %103, i32* %106, align 8
  %107 = load i32, i32* @meson_ee_pwrc_on, align 4
  %108 = load %struct.meson_ee_pwrc_domain*, %struct.meson_ee_pwrc_domain** %7, align 8
  %109 = getelementptr inbounds %struct.meson_ee_pwrc_domain, %struct.meson_ee_pwrc_domain* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  store i32 %107, i32* %110, align 4
  %111 = load i32, i32* @meson_ee_pwrc_off, align 4
  %112 = load %struct.meson_ee_pwrc_domain*, %struct.meson_ee_pwrc_domain** %7, align 8
  %113 = getelementptr inbounds %struct.meson_ee_pwrc_domain, %struct.meson_ee_pwrc_domain* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  store i32 %111, i32* %114, align 8
  %115 = load %struct.meson_ee_pwrc_domain*, %struct.meson_ee_pwrc_domain** %7, align 8
  %116 = getelementptr inbounds %struct.meson_ee_pwrc_domain, %struct.meson_ee_pwrc_domain* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %150

119:                                              ; preds = %99
  %120 = load %struct.meson_ee_pwrc_domain*, %struct.meson_ee_pwrc_domain** %7, align 8
  %121 = getelementptr inbounds %struct.meson_ee_pwrc_domain, %struct.meson_ee_pwrc_domain* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 2
  %123 = load i32 (%struct.meson_ee_pwrc_domain.0*)*, i32 (%struct.meson_ee_pwrc_domain.0*)** %122, align 8
  %124 = icmp ne i32 (%struct.meson_ee_pwrc_domain.0*)* %123, null
  br i1 %124, label %125, label %150

125:                                              ; preds = %119
  %126 = load %struct.meson_ee_pwrc_domain*, %struct.meson_ee_pwrc_domain** %7, align 8
  %127 = getelementptr inbounds %struct.meson_ee_pwrc_domain, %struct.meson_ee_pwrc_domain* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 2
  %129 = load i32 (%struct.meson_ee_pwrc_domain.0*)*, i32 (%struct.meson_ee_pwrc_domain.0*)** %128, align 8
  %130 = load %struct.meson_ee_pwrc_domain*, %struct.meson_ee_pwrc_domain** %7, align 8
  %131 = bitcast %struct.meson_ee_pwrc_domain* %130 to %struct.meson_ee_pwrc_domain.0*
  %132 = call i32 %129(%struct.meson_ee_pwrc_domain.0* %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %150, label %134

134:                                              ; preds = %125
  %135 = load %struct.meson_ee_pwrc_domain*, %struct.meson_ee_pwrc_domain** %7, align 8
  %136 = getelementptr inbounds %struct.meson_ee_pwrc_domain, %struct.meson_ee_pwrc_domain* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.meson_ee_pwrc_domain*, %struct.meson_ee_pwrc_domain** %7, align 8
  %139 = getelementptr inbounds %struct.meson_ee_pwrc_domain, %struct.meson_ee_pwrc_domain* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @clk_bulk_prepare_enable(i32 %137, i32 %140)
  store i32 %141, i32* %10, align 4
  %142 = load i32, i32* %10, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %134
  %145 = load i32, i32* %10, align 4
  store i32 %145, i32* %4, align 4
  br label %171

146:                                              ; preds = %134
  %147 = load %struct.meson_ee_pwrc_domain*, %struct.meson_ee_pwrc_domain** %7, align 8
  %148 = getelementptr inbounds %struct.meson_ee_pwrc_domain, %struct.meson_ee_pwrc_domain* %147, i32 0, i32 3
  %149 = call i32 @pm_genpd_init(%struct.TYPE_4__* %148, i32* @pm_domain_always_on_gov, i32 0)
  br label %170

150:                                              ; preds = %125, %119, %99
  %151 = load %struct.meson_ee_pwrc_domain*, %struct.meson_ee_pwrc_domain** %7, align 8
  %152 = getelementptr inbounds %struct.meson_ee_pwrc_domain, %struct.meson_ee_pwrc_domain* %151, i32 0, i32 3
  %153 = load %struct.meson_ee_pwrc_domain*, %struct.meson_ee_pwrc_domain** %7, align 8
  %154 = getelementptr inbounds %struct.meson_ee_pwrc_domain, %struct.meson_ee_pwrc_domain* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 2
  %156 = load i32 (%struct.meson_ee_pwrc_domain.0*)*, i32 (%struct.meson_ee_pwrc_domain.0*)** %155, align 8
  %157 = icmp ne i32 (%struct.meson_ee_pwrc_domain.0*)* %156, null
  br i1 %157, label %158, label %166

158:                                              ; preds = %150
  %159 = load %struct.meson_ee_pwrc_domain*, %struct.meson_ee_pwrc_domain** %7, align 8
  %160 = getelementptr inbounds %struct.meson_ee_pwrc_domain, %struct.meson_ee_pwrc_domain* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 2
  %162 = load i32 (%struct.meson_ee_pwrc_domain.0*)*, i32 (%struct.meson_ee_pwrc_domain.0*)** %161, align 8
  %163 = load %struct.meson_ee_pwrc_domain*, %struct.meson_ee_pwrc_domain** %7, align 8
  %164 = bitcast %struct.meson_ee_pwrc_domain* %163 to %struct.meson_ee_pwrc_domain.0*
  %165 = call i32 %162(%struct.meson_ee_pwrc_domain.0* %164)
  br label %167

166:                                              ; preds = %150
  br label %167

167:                                              ; preds = %166, %158
  %168 = phi i32 [ %165, %158 ], [ 1, %166 ]
  %169 = call i32 @pm_genpd_init(%struct.TYPE_4__* %152, i32* null, i32 %168)
  br label %170

170:                                              ; preds = %167, %146
  store i32 0, i32* %4, align 4
  br label %171

171:                                              ; preds = %170, %144, %78, %59
  %172 = load i32, i32* %4, align 4
  ret i32 %172
}

declare dso_local i32 @reset_control_get_count(i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32) #1

declare dso_local i32 @devm_reset_control_array_get(i32*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_bulk_get_all(i32*, i32*) #1

declare dso_local i32 @clk_bulk_prepare_enable(i32, i32) #1

declare dso_local i32 @pm_genpd_init(%struct.TYPE_4__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
