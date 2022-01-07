; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qcom_aoss.c_qmp_pd_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qcom_aoss.c_qmp_pd_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qmp = type { %struct.device*, %struct.genpd_onecell_data }
%struct.device = type { i32 }
%struct.genpd_onecell_data = type { i32, %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.qmp_pd = type { %struct.TYPE_3__, %struct.qmp* }

@sdm845_resources = common dso_local global i32* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@qmp_pd_power_on = common dso_local global i32 0, align 4
@qmp_pd_power_off = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"failed to init genpd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qmp*)* @qmp_pd_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qmp_pd_add(%struct.qmp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qmp*, align 8
  %4 = alloca %struct.genpd_onecell_data*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.qmp_pd*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.qmp* %0, %struct.qmp** %3, align 8
  %10 = load %struct.qmp*, %struct.qmp** %3, align 8
  %11 = getelementptr inbounds %struct.qmp, %struct.qmp* %10, i32 0, i32 1
  store %struct.genpd_onecell_data* %11, %struct.genpd_onecell_data** %4, align 8
  %12 = load %struct.qmp*, %struct.qmp** %3, align 8
  %13 = getelementptr inbounds %struct.qmp, %struct.qmp* %12, i32 0, i32 0
  %14 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %14, %struct.device** %5, align 8
  %15 = load i32*, i32** @sdm845_resources, align 8
  %16 = call i64 @ARRAY_SIZE(i32* %15)
  store i64 %16, i64* %7, align 8
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i8* @devm_kcalloc(%struct.device* %17, i64 %18, i32 24, i32 %19)
  %21 = bitcast i8* %20 to %struct.qmp_pd*
  store %struct.qmp_pd* %21, %struct.qmp_pd** %6, align 8
  %22 = load %struct.qmp_pd*, %struct.qmp_pd** %6, align 8
  %23 = icmp ne %struct.qmp_pd* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %139

27:                                               ; preds = %1
  %28 = load %struct.device*, %struct.device** %5, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i8* @devm_kcalloc(%struct.device* %28, i64 %29, i32 8, i32 %30)
  %32 = bitcast i8* %31 to %struct.TYPE_3__**
  %33 = load %struct.genpd_onecell_data*, %struct.genpd_onecell_data** %4, align 8
  %34 = getelementptr inbounds %struct.genpd_onecell_data, %struct.genpd_onecell_data* %33, i32 0, i32 1
  store %struct.TYPE_3__** %32, %struct.TYPE_3__*** %34, align 8
  %35 = load %struct.genpd_onecell_data*, %struct.genpd_onecell_data** %4, align 8
  %36 = getelementptr inbounds %struct.genpd_onecell_data, %struct.genpd_onecell_data* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %36, align 8
  %38 = icmp ne %struct.TYPE_3__** %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %27
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %139

42:                                               ; preds = %27
  store i32 0, i32* %9, align 4
  br label %43

43:                                               ; preds = %103, %42
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* %7, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %106

48:                                               ; preds = %43
  %49 = load %struct.qmp*, %struct.qmp** %3, align 8
  %50 = load %struct.qmp_pd*, %struct.qmp_pd** %6, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.qmp_pd, %struct.qmp_pd* %50, i64 %52
  %54 = getelementptr inbounds %struct.qmp_pd, %struct.qmp_pd* %53, i32 0, i32 1
  store %struct.qmp* %49, %struct.qmp** %54, align 8
  %55 = load i32*, i32** @sdm845_resources, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.qmp_pd*, %struct.qmp_pd** %6, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.qmp_pd, %struct.qmp_pd* %60, i64 %62
  %64 = getelementptr inbounds %struct.qmp_pd, %struct.qmp_pd* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  store i32 %59, i32* %65, align 8
  %66 = load i32, i32* @qmp_pd_power_on, align 4
  %67 = load %struct.qmp_pd*, %struct.qmp_pd** %6, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.qmp_pd, %struct.qmp_pd* %67, i64 %69
  %71 = getelementptr inbounds %struct.qmp_pd, %struct.qmp_pd* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  store i32 %66, i32* %72, align 4
  %73 = load i32, i32* @qmp_pd_power_off, align 4
  %74 = load %struct.qmp_pd*, %struct.qmp_pd** %6, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.qmp_pd, %struct.qmp_pd* %74, i64 %76
  %78 = getelementptr inbounds %struct.qmp_pd, %struct.qmp_pd* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  store i32 %73, i32* %79, align 8
  %80 = load %struct.qmp_pd*, %struct.qmp_pd** %6, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.qmp_pd, %struct.qmp_pd* %80, i64 %82
  %84 = getelementptr inbounds %struct.qmp_pd, %struct.qmp_pd* %83, i32 0, i32 0
  %85 = call i32 @pm_genpd_init(%struct.TYPE_3__* %84, i32* null, i32 1)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %48
  %89 = load %struct.device*, %struct.device** %5, align 8
  %90 = call i32 @dev_err(%struct.device* %89, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %119

91:                                               ; preds = %48
  %92 = load %struct.qmp_pd*, %struct.qmp_pd** %6, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.qmp_pd, %struct.qmp_pd* %92, i64 %94
  %96 = getelementptr inbounds %struct.qmp_pd, %struct.qmp_pd* %95, i32 0, i32 0
  %97 = load %struct.genpd_onecell_data*, %struct.genpd_onecell_data** %4, align 8
  %98 = getelementptr inbounds %struct.genpd_onecell_data, %struct.genpd_onecell_data* %97, i32 0, i32 1
  %99 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %98, align 8
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %99, i64 %101
  store %struct.TYPE_3__* %96, %struct.TYPE_3__** %102, align 8
  br label %103

103:                                              ; preds = %91
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %9, align 4
  br label %43

106:                                              ; preds = %43
  %107 = load i32, i32* %9, align 4
  %108 = load %struct.genpd_onecell_data*, %struct.genpd_onecell_data** %4, align 8
  %109 = getelementptr inbounds %struct.genpd_onecell_data, %struct.genpd_onecell_data* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  %110 = load %struct.device*, %struct.device** %5, align 8
  %111 = getelementptr inbounds %struct.device, %struct.device* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.genpd_onecell_data*, %struct.genpd_onecell_data** %4, align 8
  %114 = call i32 @of_genpd_add_provider_onecell(i32 %112, %struct.genpd_onecell_data* %113)
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %106
  br label %119

118:                                              ; preds = %106
  store i32 0, i32* %2, align 4
  br label %139

119:                                              ; preds = %117, %88
  %120 = load i32, i32* %9, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %9, align 4
  br label %122

122:                                              ; preds = %134, %119
  %123 = load i32, i32* %9, align 4
  %124 = icmp sge i32 %123, 0
  br i1 %124, label %125, label %137

125:                                              ; preds = %122
  %126 = load %struct.genpd_onecell_data*, %struct.genpd_onecell_data** %4, align 8
  %127 = getelementptr inbounds %struct.genpd_onecell_data, %struct.genpd_onecell_data* %126, i32 0, i32 1
  %128 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %127, align 8
  %129 = load i32, i32* %9, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %128, i64 %130
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %131, align 8
  %133 = call i32 @pm_genpd_remove(%struct.TYPE_3__* %132)
  br label %134

134:                                              ; preds = %125
  %135 = load i32, i32* %9, align 4
  %136 = add nsw i32 %135, -1
  store i32 %136, i32* %9, align 4
  br label %122

137:                                              ; preds = %122
  %138 = load i32, i32* %8, align 4
  store i32 %138, i32* %2, align 4
  br label %139

139:                                              ; preds = %137, %118, %39, %24
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i8* @devm_kcalloc(%struct.device*, i64, i32, i32) #1

declare dso_local i32 @pm_genpd_init(%struct.TYPE_3__*, i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @of_genpd_add_provider_onecell(i32, %struct.genpd_onecell_data*) #1

declare dso_local i32 @pm_genpd_remove(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
