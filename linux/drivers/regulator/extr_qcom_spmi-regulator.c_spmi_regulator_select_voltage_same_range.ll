; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom_spmi-regulator.c_spmi_regulator_select_voltage_same_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom_spmi-regulator.c_spmi_regulator_select_voltage_same_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spmi_regulator = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i64 }
%struct.spmi_voltage_range = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spmi_regulator*, i32, i32)* @spmi_regulator_select_voltage_same_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spmi_regulator_select_voltage_same_range(%struct.spmi_regulator* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.spmi_regulator*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.spmi_voltage_range*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.spmi_regulator* %0, %struct.spmi_regulator** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %9, align 4
  %13 = load %struct.spmi_regulator*, %struct.spmi_regulator** %5, align 8
  %14 = call %struct.spmi_voltage_range* @spmi_regulator_find_range(%struct.spmi_regulator* %13)
  store %struct.spmi_voltage_range* %14, %struct.spmi_voltage_range** %8, align 8
  %15 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %8, align 8
  %16 = icmp ne %struct.spmi_voltage_range* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %160

18:                                               ; preds = %3
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %8, align 8
  %21 = getelementptr inbounds %struct.spmi_voltage_range, %struct.spmi_voltage_range* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %18
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %8, align 8
  %27 = getelementptr inbounds %struct.spmi_voltage_range, %struct.spmi_voltage_range* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp sge i32 %25, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %8, align 8
  %32 = getelementptr inbounds %struct.spmi_voltage_range, %struct.spmi_voltage_range* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %30, %24, %18
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %8, align 8
  %37 = getelementptr inbounds %struct.spmi_voltage_range, %struct.spmi_voltage_range* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %8, align 8
  %43 = getelementptr inbounds %struct.spmi_voltage_range, %struct.spmi_voltage_range* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp sgt i32 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40, %34
  br label %160

47:                                               ; preds = %40
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %8, align 8
  %50 = getelementptr inbounds %struct.spmi_voltage_range, %struct.spmi_voltage_range* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %48, %51
  %53 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %8, align 8
  %54 = getelementptr inbounds %struct.spmi_voltage_range, %struct.spmi_voltage_range* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @DIV_ROUND_UP(i32 %52, i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %8, align 8
  %59 = getelementptr inbounds %struct.spmi_voltage_range, %struct.spmi_voltage_range* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = mul nsw i32 %57, %60
  %62 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %8, align 8
  %63 = getelementptr inbounds %struct.spmi_voltage_range, %struct.spmi_voltage_range* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %61, %64
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %47
  br label %160

70:                                               ; preds = %47
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %71

71:                                               ; preds = %146, %70
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.spmi_regulator*, %struct.spmi_regulator** %5, align 8
  %74 = getelementptr inbounds %struct.spmi_regulator, %struct.spmi_regulator* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %72, %77
  br i1 %78, label %79, label %149

79:                                               ; preds = %71
  %80 = load i32, i32* %9, align 4
  %81 = load %struct.spmi_regulator*, %struct.spmi_regulator** %5, align 8
  %82 = getelementptr inbounds %struct.spmi_regulator, %struct.spmi_regulator* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp sge i32 %80, %90
  br i1 %91, label %92, label %131

92:                                               ; preds = %79
  %93 = load i32, i32* %9, align 4
  %94 = load %struct.spmi_regulator*, %struct.spmi_regulator** %5, align 8
  %95 = getelementptr inbounds %struct.spmi_regulator, %struct.spmi_regulator* %94, i32 0, i32 0
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp sle i32 %93, %103
  br i1 %104, label %105, label %131

105:                                              ; preds = %92
  %106 = load i32, i32* %9, align 4
  %107 = load %struct.spmi_regulator*, %struct.spmi_regulator** %5, align 8
  %108 = getelementptr inbounds %struct.spmi_regulator, %struct.spmi_regulator* %107, i32 0, i32 0
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 2
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %110, align 8
  %112 = load i32, i32* %10, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = sub nsw i32 %106, %116
  %118 = load %struct.spmi_regulator*, %struct.spmi_regulator** %5, align 8
  %119 = getelementptr inbounds %struct.spmi_regulator, %struct.spmi_regulator* %118, i32 0, i32 0
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 2
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %121, align 8
  %123 = load i32, i32* %10, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = sdiv i32 %117, %127
  %129 = load i32, i32* %11, align 4
  %130 = add nsw i32 %129, %128
  store i32 %130, i32* %11, align 4
  br label %149

131:                                              ; preds = %92, %79
  %132 = load %struct.spmi_regulator*, %struct.spmi_regulator** %5, align 8
  %133 = getelementptr inbounds %struct.spmi_regulator, %struct.spmi_regulator* %132, i32 0, i32 0
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 2
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %135, align 8
  %137 = load i32, i32* %10, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 3
  %141 = load i64, i64* %140, align 8
  %142 = load i32, i32* %11, align 4
  %143 = sext i32 %142 to i64
  %144 = add nsw i64 %143, %141
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* %11, align 4
  br label %146

146:                                              ; preds = %131
  %147 = load i32, i32* %10, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %10, align 4
  br label %71

149:                                              ; preds = %105, %71
  %150 = load i32, i32* %11, align 4
  %151 = load %struct.spmi_regulator*, %struct.spmi_regulator** %5, align 8
  %152 = getelementptr inbounds %struct.spmi_regulator, %struct.spmi_regulator* %151, i32 0, i32 0
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = icmp sge i32 %150, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %149
  br label %160

158:                                              ; preds = %149
  %159 = load i32, i32* %11, align 4
  store i32 %159, i32* %4, align 4
  br label %165

160:                                              ; preds = %157, %69, %46, %17
  %161 = load %struct.spmi_regulator*, %struct.spmi_regulator** %5, align 8
  %162 = load i32, i32* %6, align 4
  %163 = load i32, i32* %7, align 4
  %164 = call i32 @spmi_regulator_select_voltage(%struct.spmi_regulator* %161, i32 %162, i32 %163)
  store i32 %164, i32* %4, align 4
  br label %165

165:                                              ; preds = %160, %158
  %166 = load i32, i32* %4, align 4
  ret i32 %166
}

declare dso_local %struct.spmi_voltage_range* @spmi_regulator_find_range(%struct.spmi_regulator*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @spmi_regulator_select_voltage(%struct.spmi_regulator*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
