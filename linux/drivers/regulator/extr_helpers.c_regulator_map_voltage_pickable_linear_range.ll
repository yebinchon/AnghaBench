; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_helpers.c_regulator_map_voltage_pickable_linear_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_helpers.c_regulator_map_voltage_pickable_linear_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__*, %struct.regulator_linear_range* }
%struct.TYPE_3__ = type { i32 (%struct.regulator_dev*, i32)* }
%struct.regulator_linear_range = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regulator_map_voltage_pickable_linear_range(%struct.regulator_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.regulator_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.regulator_linear_range*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %16 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %17 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %3
  %23 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %24 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %168

34:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %35

35:                                               ; preds = %152, %34
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %38 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %36, %41
  br i1 %42, label %43, label %155

43:                                               ; preds = %35
  %44 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %45 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  %48 = load %struct.regulator_linear_range*, %struct.regulator_linear_range** %47, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.regulator_linear_range, %struct.regulator_linear_range* %48, i64 %50
  store %struct.regulator_linear_range* %51, %struct.regulator_linear_range** %8, align 8
  %52 = load %struct.regulator_linear_range*, %struct.regulator_linear_range** %8, align 8
  %53 = getelementptr inbounds %struct.regulator_linear_range, %struct.regulator_linear_range* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.regulator_linear_range*, %struct.regulator_linear_range** %8, align 8
  %56 = getelementptr inbounds %struct.regulator_linear_range, %struct.regulator_linear_range* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.regulator_linear_range*, %struct.regulator_linear_range** %8, align 8
  %59 = getelementptr inbounds %struct.regulator_linear_range, %struct.regulator_linear_range* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %57, %60
  %62 = load %struct.regulator_linear_range*, %struct.regulator_linear_range** %8, align 8
  %63 = getelementptr inbounds %struct.regulator_linear_range, %struct.regulator_linear_range* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = mul nsw i32 %61, %64
  %66 = add nsw i32 %54, %65
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp sle i32 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %43
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.regulator_linear_range*, %struct.regulator_linear_range** %8, align 8
  %73 = getelementptr inbounds %struct.regulator_linear_range, %struct.regulator_linear_range* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp sge i32 %71, %74
  br i1 %75, label %87, label %76

76:                                               ; preds = %70, %43
  %77 = load %struct.regulator_linear_range*, %struct.regulator_linear_range** %8, align 8
  %78 = getelementptr inbounds %struct.regulator_linear_range, %struct.regulator_linear_range* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.regulator_linear_range*, %struct.regulator_linear_range** %8, align 8
  %81 = getelementptr inbounds %struct.regulator_linear_range, %struct.regulator_linear_range* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = sub nsw i32 %79, %82
  %84 = add nsw i32 %83, 1
  %85 = load i32, i32* %12, align 4
  %86 = add i32 %85, %84
  store i32 %86, i32* %12, align 4
  br label %152

87:                                               ; preds = %70
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.regulator_linear_range*, %struct.regulator_linear_range** %8, align 8
  %90 = getelementptr inbounds %struct.regulator_linear_range, %struct.regulator_linear_range* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp sle i32 %88, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %87
  %94 = load %struct.regulator_linear_range*, %struct.regulator_linear_range** %8, align 8
  %95 = getelementptr inbounds %struct.regulator_linear_range, %struct.regulator_linear_range* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %6, align 4
  br label %97

97:                                               ; preds = %93, %87
  %98 = load %struct.regulator_linear_range*, %struct.regulator_linear_range** %8, align 8
  %99 = getelementptr inbounds %struct.regulator_linear_range, %struct.regulator_linear_range* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  store i32 0, i32* %9, align 4
  br label %118

103:                                              ; preds = %97
  %104 = load i32, i32* %6, align 4
  %105 = load %struct.regulator_linear_range*, %struct.regulator_linear_range** %8, align 8
  %106 = getelementptr inbounds %struct.regulator_linear_range, %struct.regulator_linear_range* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = sub nsw i32 %104, %107
  %109 = load %struct.regulator_linear_range*, %struct.regulator_linear_range** %8, align 8
  %110 = getelementptr inbounds %struct.regulator_linear_range, %struct.regulator_linear_range* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @DIV_ROUND_UP(i32 %108, i32 %111)
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %9, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %103
  %116 = load i32, i32* %9, align 4
  store i32 %116, i32* %4, align 4
  br label %168

117:                                              ; preds = %103
  br label %118

118:                                              ; preds = %117, %102
  %119 = load i32, i32* %12, align 4
  %120 = load i32, i32* %9, align 4
  %121 = add i32 %120, %119
  store i32 %121, i32* %9, align 4
  %122 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %123 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %122, i32 0, i32 0
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i32 (%struct.regulator_dev*, i32)*, i32 (%struct.regulator_dev*, i32)** %127, align 8
  %129 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %130 = load i32, i32* %9, align 4
  %131 = call i32 %128(%struct.regulator_dev* %129, i32 %130)
  store i32 %131, i32* %10, align 4
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* %6, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %139, label %135

135:                                              ; preds = %118
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* %7, align 4
  %138 = icmp sgt i32 %136, %137
  br i1 %138, label %139, label %150

139:                                              ; preds = %135, %118
  %140 = load %struct.regulator_linear_range*, %struct.regulator_linear_range** %8, align 8
  %141 = getelementptr inbounds %struct.regulator_linear_range, %struct.regulator_linear_range* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.regulator_linear_range*, %struct.regulator_linear_range** %8, align 8
  %144 = getelementptr inbounds %struct.regulator_linear_range, %struct.regulator_linear_range* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = sub nsw i32 %142, %145
  %147 = add nsw i32 %146, 1
  %148 = load i32, i32* %12, align 4
  %149 = add i32 %148, %147
  store i32 %149, i32* %12, align 4
  br label %151

150:                                              ; preds = %135
  br label %155

151:                                              ; preds = %139
  br label %152

152:                                              ; preds = %151, %76
  %153 = load i32, i32* %11, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %11, align 4
  br label %35

155:                                              ; preds = %150, %35
  %156 = load i32, i32* %11, align 4
  %157 = load %struct.regulator_dev*, %struct.regulator_dev** %5, align 8
  %158 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %157, i32 0, i32 0
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = icmp eq i32 %156, %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %155
  %164 = load i32, i32* @EINVAL, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %4, align 4
  br label %168

166:                                              ; preds = %155
  %167 = load i32, i32* %9, align 4
  store i32 %167, i32* %4, align 4
  br label %168

168:                                              ; preds = %166, %163, %115, %22
  %169 = load i32, i32* %4, align 4
  ret i32 %169
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
