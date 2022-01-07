; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_wcnss.c_wcnss_init_regulators.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_wcnss.c_wcnss_init_regulators.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_wcnss = type { i32, %struct.regulator_bulk_data*, i32 }
%struct.regulator_bulk_data = type { i32, i32 }
%struct.wcnss_vreg_info = type { i64, i64, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_wcnss*, %struct.wcnss_vreg_info*, i32)* @wcnss_init_regulators to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcnss_init_regulators(%struct.qcom_wcnss* %0, %struct.wcnss_vreg_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qcom_wcnss*, align 8
  %6 = alloca %struct.wcnss_vreg_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.regulator_bulk_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.qcom_wcnss* %0, %struct.qcom_wcnss** %5, align 8
  store %struct.wcnss_vreg_info* %1, %struct.wcnss_vreg_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.qcom_wcnss*, %struct.qcom_wcnss** %5, align 8
  %12 = getelementptr inbounds %struct.qcom_wcnss, %struct.qcom_wcnss* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.regulator_bulk_data* @devm_kcalloc(i32 %13, i32 %14, i32 8, i32 %15)
  store %struct.regulator_bulk_data* %16, %struct.regulator_bulk_data** %8, align 8
  %17 = load %struct.regulator_bulk_data*, %struct.regulator_bulk_data** %8, align 8
  %18 = icmp ne %struct.regulator_bulk_data* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %119

22:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %39, %22
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %23
  %28 = load %struct.wcnss_vreg_info*, %struct.wcnss_vreg_info** %6, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.wcnss_vreg_info, %struct.wcnss_vreg_info* %28, i64 %30
  %32 = getelementptr inbounds %struct.wcnss_vreg_info, %struct.wcnss_vreg_info* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.regulator_bulk_data*, %struct.regulator_bulk_data** %8, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %34, i64 %36
  %38 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %37, i32 0, i32 1
  store i32 %33, i32* %38, align 4
  br label %39

39:                                               ; preds = %27
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %10, align 4
  br label %23

42:                                               ; preds = %23
  %43 = load %struct.qcom_wcnss*, %struct.qcom_wcnss** %5, align 8
  %44 = getelementptr inbounds %struct.qcom_wcnss, %struct.qcom_wcnss* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.regulator_bulk_data*, %struct.regulator_bulk_data** %8, align 8
  %48 = call i32 @devm_regulator_bulk_get(i32 %45, i32 %46, %struct.regulator_bulk_data* %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %4, align 4
  br label %119

53:                                               ; preds = %42
  store i32 0, i32* %10, align 4
  br label %54

54:                                               ; preds = %109, %53
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %112

58:                                               ; preds = %54
  %59 = load %struct.wcnss_vreg_info*, %struct.wcnss_vreg_info** %6, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.wcnss_vreg_info, %struct.wcnss_vreg_info* %59, i64 %61
  %63 = getelementptr inbounds %struct.wcnss_vreg_info, %struct.wcnss_vreg_info* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %86

66:                                               ; preds = %58
  %67 = load %struct.regulator_bulk_data*, %struct.regulator_bulk_data** %8, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %67, i64 %69
  %71 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.wcnss_vreg_info*, %struct.wcnss_vreg_info** %6, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.wcnss_vreg_info, %struct.wcnss_vreg_info* %73, i64 %75
  %77 = getelementptr inbounds %struct.wcnss_vreg_info, %struct.wcnss_vreg_info* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.wcnss_vreg_info*, %struct.wcnss_vreg_info** %6, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.wcnss_vreg_info, %struct.wcnss_vreg_info* %79, i64 %81
  %83 = getelementptr inbounds %struct.wcnss_vreg_info, %struct.wcnss_vreg_info* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @regulator_set_voltage(i32 %72, i32 %78, i64 %84)
  br label %86

86:                                               ; preds = %66, %58
  %87 = load %struct.wcnss_vreg_info*, %struct.wcnss_vreg_info** %6, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.wcnss_vreg_info, %struct.wcnss_vreg_info* %87, i64 %89
  %91 = getelementptr inbounds %struct.wcnss_vreg_info, %struct.wcnss_vreg_info* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %108

94:                                               ; preds = %86
  %95 = load %struct.regulator_bulk_data*, %struct.regulator_bulk_data** %8, align 8
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %95, i64 %97
  %99 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.wcnss_vreg_info*, %struct.wcnss_vreg_info** %6, align 8
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.wcnss_vreg_info, %struct.wcnss_vreg_info* %101, i64 %103
  %105 = getelementptr inbounds %struct.wcnss_vreg_info, %struct.wcnss_vreg_info* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @regulator_set_load(i32 %100, i64 %106)
  br label %108

108:                                              ; preds = %94, %86
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %10, align 4
  br label %54

112:                                              ; preds = %54
  %113 = load %struct.regulator_bulk_data*, %struct.regulator_bulk_data** %8, align 8
  %114 = load %struct.qcom_wcnss*, %struct.qcom_wcnss** %5, align 8
  %115 = getelementptr inbounds %struct.qcom_wcnss, %struct.qcom_wcnss* %114, i32 0, i32 1
  store %struct.regulator_bulk_data* %113, %struct.regulator_bulk_data** %115, align 8
  %116 = load i32, i32* %7, align 4
  %117 = load %struct.qcom_wcnss*, %struct.qcom_wcnss** %5, align 8
  %118 = getelementptr inbounds %struct.qcom_wcnss, %struct.qcom_wcnss* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  store i32 0, i32* %4, align 4
  br label %119

119:                                              ; preds = %112, %51, %19
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local %struct.regulator_bulk_data* @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local i32 @devm_regulator_bulk_get(i32, i32, %struct.regulator_bulk_data*) #1

declare dso_local i32 @regulator_set_voltage(i32, i32, i64) #1

declare dso_local i32 @regulator_set_load(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
