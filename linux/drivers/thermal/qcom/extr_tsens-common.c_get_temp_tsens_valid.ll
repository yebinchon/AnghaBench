; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/qcom/extr_tsens-common.c_get_temp_tsens_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/qcom/extr_tsens-common.c_get_temp_tsens_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsens_priv = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32*, %struct.tsens_sensor* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.tsens_sensor = type { i64 }

@LAST_TEMP_0 = common dso_local global i64 0, align 8
@VALID_0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_temp_tsens_valid(%struct.tsens_priv* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tsens_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.tsens_sensor*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.tsens_priv* %0, %struct.tsens_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %15 = load %struct.tsens_priv*, %struct.tsens_priv** %5, align 8
  %16 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %15, i32 0, i32 3
  %17 = load %struct.tsens_sensor*, %struct.tsens_sensor** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.tsens_sensor, %struct.tsens_sensor* %17, i64 %19
  store %struct.tsens_sensor* %20, %struct.tsens_sensor** %8, align 8
  %21 = load i64, i64* @LAST_TEMP_0, align 8
  %22 = load %struct.tsens_sensor*, %struct.tsens_sensor** %8, align 8
  %23 = getelementptr inbounds %struct.tsens_sensor, %struct.tsens_sensor* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add i64 %21, %24
  store i64 %25, i64* %9, align 8
  %26 = load i64, i64* @VALID_0, align 8
  %27 = load %struct.tsens_sensor*, %struct.tsens_sensor** %8, align 8
  %28 = getelementptr inbounds %struct.tsens_sensor, %struct.tsens_sensor* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add i64 %26, %29
  store i64 %30, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %31 = load %struct.tsens_priv*, %struct.tsens_priv** %5, align 8
  %32 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = load i64, i64* %10, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @regmap_field_read(i32 %36, i64* %12)
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %3
  %41 = load i32, i32* %14, align 4
  store i32 %41, i32* %4, align 4
  br label %110

42:                                               ; preds = %3
  br label %43

43:                                               ; preds = %60, %42
  %44 = load i64, i64* %12, align 8
  %45 = icmp ne i64 %44, 0
  %46 = xor i1 %45, true
  br i1 %46, label %47, label %61

47:                                               ; preds = %43
  %48 = call i32 @ndelay(i32 400)
  %49 = load %struct.tsens_priv*, %struct.tsens_priv** %5, align 8
  %50 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* %10, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @regmap_field_read(i32 %54, i64* %12)
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %47
  %59 = load i32, i32* %14, align 4
  store i32 %59, i32* %4, align 4
  br label %110

60:                                               ; preds = %47
  br label %43

61:                                               ; preds = %43
  %62 = load %struct.tsens_priv*, %struct.tsens_priv** %5, align 8
  %63 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* %9, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @regmap_field_read(i32 %67, i64* %11)
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %61
  %72 = load i32, i32* %14, align 4
  store i32 %72, i32* %4, align 4
  br label %110

73:                                               ; preds = %61
  %74 = load %struct.tsens_priv*, %struct.tsens_priv** %5, align 8
  %75 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %74, i32 0, i32 1
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %73
  %81 = load i64, i64* %11, align 8
  %82 = load %struct.tsens_sensor*, %struct.tsens_sensor** %8, align 8
  %83 = call i32 @code_to_degc(i64 %81, %struct.tsens_sensor* %82)
  %84 = mul nsw i32 %83, 1000
  %85 = load i32*, i32** %7, align 8
  store i32 %84, i32* %85, align 4
  br label %109

86:                                               ; preds = %73
  %87 = load %struct.tsens_priv*, %struct.tsens_priv** %5, align 8
  %88 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %87, i32 0, i32 0
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = load i64, i64* @LAST_TEMP_0, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.tsens_priv*, %struct.tsens_priv** %5, align 8
  %95 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %94, i32 0, i32 0
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = load i64, i64* @LAST_TEMP_0, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @GENMASK(i32 %93, i32 %100)
  store i64 %101, i64* %13, align 8
  %102 = load i64, i64* %11, align 8
  %103 = load i64, i64* %13, align 8
  %104 = call i64 @fls(i64 %103)
  %105 = sub nsw i64 %104, 1
  %106 = call i32 @sign_extend32(i64 %102, i64 %105)
  %107 = mul nsw i32 %106, 100
  %108 = load i32*, i32** %7, align 8
  store i32 %107, i32* %108, align 4
  br label %109

109:                                              ; preds = %86, %80
  store i32 0, i32* %4, align 4
  br label %110

110:                                              ; preds = %109, %71, %58, %40
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i32 @regmap_field_read(i32, i64*) #1

declare dso_local i32 @ndelay(i32) #1

declare dso_local i32 @code_to_degc(i64, %struct.tsens_sensor*) #1

declare dso_local i64 @GENMASK(i32, i32) #1

declare dso_local i32 @sign_extend32(i64, i64) #1

declare dso_local i64 @fls(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
