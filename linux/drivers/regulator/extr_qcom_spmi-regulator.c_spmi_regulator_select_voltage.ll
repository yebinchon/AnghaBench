; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom_spmi-regulator.c_spmi_regulator_select_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom_spmi-regulator.c_spmi_regulator_select_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spmi_regulator = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, %struct.spmi_voltage_range* }
%struct.spmi_voltage_range = type { i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [51 x i8] c"request v=[%d, %d] is outside possible v=[%d, %d]\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"request v=[%d, %d] cannot be met by any set point; next set point: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spmi_regulator*, i32, i32)* @spmi_regulator_select_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spmi_regulator_select_voltage(%struct.spmi_regulator* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.spmi_regulator*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.spmi_voltage_range*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.spmi_regulator* %0, %struct.spmi_regulator** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %9, align 4
  %18 = load %struct.spmi_regulator*, %struct.spmi_regulator** %5, align 8
  %19 = getelementptr inbounds %struct.spmi_regulator, %struct.spmi_regulator* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %21, align 8
  %23 = getelementptr inbounds %struct.spmi_voltage_range, %struct.spmi_voltage_range* %22, i64 0
  %24 = getelementptr inbounds %struct.spmi_voltage_range, %struct.spmi_voltage_range* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %10, align 4
  %26 = load %struct.spmi_regulator*, %struct.spmi_regulator** %5, align 8
  %27 = getelementptr inbounds %struct.spmi_regulator, %struct.spmi_regulator* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %29, align 8
  %31 = load %struct.spmi_regulator*, %struct.spmi_regulator** %5, align 8
  %32 = getelementptr inbounds %struct.spmi_regulator, %struct.spmi_regulator* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.spmi_voltage_range, %struct.spmi_voltage_range* %30, i64 %37
  %39 = getelementptr inbounds %struct.spmi_voltage_range, %struct.spmi_voltage_range* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %3
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp sge i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %48, %44, %3
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %54, %50
  %59 = load %struct.spmi_regulator*, %struct.spmi_regulator** %5, align 8
  %60 = getelementptr inbounds %struct.spmi_regulator, %struct.spmi_regulator* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %11, align 4
  %66 = call i32 (i32, i8*, i32, i32, i32, ...) @dev_err(i32 %61, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %63, i32 %64, i32 %65)
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %179

69:                                               ; preds = %54
  %70 = load %struct.spmi_regulator*, %struct.spmi_regulator** %5, align 8
  %71 = getelementptr inbounds %struct.spmi_regulator, %struct.spmi_regulator* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sub nsw i32 %74, 1
  store i32 %75, i32* %12, align 4
  br label %76

76:                                               ; preds = %99, %69
  %77 = load i32, i32* %12, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %102

79:                                               ; preds = %76
  %80 = load %struct.spmi_regulator*, %struct.spmi_regulator** %5, align 8
  %81 = getelementptr inbounds %struct.spmi_regulator, %struct.spmi_regulator* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %83, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sub nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.spmi_voltage_range, %struct.spmi_voltage_range* %84, i64 %87
  %89 = getelementptr inbounds %struct.spmi_voltage_range, %struct.spmi_voltage_range* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %14, align 4
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* %14, align 4
  %93 = icmp sgt i32 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %79
  %95 = load i32, i32* %14, align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  br label %102

98:                                               ; preds = %94, %79
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %12, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %12, align 4
  br label %76

102:                                              ; preds = %97, %76
  %103 = load i32, i32* %12, align 4
  store i32 %103, i32* %13, align 4
  %104 = load %struct.spmi_regulator*, %struct.spmi_regulator** %5, align 8
  %105 = getelementptr inbounds %struct.spmi_regulator, %struct.spmi_regulator* %104, i32 0, i32 0
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %107, align 8
  %109 = load i32, i32* %13, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.spmi_voltage_range, %struct.spmi_voltage_range* %108, i64 %110
  store %struct.spmi_voltage_range* %111, %struct.spmi_voltage_range** %8, align 8
  %112 = load i32, i32* %9, align 4
  %113 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %8, align 8
  %114 = getelementptr inbounds %struct.spmi_voltage_range, %struct.spmi_voltage_range* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = sub nsw i32 %112, %115
  %117 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %8, align 8
  %118 = getelementptr inbounds %struct.spmi_voltage_range, %struct.spmi_voltage_range* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @DIV_ROUND_UP(i32 %116, i32 %119)
  store i32 %120, i32* %16, align 4
  %121 = load i32, i32* %16, align 4
  %122 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %8, align 8
  %123 = getelementptr inbounds %struct.spmi_voltage_range, %struct.spmi_voltage_range* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = mul nsw i32 %121, %124
  %126 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %8, align 8
  %127 = getelementptr inbounds %struct.spmi_voltage_range, %struct.spmi_voltage_range* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = add nsw i32 %125, %128
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* %7, align 4
  %132 = icmp sgt i32 %130, %131
  br i1 %132, label %133, label %143

133:                                              ; preds = %102
  %134 = load %struct.spmi_regulator*, %struct.spmi_regulator** %5, align 8
  %135 = getelementptr inbounds %struct.spmi_regulator, %struct.spmi_regulator* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* %7, align 4
  %139 = load i32, i32* %9, align 4
  %140 = call i32 (i32, i8*, i32, i32, i32, ...) @dev_err(i32 %136, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 %137, i32 %138, i32 %139)
  %141 = load i32, i32* @EINVAL, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %4, align 4
  br label %179

143:                                              ; preds = %102
  store i32 0, i32* %15, align 4
  store i32 0, i32* %12, align 4
  br label %144

144:                                              ; preds = %163, %143
  %145 = load i32, i32* %12, align 4
  %146 = load i32, i32* %13, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %166

148:                                              ; preds = %144
  %149 = load %struct.spmi_regulator*, %struct.spmi_regulator** %5, align 8
  %150 = getelementptr inbounds %struct.spmi_regulator, %struct.spmi_regulator* %149, i32 0, i32 0
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 1
  %153 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %152, align 8
  %154 = load i32, i32* %12, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.spmi_voltage_range, %struct.spmi_voltage_range* %153, i64 %155
  %157 = getelementptr inbounds %struct.spmi_voltage_range, %struct.spmi_voltage_range* %156, i32 0, i32 4
  %158 = load i64, i64* %157, align 8
  %159 = load i32, i32* %15, align 4
  %160 = sext i32 %159 to i64
  %161 = add nsw i64 %160, %158
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %15, align 4
  br label %163

163:                                              ; preds = %148
  %164 = load i32, i32* %12, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %12, align 4
  br label %144

166:                                              ; preds = %144
  %167 = load i32, i32* %9, align 4
  %168 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %8, align 8
  %169 = getelementptr inbounds %struct.spmi_voltage_range, %struct.spmi_voltage_range* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = sub nsw i32 %167, %170
  %172 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %8, align 8
  %173 = getelementptr inbounds %struct.spmi_voltage_range, %struct.spmi_voltage_range* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = sdiv i32 %171, %174
  %176 = load i32, i32* %15, align 4
  %177 = add nsw i32 %176, %175
  store i32 %177, i32* %15, align 4
  %178 = load i32, i32* %15, align 4
  store i32 %178, i32* %4, align 4
  br label %179

179:                                              ; preds = %166, %133, %58
  %180 = load i32, i32* %4, align 4
  ret i32 %180
}

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
