; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_mss.c_q6v5_regulator_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_q6v5_mss.c_q6v5_regulator_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.reg_info = type { i32, i32, i32 }
%struct.qcom_mss_reg_res = type { i32, i32, i64 }

@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to get %s\0A regulator\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.reg_info*, %struct.qcom_mss_reg_res*)* @q6v5_regulator_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @q6v5_regulator_init(%struct.device* %0, %struct.reg_info* %1, %struct.qcom_mss_reg_res* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.reg_info*, align 8
  %7 = alloca %struct.qcom_mss_reg_res*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.reg_info* %1, %struct.reg_info** %6, align 8
  store %struct.qcom_mss_reg_res* %2, %struct.qcom_mss_reg_res** %7, align 8
  %10 = load %struct.qcom_mss_reg_res*, %struct.qcom_mss_reg_res** %7, align 8
  %11 = icmp ne %struct.qcom_mss_reg_res* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %95

13:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %90, %13
  %15 = load %struct.qcom_mss_reg_res*, %struct.qcom_mss_reg_res** %7, align 8
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.qcom_mss_reg_res, %struct.qcom_mss_reg_res* %15, i64 %17
  %19 = getelementptr inbounds %struct.qcom_mss_reg_res, %struct.qcom_mss_reg_res* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %93

22:                                               ; preds = %14
  %23 = load %struct.device*, %struct.device** %5, align 8
  %24 = load %struct.qcom_mss_reg_res*, %struct.qcom_mss_reg_res** %7, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.qcom_mss_reg_res, %struct.qcom_mss_reg_res* %24, i64 %26
  %28 = getelementptr inbounds %struct.qcom_mss_reg_res, %struct.qcom_mss_reg_res* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @devm_regulator_get(%struct.device* %23, i64 %29)
  %31 = load %struct.reg_info*, %struct.reg_info** %6, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %31, i64 %33
  %35 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %34, i32 0, i32 2
  store i32 %30, i32* %35, align 4
  %36 = load %struct.reg_info*, %struct.reg_info** %6, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %36, i64 %38
  %40 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @IS_ERR(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %67

44:                                               ; preds = %22
  %45 = load %struct.reg_info*, %struct.reg_info** %6, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %45, i64 %47
  %49 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @PTR_ERR(i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @EPROBE_DEFER, align 4
  %54 = sub nsw i32 0, %53
  %55 = icmp ne i32 %52, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %44
  %57 = load %struct.device*, %struct.device** %5, align 8
  %58 = load %struct.qcom_mss_reg_res*, %struct.qcom_mss_reg_res** %7, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.qcom_mss_reg_res, %struct.qcom_mss_reg_res* %58, i64 %60
  %62 = getelementptr inbounds %struct.qcom_mss_reg_res, %struct.qcom_mss_reg_res* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @dev_err(%struct.device* %57, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %63)
  br label %65

65:                                               ; preds = %56, %44
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %4, align 4
  br label %95

67:                                               ; preds = %22
  %68 = load %struct.qcom_mss_reg_res*, %struct.qcom_mss_reg_res** %7, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.qcom_mss_reg_res, %struct.qcom_mss_reg_res* %68, i64 %70
  %72 = getelementptr inbounds %struct.qcom_mss_reg_res, %struct.qcom_mss_reg_res* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.reg_info*, %struct.reg_info** %6, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %74, i64 %76
  %78 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %77, i32 0, i32 1
  store i32 %73, i32* %78, align 4
  %79 = load %struct.qcom_mss_reg_res*, %struct.qcom_mss_reg_res** %7, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.qcom_mss_reg_res, %struct.qcom_mss_reg_res* %79, i64 %81
  %83 = getelementptr inbounds %struct.qcom_mss_reg_res, %struct.qcom_mss_reg_res* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.reg_info*, %struct.reg_info** %6, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %85, i64 %87
  %89 = getelementptr inbounds %struct.reg_info, %struct.reg_info* %88, i32 0, i32 0
  store i32 %84, i32* %89, align 4
  br label %90

90:                                               ; preds = %67
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %9, align 4
  br label %14

93:                                               ; preds = %14
  %94 = load i32, i32* %9, align 4
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %93, %65, %12
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @devm_regulator_get(%struct.device*, i64) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
