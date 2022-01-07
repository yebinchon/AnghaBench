; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/imx/extr_gpcv2.c_imx_pgc_domain_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/imx/extr_gpcv2.c_imx_pgc_domain_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.imx_pgc_domain* }
%struct.imx_pgc_domain = type { i32, %struct.TYPE_3__*, i64, i32 }

@.str = private unnamed_addr constant [6 x i8] c"power\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to get domain's regulator\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to get domain's clocks\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Failed to init power domain\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Failed to add genpd provider\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @imx_pgc_domain_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_pgc_domain_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.imx_pgc_domain*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = load %struct.imx_pgc_domain*, %struct.imx_pgc_domain** %8, align 8
  store %struct.imx_pgc_domain* %9, %struct.imx_pgc_domain** %4, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = load %struct.imx_pgc_domain*, %struct.imx_pgc_domain** %4, align 8
  %13 = getelementptr inbounds %struct.imx_pgc_domain, %struct.imx_pgc_domain* %12, i32 0, i32 1
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %13, align 8
  %14 = load %struct.imx_pgc_domain*, %struct.imx_pgc_domain** %4, align 8
  %15 = getelementptr inbounds %struct.imx_pgc_domain, %struct.imx_pgc_domain* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = call i32 @devm_regulator_get_optional(%struct.TYPE_3__* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.imx_pgc_domain*, %struct.imx_pgc_domain** %4, align 8
  %19 = getelementptr inbounds %struct.imx_pgc_domain, %struct.imx_pgc_domain* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 8
  %20 = load %struct.imx_pgc_domain*, %struct.imx_pgc_domain** %4, align 8
  %21 = getelementptr inbounds %struct.imx_pgc_domain, %struct.imx_pgc_domain* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @IS_ERR(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %52

25:                                               ; preds = %1
  %26 = load %struct.imx_pgc_domain*, %struct.imx_pgc_domain** %4, align 8
  %27 = getelementptr inbounds %struct.imx_pgc_domain, %struct.imx_pgc_domain* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @PTR_ERR(i32 %28)
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  %32 = icmp ne i32 %29, %31
  br i1 %32, label %33, label %51

33:                                               ; preds = %25
  %34 = load %struct.imx_pgc_domain*, %struct.imx_pgc_domain** %4, align 8
  %35 = getelementptr inbounds %struct.imx_pgc_domain, %struct.imx_pgc_domain* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @PTR_ERR(i32 %36)
  %38 = load i32, i32* @EPROBE_DEFER, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp ne i32 %37, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %33
  %42 = load %struct.imx_pgc_domain*, %struct.imx_pgc_domain** %4, align 8
  %43 = getelementptr inbounds %struct.imx_pgc_domain, %struct.imx_pgc_domain* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = call i32 @dev_err(%struct.TYPE_3__* %44, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %41, %33
  %47 = load %struct.imx_pgc_domain*, %struct.imx_pgc_domain** %4, align 8
  %48 = getelementptr inbounds %struct.imx_pgc_domain, %struct.imx_pgc_domain* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @PTR_ERR(i32 %49)
  store i32 %50, i32* %2, align 4
  br label %123

51:                                               ; preds = %25
  br label %69

52:                                               ; preds = %1
  %53 = load %struct.imx_pgc_domain*, %struct.imx_pgc_domain** %4, align 8
  %54 = getelementptr inbounds %struct.imx_pgc_domain, %struct.imx_pgc_domain* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %52
  %58 = load %struct.imx_pgc_domain*, %struct.imx_pgc_domain** %4, align 8
  %59 = getelementptr inbounds %struct.imx_pgc_domain, %struct.imx_pgc_domain* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.imx_pgc_domain*, %struct.imx_pgc_domain** %4, align 8
  %62 = getelementptr inbounds %struct.imx_pgc_domain, %struct.imx_pgc_domain* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.imx_pgc_domain*, %struct.imx_pgc_domain** %4, align 8
  %65 = getelementptr inbounds %struct.imx_pgc_domain, %struct.imx_pgc_domain* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @regulator_set_voltage(i32 %60, i64 %63, i64 %66)
  br label %68

68:                                               ; preds = %57, %52
  br label %69

69:                                               ; preds = %68, %51
  %70 = load %struct.imx_pgc_domain*, %struct.imx_pgc_domain** %4, align 8
  %71 = call i32 @imx_pgc_get_clocks(%struct.imx_pgc_domain* %70)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %69
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @EPROBE_DEFER, align 4
  %77 = sub nsw i32 0, %76
  %78 = icmp ne i32 %75, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load %struct.imx_pgc_domain*, %struct.imx_pgc_domain** %4, align 8
  %81 = getelementptr inbounds %struct.imx_pgc_domain, %struct.imx_pgc_domain* %80, i32 0, i32 1
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = call i32 @dev_err(%struct.TYPE_3__* %82, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %84

84:                                               ; preds = %79, %74
  %85 = load i32, i32* %5, align 4
  store i32 %85, i32* %2, align 4
  br label %123

86:                                               ; preds = %69
  %87 = load %struct.imx_pgc_domain*, %struct.imx_pgc_domain** %4, align 8
  %88 = getelementptr inbounds %struct.imx_pgc_domain, %struct.imx_pgc_domain* %87, i32 0, i32 0
  %89 = call i32 @pm_genpd_init(i32* %88, i32* null, i32 1)
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %86
  %93 = load %struct.imx_pgc_domain*, %struct.imx_pgc_domain** %4, align 8
  %94 = getelementptr inbounds %struct.imx_pgc_domain, %struct.imx_pgc_domain* %93, i32 0, i32 1
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = call i32 @dev_err(%struct.TYPE_3__* %95, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %97 = load %struct.imx_pgc_domain*, %struct.imx_pgc_domain** %4, align 8
  %98 = call i32 @imx_pgc_put_clocks(%struct.imx_pgc_domain* %97)
  %99 = load i32, i32* %5, align 4
  store i32 %99, i32* %2, align 4
  br label %123

100:                                              ; preds = %86
  %101 = load %struct.imx_pgc_domain*, %struct.imx_pgc_domain** %4, align 8
  %102 = getelementptr inbounds %struct.imx_pgc_domain, %struct.imx_pgc_domain* %101, i32 0, i32 1
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.imx_pgc_domain*, %struct.imx_pgc_domain** %4, align 8
  %107 = getelementptr inbounds %struct.imx_pgc_domain, %struct.imx_pgc_domain* %106, i32 0, i32 0
  %108 = call i32 @of_genpd_add_provider_simple(i32 %105, i32* %107)
  store i32 %108, i32* %5, align 4
  %109 = load i32, i32* %5, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %100
  %112 = load %struct.imx_pgc_domain*, %struct.imx_pgc_domain** %4, align 8
  %113 = getelementptr inbounds %struct.imx_pgc_domain, %struct.imx_pgc_domain* %112, i32 0, i32 1
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  %115 = call i32 @dev_err(%struct.TYPE_3__* %114, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %116 = load %struct.imx_pgc_domain*, %struct.imx_pgc_domain** %4, align 8
  %117 = getelementptr inbounds %struct.imx_pgc_domain, %struct.imx_pgc_domain* %116, i32 0, i32 0
  %118 = call i32 @pm_genpd_remove(i32* %117)
  %119 = load %struct.imx_pgc_domain*, %struct.imx_pgc_domain** %4, align 8
  %120 = call i32 @imx_pgc_put_clocks(%struct.imx_pgc_domain* %119)
  br label %121

121:                                              ; preds = %111, %100
  %122 = load i32, i32* %5, align 4
  store i32 %122, i32* %2, align 4
  br label %123

123:                                              ; preds = %121, %92, %84, %46
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local i32 @devm_regulator_get_optional(%struct.TYPE_3__*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @regulator_set_voltage(i32, i64, i64) #1

declare dso_local i32 @imx_pgc_get_clocks(%struct.imx_pgc_domain*) #1

declare dso_local i32 @pm_genpd_init(i32*, i32*, i32) #1

declare dso_local i32 @imx_pgc_put_clocks(%struct.imx_pgc_domain*) #1

declare dso_local i32 @of_genpd_add_provider_simple(i32, i32*) #1

declare dso_local i32 @pm_genpd_remove(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
