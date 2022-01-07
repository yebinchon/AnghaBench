; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_wcnss_iris.c_qcom_iris_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_wcnss_iris.c_qcom_iris_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.iris_data = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i64, i32, i32 }
%struct.qcom_wcnss = type { i32 }
%struct.qcom_iris = type { i32, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"xo\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to acquire xo clk\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"failed to get regulators\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @qcom_iris_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_iris_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.iris_data*, align 8
  %5 = alloca %struct.qcom_wcnss*, align 8
  %6 = alloca %struct.qcom_iris*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.qcom_iris* @devm_kzalloc(%struct.TYPE_11__* %10, i32 24, i32 %11)
  store %struct.qcom_iris* %12, %struct.qcom_iris** %6, align 8
  %13 = load %struct.qcom_iris*, %struct.qcom_iris** %6, align 8
  %14 = icmp ne %struct.qcom_iris* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %201

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = call %struct.iris_data* @of_device_get_match_data(%struct.TYPE_11__* %20)
  store %struct.iris_data* %21, %struct.iris_data** %4, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.qcom_wcnss* @dev_get_drvdata(i32 %25)
  store %struct.qcom_wcnss* %26, %struct.qcom_wcnss** %5, align 8
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = call i32 @devm_clk_get(%struct.TYPE_11__* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.qcom_iris*, %struct.qcom_iris** %6, align 8
  %31 = getelementptr inbounds %struct.qcom_iris, %struct.qcom_iris* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load %struct.qcom_iris*, %struct.qcom_iris** %6, align 8
  %33 = getelementptr inbounds %struct.qcom_iris, %struct.qcom_iris* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @IS_ERR(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %18
  %38 = load %struct.qcom_iris*, %struct.qcom_iris** %6, align 8
  %39 = getelementptr inbounds %struct.qcom_iris, %struct.qcom_iris* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @PTR_ERR(i32 %40)
  %42 = load i32, i32* @EPROBE_DEFER, align 4
  %43 = sub nsw i32 0, %42
  %44 = icmp ne i32 %41, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %37
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = call i32 @dev_err(%struct.TYPE_11__* %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %45, %37
  %50 = load %struct.qcom_iris*, %struct.qcom_iris** %6, align 8
  %51 = getelementptr inbounds %struct.qcom_iris, %struct.qcom_iris* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @PTR_ERR(i32 %52)
  store i32 %53, i32* %2, align 4
  br label %201

54:                                               ; preds = %18
  %55 = load %struct.iris_data*, %struct.iris_data** %4, align 8
  %56 = getelementptr inbounds %struct.iris_data, %struct.iris_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.qcom_iris*, %struct.qcom_iris** %6, align 8
  %59 = getelementptr inbounds %struct.qcom_iris, %struct.qcom_iris* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = load %struct.qcom_iris*, %struct.qcom_iris** %6, align 8
  %63 = getelementptr inbounds %struct.qcom_iris, %struct.qcom_iris* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @GFP_KERNEL, align 4
  %66 = call %struct.TYPE_12__* @devm_kcalloc(%struct.TYPE_11__* %61, i32 %64, i32 4, i32 %65)
  %67 = load %struct.qcom_iris*, %struct.qcom_iris** %6, align 8
  %68 = getelementptr inbounds %struct.qcom_iris, %struct.qcom_iris* %67, i32 0, i32 1
  store %struct.TYPE_12__* %66, %struct.TYPE_12__** %68, align 8
  %69 = load %struct.qcom_iris*, %struct.qcom_iris** %6, align 8
  %70 = getelementptr inbounds %struct.qcom_iris, %struct.qcom_iris* %69, i32 0, i32 1
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %70, align 8
  %72 = icmp ne %struct.TYPE_12__* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %54
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %201

76:                                               ; preds = %54
  store i32 0, i32* %8, align 4
  br label %77

77:                                               ; preds = %99, %76
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.qcom_iris*, %struct.qcom_iris** %6, align 8
  %80 = getelementptr inbounds %struct.qcom_iris, %struct.qcom_iris* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %102

83:                                               ; preds = %77
  %84 = load %struct.iris_data*, %struct.iris_data** %4, align 8
  %85 = getelementptr inbounds %struct.iris_data, %struct.iris_data* %84, i32 0, i32 2
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.qcom_iris*, %struct.qcom_iris** %6, align 8
  %93 = getelementptr inbounds %struct.qcom_iris, %struct.qcom_iris* %92, i32 0, i32 1
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 1
  store i32 %91, i32* %98, align 4
  br label %99

99:                                               ; preds = %83
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %8, align 4
  br label %77

102:                                              ; preds = %77
  %103 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %104 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %103, i32 0, i32 0
  %105 = load %struct.qcom_iris*, %struct.qcom_iris** %6, align 8
  %106 = getelementptr inbounds %struct.qcom_iris, %struct.qcom_iris* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.qcom_iris*, %struct.qcom_iris** %6, align 8
  %109 = getelementptr inbounds %struct.qcom_iris, %struct.qcom_iris* %108, i32 0, i32 1
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %109, align 8
  %111 = call i32 @devm_regulator_bulk_get(%struct.TYPE_11__* %104, i32 %107, %struct.TYPE_12__* %110)
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* %7, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %102
  %115 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %116 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %115, i32 0, i32 0
  %117 = call i32 @dev_err(%struct.TYPE_11__* %116, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %118 = load i32, i32* %7, align 4
  store i32 %118, i32* %2, align 4
  br label %201

119:                                              ; preds = %102
  store i32 0, i32* %8, align 4
  br label %120

120:                                              ; preds = %191, %119
  %121 = load i32, i32* %8, align 4
  %122 = load %struct.qcom_iris*, %struct.qcom_iris** %6, align 8
  %123 = getelementptr inbounds %struct.qcom_iris, %struct.qcom_iris* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp slt i32 %121, %124
  br i1 %125, label %126, label %194

126:                                              ; preds = %120
  %127 = load %struct.iris_data*, %struct.iris_data** %4, align 8
  %128 = getelementptr inbounds %struct.iris_data, %struct.iris_data* %127, i32 0, i32 2
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %128, align 8
  %130 = load i32, i32* %8, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %162

136:                                              ; preds = %126
  %137 = load %struct.qcom_iris*, %struct.qcom_iris** %6, align 8
  %138 = getelementptr inbounds %struct.qcom_iris, %struct.qcom_iris* %137, i32 0, i32 1
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %138, align 8
  %140 = load i32, i32* %8, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.iris_data*, %struct.iris_data** %4, align 8
  %146 = getelementptr inbounds %struct.iris_data, %struct.iris_data* %145, i32 0, i32 2
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %146, align 8
  %148 = load i32, i32* %8, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.iris_data*, %struct.iris_data** %4, align 8
  %154 = getelementptr inbounds %struct.iris_data, %struct.iris_data* %153, i32 0, i32 2
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %154, align 8
  %156 = load i32, i32* %8, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = call i32 @regulator_set_voltage(i32 %144, i32 %152, i64 %160)
  br label %162

162:                                              ; preds = %136, %126
  %163 = load %struct.iris_data*, %struct.iris_data** %4, align 8
  %164 = getelementptr inbounds %struct.iris_data, %struct.iris_data* %163, i32 0, i32 2
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %164, align 8
  %166 = load i32, i32* %8, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %190

172:                                              ; preds = %162
  %173 = load %struct.qcom_iris*, %struct.qcom_iris** %6, align 8
  %174 = getelementptr inbounds %struct.qcom_iris, %struct.qcom_iris* %173, i32 0, i32 1
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %174, align 8
  %176 = load i32, i32* %8, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.iris_data*, %struct.iris_data** %4, align 8
  %182 = getelementptr inbounds %struct.iris_data, %struct.iris_data* %181, i32 0, i32 2
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %182, align 8
  %184 = load i32, i32* %8, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = call i32 @regulator_set_load(i32 %180, i64 %188)
  br label %190

190:                                              ; preds = %172, %162
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %8, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %8, align 4
  br label %120

194:                                              ; preds = %120
  %195 = load %struct.qcom_wcnss*, %struct.qcom_wcnss** %5, align 8
  %196 = load %struct.qcom_iris*, %struct.qcom_iris** %6, align 8
  %197 = load %struct.iris_data*, %struct.iris_data** %4, align 8
  %198 = getelementptr inbounds %struct.iris_data, %struct.iris_data* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @qcom_wcnss_assign_iris(%struct.qcom_wcnss* %195, %struct.qcom_iris* %196, i32 %199)
  store i32 0, i32* %2, align 4
  br label %201

201:                                              ; preds = %194, %114, %73, %49, %15
  %202 = load i32, i32* %2, align 4
  ret i32 %202
}

declare dso_local %struct.qcom_iris* @devm_kzalloc(%struct.TYPE_11__*, i32, i32) #1

declare dso_local %struct.iris_data* @of_device_get_match_data(%struct.TYPE_11__*) #1

declare dso_local %struct.qcom_wcnss* @dev_get_drvdata(i32) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_11__*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*) #1

declare dso_local %struct.TYPE_12__* @devm_kcalloc(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @devm_regulator_bulk_get(%struct.TYPE_11__*, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @regulator_set_voltage(i32, i32, i64) #1

declare dso_local i32 @regulator_set_load(i32, i64) #1

declare dso_local i32 @qcom_wcnss_assign_iris(%struct.qcom_wcnss*, %struct.qcom_iris*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
