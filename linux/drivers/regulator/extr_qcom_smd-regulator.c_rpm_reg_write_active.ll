; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom_smd-regulator.c_rpm_reg_write_active.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom_smd-regulator.c_rpm_reg_write_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_rpm_reg = type { i32, i32, i32, i64, i64, i64, i32, i32, i32 }
%struct.rpm_regulator_req = type { i8*, i8*, i8* }

@RPM_KEY_SWEN = common dso_local global i32 0, align 4
@RPM_KEY_UV = common dso_local global i32 0, align 4
@RPM_KEY_MA = common dso_local global i32 0, align 4
@QCOM_SMD_RPM_ACTIVE_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_rpm_reg*)* @rpm_reg_write_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpm_reg_write_active(%struct.qcom_rpm_reg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qcom_rpm_reg*, align 8
  %4 = alloca [3 x %struct.rpm_regulator_req], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.qcom_rpm_reg* %0, %struct.qcom_rpm_reg** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.qcom_rpm_reg*, %struct.qcom_rpm_reg** %3, align 8
  %8 = getelementptr inbounds %struct.qcom_rpm_reg, %struct.qcom_rpm_reg* %7, i32 0, i32 5
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %33

11:                                               ; preds = %1
  %12 = load i32, i32* @RPM_KEY_SWEN, align 4
  %13 = call i8* @cpu_to_le32(i32 %12)
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [3 x %struct.rpm_regulator_req], [3 x %struct.rpm_regulator_req]* %4, i64 0, i64 %15
  %17 = getelementptr inbounds %struct.rpm_regulator_req, %struct.rpm_regulator_req* %16, i32 0, i32 2
  store i8* %13, i8** %17, align 8
  %18 = call i8* @cpu_to_le32(i32 4)
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [3 x %struct.rpm_regulator_req], [3 x %struct.rpm_regulator_req]* %4, i64 0, i64 %20
  %22 = getelementptr inbounds %struct.rpm_regulator_req, %struct.rpm_regulator_req* %21, i32 0, i32 1
  store i8* %18, i8** %22, align 8
  %23 = load %struct.qcom_rpm_reg*, %struct.qcom_rpm_reg** %3, align 8
  %24 = getelementptr inbounds %struct.qcom_rpm_reg, %struct.qcom_rpm_reg* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i8* @cpu_to_le32(i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [3 x %struct.rpm_regulator_req], [3 x %struct.rpm_regulator_req]* %4, i64 0, i64 %28
  %30 = getelementptr inbounds %struct.rpm_regulator_req, %struct.rpm_regulator_req* %29, i32 0, i32 0
  store i8* %26, i8** %30, align 8
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %11, %1
  %34 = load %struct.qcom_rpm_reg*, %struct.qcom_rpm_reg** %3, align 8
  %35 = getelementptr inbounds %struct.qcom_rpm_reg, %struct.qcom_rpm_reg* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %65

38:                                               ; preds = %33
  %39 = load %struct.qcom_rpm_reg*, %struct.qcom_rpm_reg** %3, align 8
  %40 = getelementptr inbounds %struct.qcom_rpm_reg, %struct.qcom_rpm_reg* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %65

43:                                               ; preds = %38
  %44 = load i32, i32* @RPM_KEY_UV, align 4
  %45 = call i8* @cpu_to_le32(i32 %44)
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [3 x %struct.rpm_regulator_req], [3 x %struct.rpm_regulator_req]* %4, i64 0, i64 %47
  %49 = getelementptr inbounds %struct.rpm_regulator_req, %struct.rpm_regulator_req* %48, i32 0, i32 2
  store i8* %45, i8** %49, align 8
  %50 = call i8* @cpu_to_le32(i32 4)
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [3 x %struct.rpm_regulator_req], [3 x %struct.rpm_regulator_req]* %4, i64 0, i64 %52
  %54 = getelementptr inbounds %struct.rpm_regulator_req, %struct.rpm_regulator_req* %53, i32 0, i32 1
  store i8* %50, i8** %54, align 8
  %55 = load %struct.qcom_rpm_reg*, %struct.qcom_rpm_reg** %3, align 8
  %56 = getelementptr inbounds %struct.qcom_rpm_reg, %struct.qcom_rpm_reg* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @cpu_to_le32(i32 %57)
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [3 x %struct.rpm_regulator_req], [3 x %struct.rpm_regulator_req]* %4, i64 0, i64 %60
  %62 = getelementptr inbounds %struct.rpm_regulator_req, %struct.rpm_regulator_req* %61, i32 0, i32 0
  store i8* %58, i8** %62, align 8
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %43, %38, %33
  %66 = load %struct.qcom_rpm_reg*, %struct.qcom_rpm_reg** %3, align 8
  %67 = getelementptr inbounds %struct.qcom_rpm_reg, %struct.qcom_rpm_reg* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %98

70:                                               ; preds = %65
  %71 = load %struct.qcom_rpm_reg*, %struct.qcom_rpm_reg** %3, align 8
  %72 = getelementptr inbounds %struct.qcom_rpm_reg, %struct.qcom_rpm_reg* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %98

75:                                               ; preds = %70
  %76 = load i32, i32* @RPM_KEY_MA, align 4
  %77 = call i8* @cpu_to_le32(i32 %76)
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [3 x %struct.rpm_regulator_req], [3 x %struct.rpm_regulator_req]* %4, i64 0, i64 %79
  %81 = getelementptr inbounds %struct.rpm_regulator_req, %struct.rpm_regulator_req* %80, i32 0, i32 2
  store i8* %77, i8** %81, align 8
  %82 = call i8* @cpu_to_le32(i32 4)
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [3 x %struct.rpm_regulator_req], [3 x %struct.rpm_regulator_req]* %4, i64 0, i64 %84
  %86 = getelementptr inbounds %struct.rpm_regulator_req, %struct.rpm_regulator_req* %85, i32 0, i32 1
  store i8* %82, i8** %86, align 8
  %87 = load %struct.qcom_rpm_reg*, %struct.qcom_rpm_reg** %3, align 8
  %88 = getelementptr inbounds %struct.qcom_rpm_reg, %struct.qcom_rpm_reg* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = sdiv i32 %89, 1000
  %91 = call i8* @cpu_to_le32(i32 %90)
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [3 x %struct.rpm_regulator_req], [3 x %struct.rpm_regulator_req]* %4, i64 0, i64 %93
  %95 = getelementptr inbounds %struct.rpm_regulator_req, %struct.rpm_regulator_req* %94, i32 0, i32 0
  store i8* %91, i8** %95, align 8
  %96 = load i32, i32* %5, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %75, %70, %65
  %99 = load i32, i32* %5, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %98
  store i32 0, i32* %2, align 4
  br label %130

102:                                              ; preds = %98
  %103 = load %struct.qcom_rpm_reg*, %struct.qcom_rpm_reg** %3, align 8
  %104 = getelementptr inbounds %struct.qcom_rpm_reg, %struct.qcom_rpm_reg* %103, i32 0, i32 8
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @QCOM_SMD_RPM_ACTIVE_STATE, align 4
  %107 = load %struct.qcom_rpm_reg*, %struct.qcom_rpm_reg** %3, align 8
  %108 = getelementptr inbounds %struct.qcom_rpm_reg, %struct.qcom_rpm_reg* %107, i32 0, i32 7
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.qcom_rpm_reg*, %struct.qcom_rpm_reg** %3, align 8
  %111 = getelementptr inbounds %struct.qcom_rpm_reg, %struct.qcom_rpm_reg* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 8
  %113 = getelementptr inbounds [3 x %struct.rpm_regulator_req], [3 x %struct.rpm_regulator_req]* %4, i64 0, i64 0
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = mul i64 24, %115
  %117 = trunc i64 %116 to i32
  %118 = call i32 @qcom_rpm_smd_write(i32 %105, i32 %106, i32 %109, i32 %112, %struct.rpm_regulator_req* %113, i32 %117)
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* %6, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %128, label %121

121:                                              ; preds = %102
  %122 = load %struct.qcom_rpm_reg*, %struct.qcom_rpm_reg** %3, align 8
  %123 = getelementptr inbounds %struct.qcom_rpm_reg, %struct.qcom_rpm_reg* %122, i32 0, i32 5
  store i64 0, i64* %123, align 8
  %124 = load %struct.qcom_rpm_reg*, %struct.qcom_rpm_reg** %3, align 8
  %125 = getelementptr inbounds %struct.qcom_rpm_reg, %struct.qcom_rpm_reg* %124, i32 0, i32 4
  store i64 0, i64* %125, align 8
  %126 = load %struct.qcom_rpm_reg*, %struct.qcom_rpm_reg** %3, align 8
  %127 = getelementptr inbounds %struct.qcom_rpm_reg, %struct.qcom_rpm_reg* %126, i32 0, i32 3
  store i64 0, i64* %127, align 8
  br label %128

128:                                              ; preds = %121, %102
  %129 = load i32, i32* %6, align 4
  store i32 %129, i32* %2, align 4
  br label %130

130:                                              ; preds = %128, %101
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @qcom_rpm_smd_write(i32, i32, i32, i32, %struct.rpm_regulator_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
