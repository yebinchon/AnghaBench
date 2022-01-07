; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_helpers.c_regulator_set_voltage_sel_pickable_regmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_helpers.c_regulator_set_voltage_sel_pickable_regmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32*, i64, i64, i32, i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regulator_set_voltage_sel_pickable_regmap(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %49, %2
  %11 = load i32, i32* %8, align 4
  %12 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %13 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %11, %16
  br i1 %17, label %18, label %52

18:                                               ; preds = %10
  %19 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %20 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %30 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %28, %38
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %18
  br label %52

45:                                               ; preds = %18
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %5, align 4
  %48 = sub i32 %47, %46
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %10

52:                                               ; preds = %44, %10
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %55 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %53, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %199

63:                                               ; preds = %52
  %64 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %65 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ffs(i32 %68)
  %70 = sub nsw i32 %69, 1
  %71 = load i32, i32* %5, align 4
  %72 = shl i32 %71, %70
  store i32 %72, i32* %5, align 4
  %73 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %74 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 8
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %5, align 4
  %84 = add i32 %83, %82
  store i32 %84, i32* %5, align 4
  %85 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %86 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %6, align 4
  %94 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %95 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %94, i32 0, i32 0
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %100 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %99, i32 0, i32 0
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = icmp eq i64 %98, %103
  br i1 %104, label %105, label %129

105:                                              ; preds = %63
  %106 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %107 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %110 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %109, i32 0, i32 0
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %115 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %114, i32 0, i32 0
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %120 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %119, i32 0, i32 0
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %118, %123
  %125 = load i32, i32* %5, align 4
  %126 = load i32, i32* %6, align 4
  %127 = or i32 %125, %126
  %128 = call i32 @regmap_update_bits(i32 %108, i64 %113, i32 %124, i32 %127)
  store i32 %128, i32* %7, align 4
  br label %165

129:                                              ; preds = %63
  %130 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %131 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %134 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %133, i32 0, i32 0
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 4
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %139 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %138, i32 0, i32 0
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* %6, align 4
  %144 = call i32 @regmap_update_bits(i32 %132, i64 %137, i32 %142, i32 %143)
  store i32 %144, i32* %7, align 4
  %145 = load i32, i32* %7, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %129
  %148 = load i32, i32* %7, align 4
  store i32 %148, i32* %3, align 4
  br label %199

149:                                              ; preds = %129
  %150 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %151 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %154 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %153, i32 0, i32 0
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 3
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %159 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %158, i32 0, i32 0
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %5, align 4
  %164 = call i32 @regmap_update_bits(i32 %152, i64 %157, i32 %162, i32 %163)
  store i32 %164, i32* %7, align 4
  br label %165

165:                                              ; preds = %149, %105
  %166 = load i32, i32* %7, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %165
  %169 = load i32, i32* %7, align 4
  store i32 %169, i32* %3, align 4
  br label %199

170:                                              ; preds = %165
  %171 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %172 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %171, i32 0, i32 0
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 6
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %197

177:                                              ; preds = %170
  %178 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %179 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %182 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %181, i32 0, i32 0
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 7
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %187 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %186, i32 0, i32 0
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 6
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %192 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %191, i32 0, i32 0
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 6
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @regmap_update_bits(i32 %180, i64 %185, i32 %190, i32 %195)
  store i32 %196, i32* %7, align 4
  br label %197

197:                                              ; preds = %177, %170
  %198 = load i32, i32* %7, align 4
  store i32 %198, i32* %3, align 4
  br label %199

199:                                              ; preds = %197, %168, %147, %60
  %200 = load i32, i32* %3, align 4
  ret i32 %200
}

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
