; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_ci_hdrc_msm.c_ci_hdrc_msm_mux_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_ci_hdrc_msm.c_ci_hdrc_msm_mux_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ci_hdrc_msm = type { i32, i64 }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.regmap = type { i32 }
%struct.of_phandle_args = type { i32*, i32 }

@.str = private unnamed_addr constant [11 x i8] c"phy-select\00", align 1
@HS_PHY_SEC_CTRL = common dso_local global i64 0, align 8
@HS_PHY_DIG_CLAMP_N = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ci_hdrc_msm*, %struct.platform_device*)* @ci_hdrc_msm_mux_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_hdrc_msm_mux_phy(%struct.ci_hdrc_msm* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ci_hdrc_msm*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.of_phandle_args, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ci_hdrc_msm* %0, %struct.ci_hdrc_msm** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %7, align 8
  %13 = load %struct.device*, %struct.device** %7, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @of_parse_phandle_with_fixed_args(i32 %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 2, i32 0, %struct.of_phandle_args* %8)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %81

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %8, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.regmap* @syscon_node_to_regmap(i32 %22)
  store %struct.regmap* %23, %struct.regmap** %6, align 8
  %24 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %8, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @of_node_put(i32 %25)
  %27 = load %struct.regmap*, %struct.regmap** %6, align 8
  %28 = call i64 @IS_ERR(%struct.regmap* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = load %struct.regmap*, %struct.regmap** %6, align 8
  %32 = call i32 @PTR_ERR(%struct.regmap* %31)
  store i32 %32, i32* %3, align 4
  br label %81

33:                                               ; preds = %20
  %34 = load %struct.regmap*, %struct.regmap** %6, align 8
  %35 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %8, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %8, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @regmap_write(%struct.regmap* %34, i32 %38, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %33
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %3, align 4
  br label %81

48:                                               ; preds = %33
  %49 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %8, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = load %struct.ci_hdrc_msm*, %struct.ci_hdrc_msm** %4, align 8
  %58 = getelementptr inbounds %struct.ci_hdrc_msm, %struct.ci_hdrc_msm* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.ci_hdrc_msm*, %struct.ci_hdrc_msm** %4, align 8
  %60 = getelementptr inbounds %struct.ci_hdrc_msm, %struct.ci_hdrc_msm* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %80

63:                                               ; preds = %48
  %64 = load %struct.ci_hdrc_msm*, %struct.ci_hdrc_msm** %4, align 8
  %65 = getelementptr inbounds %struct.ci_hdrc_msm, %struct.ci_hdrc_msm* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @HS_PHY_SEC_CTRL, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @readl_relaxed(i64 %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* @HS_PHY_DIG_CLAMP_N, align 4
  %71 = load i32, i32* %9, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.ci_hdrc_msm*, %struct.ci_hdrc_msm** %4, align 8
  %75 = getelementptr inbounds %struct.ci_hdrc_msm, %struct.ci_hdrc_msm* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @HS_PHY_SEC_CTRL, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @writel_relaxed(i32 %73, i64 %78)
  br label %80

80:                                               ; preds = %63, %48
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %46, %30, %19
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @of_parse_phandle_with_fixed_args(i32, i8*, i32, i32, %struct.of_phandle_args*) #1

declare dso_local %struct.regmap* @syscon_node_to_regmap(i32) #1

declare dso_local i32 @of_node_put(i32) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
