; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/imx/extr_gpc.c_imx_gpc_old_dt_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/imx/extr_gpc.c_imx_gpc_old_dt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_pm_domain = type { i32, %struct.TYPE_4__, i32, %struct.regmap* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*)* }
%struct.regmap = type { i32 }
%struct.device = type { i32 }

@imx_gpc_domains = common dso_local global %struct.imx_pm_domain* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"pu\00", align 1
@CONFIG_PM_GENERIC_DOMAINS = common dso_local global i32 0, align 4
@imx_gpc_onecell_data = common dso_local global i32 0, align 4
@GPC_PGC_DOMAIN_PU = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.regmap*, i32)* @imx_gpc_old_dt_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_gpc_old_dt_init(%struct.device* %0, %struct.regmap* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.imx_pm_domain*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.regmap* %1, %struct.regmap** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %58, %3
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %61

15:                                               ; preds = %11
  %16 = load %struct.imx_pm_domain*, %struct.imx_pm_domain** @imx_gpc_domains, align 8
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.imx_pm_domain, %struct.imx_pm_domain* %16, i64 %18
  store %struct.imx_pm_domain* %19, %struct.imx_pm_domain** %8, align 8
  %20 = load %struct.regmap*, %struct.regmap** %6, align 8
  %21 = load %struct.imx_pm_domain*, %struct.imx_pm_domain** %8, align 8
  %22 = getelementptr inbounds %struct.imx_pm_domain, %struct.imx_pm_domain* %21, i32 0, i32 3
  store %struct.regmap* %20, %struct.regmap** %22, align 8
  %23 = load %struct.imx_pm_domain*, %struct.imx_pm_domain** %8, align 8
  %24 = getelementptr inbounds %struct.imx_pm_domain, %struct.imx_pm_domain* %23, i32 0, i32 0
  store i32 66, i32* %24, align 8
  %25 = load i32, i32* %9, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %57

27:                                               ; preds = %15
  %28 = load %struct.device*, %struct.device** %5, align 8
  %29 = call i32 @devm_regulator_get(%struct.device* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.imx_pm_domain*, %struct.imx_pm_domain** %8, align 8
  %31 = getelementptr inbounds %struct.imx_pm_domain, %struct.imx_pm_domain* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load %struct.imx_pm_domain*, %struct.imx_pm_domain** %8, align 8
  %33 = getelementptr inbounds %struct.imx_pm_domain, %struct.imx_pm_domain* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @IS_ERR(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %27
  %38 = load %struct.imx_pm_domain*, %struct.imx_pm_domain** %8, align 8
  %39 = getelementptr inbounds %struct.imx_pm_domain, %struct.imx_pm_domain* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @PTR_ERR(i32 %40)
  store i32 %41, i32* %4, align 4
  br label %112

42:                                               ; preds = %27
  %43 = load %struct.device*, %struct.device** %5, align 8
  %44 = load %struct.imx_pm_domain*, %struct.imx_pm_domain** %8, align 8
  %45 = call i32 @imx_pgc_get_clocks(%struct.device* %43, %struct.imx_pm_domain* %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %110

49:                                               ; preds = %42
  %50 = load %struct.imx_pm_domain*, %struct.imx_pm_domain** %8, align 8
  %51 = getelementptr inbounds %struct.imx_pm_domain, %struct.imx_pm_domain* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %52, align 8
  %54 = load %struct.imx_pm_domain*, %struct.imx_pm_domain** %8, align 8
  %55 = getelementptr inbounds %struct.imx_pm_domain, %struct.imx_pm_domain* %54, i32 0, i32 1
  %56 = call i32 %53(%struct.TYPE_4__* %55)
  br label %57

57:                                               ; preds = %49, %15
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %11

61:                                               ; preds = %11
  store i32 0, i32* %9, align 4
  br label %62

62:                                               ; preds = %73, %61
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ult i32 %63, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %62
  %67 = load %struct.imx_pm_domain*, %struct.imx_pm_domain** @imx_gpc_domains, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.imx_pm_domain, %struct.imx_pm_domain* %67, i64 %69
  %71 = getelementptr inbounds %struct.imx_pm_domain, %struct.imx_pm_domain* %70, i32 0, i32 1
  %72 = call i32 @pm_genpd_init(%struct.TYPE_4__* %71, i32* null, i32 0)
  br label %73

73:                                               ; preds = %66
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %62

76:                                               ; preds = %62
  %77 = load i32, i32* @CONFIG_PM_GENERIC_DOMAINS, align 4
  %78 = call i64 @IS_ENABLED(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %76
  %81 = load %struct.device*, %struct.device** %5, align 8
  %82 = getelementptr inbounds %struct.device, %struct.device* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @of_genpd_add_provider_onecell(i32 %83, i32* @imx_gpc_onecell_data)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  br label %90

88:                                               ; preds = %80
  br label %89

89:                                               ; preds = %88, %76
  store i32 0, i32* %4, align 4
  br label %112

90:                                               ; preds = %87
  store i32 0, i32* %9, align 4
  br label %91

91:                                               ; preds = %102, %90
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp ult i32 %92, %93
  br i1 %94, label %95, label %105

95:                                               ; preds = %91
  %96 = load %struct.imx_pm_domain*, %struct.imx_pm_domain** @imx_gpc_domains, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.imx_pm_domain, %struct.imx_pm_domain* %96, i64 %98
  %100 = getelementptr inbounds %struct.imx_pm_domain, %struct.imx_pm_domain* %99, i32 0, i32 1
  %101 = call i32 @pm_genpd_remove(%struct.TYPE_4__* %100)
  br label %102

102:                                              ; preds = %95
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %9, align 4
  br label %91

105:                                              ; preds = %91
  %106 = load %struct.imx_pm_domain*, %struct.imx_pm_domain** @imx_gpc_domains, align 8
  %107 = load i64, i64* @GPC_PGC_DOMAIN_PU, align 8
  %108 = getelementptr inbounds %struct.imx_pm_domain, %struct.imx_pm_domain* %106, i64 %107
  %109 = call i32 @imx_pgc_put_clocks(%struct.imx_pm_domain* %108)
  br label %110

110:                                              ; preds = %105, %48
  %111 = load i32, i32* %10, align 4
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %110, %89, %37
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i32 @devm_regulator_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @imx_pgc_get_clocks(%struct.device*, %struct.imx_pm_domain*) #1

declare dso_local i32 @pm_genpd_init(%struct.TYPE_4__*, i32*, i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @of_genpd_add_provider_onecell(i32, i32*) #1

declare dso_local i32 @pm_genpd_remove(%struct.TYPE_4__*) #1

declare dso_local i32 @imx_pgc_put_clocks(%struct.imx_pm_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
