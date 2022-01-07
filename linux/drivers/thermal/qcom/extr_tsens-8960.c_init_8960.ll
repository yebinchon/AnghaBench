; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/qcom/extr_tsens-8960.c_init_8960.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/qcom/extr_tsens-8960.c_init_8960.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsens_priv = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@ENODEV = common dso_local global i32 0, align 4
@S0_STATUS_ADDR = common dso_local global i64 0, align 8
@SW_RST = common dso_local global i32 0, align 4
@CNTL_ADDR = common dso_local global i32 0, align 4
@SLP_CLK_ENA = common dso_local global i32 0, align 4
@MEASURE_PERIOD = common dso_local global i32 0, align 4
@CONFIG_ADDR = common dso_local global i32 0, align 4
@CONFIG_MASK = common dso_local global i32 0, align 4
@CONFIG = common dso_local global i32 0, align 4
@SLP_CLK_ENA_8660 = common dso_local global i32 0, align 4
@CONFIG_MASK_8660 = common dso_local global i32 0, align 4
@CONFIG_8660 = common dso_local global i32 0, align 4
@CONFIG_SHIFT_8660 = common dso_local global i32 0, align 4
@SENSOR0_SHIFT = common dso_local global i32 0, align 4
@EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tsens_priv*)* @init_8960 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_8960(%struct.tsens_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tsens_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tsens_priv* %0, %struct.tsens_priv** %3, align 8
  %7 = load %struct.tsens_priv*, %struct.tsens_priv** %3, align 8
  %8 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @dev_get_regmap(i32 %9, i32* null)
  %11 = load %struct.tsens_priv*, %struct.tsens_priv** %3, align 8
  %12 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load %struct.tsens_priv*, %struct.tsens_priv** %3, align 8
  %14 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %143

20:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %53, %20
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.tsens_priv*, %struct.tsens_priv** %3, align 8
  %24 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %56

27:                                               ; preds = %21
  %28 = load i32, i32* %5, align 4
  %29 = icmp sge i32 %28, 5
  br i1 %29, label %30, label %40

30:                                               ; preds = %27
  %31 = load i64, i64* @S0_STATUS_ADDR, align 8
  %32 = add nsw i64 %31, 40
  %33 = load %struct.tsens_priv*, %struct.tsens_priv** %3, align 8
  %34 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i64 %32, i64* %39, align 8
  br label %40

40:                                               ; preds = %30, %27
  %41 = load i32, i32* %5, align 4
  %42 = mul nsw i32 %41, 4
  %43 = sext i32 %42 to i64
  %44 = load %struct.tsens_priv*, %struct.tsens_priv** %3, align 8
  %45 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, %43
  store i64 %52, i64* %50, align 8
  br label %53

53:                                               ; preds = %40
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %21

56:                                               ; preds = %21
  %57 = load i32, i32* @SW_RST, align 4
  store i32 %57, i32* %6, align 4
  %58 = load %struct.tsens_priv*, %struct.tsens_priv** %3, align 8
  %59 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @CNTL_ADDR, align 4
  %62 = load i32, i32* @SW_RST, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @regmap_update_bits(i32 %60, i32 %61, i32 %62, i32 %63)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %56
  %68 = load i32, i32* %4, align 4
  store i32 %68, i32* %2, align 4
  br label %143

69:                                               ; preds = %56
  %70 = load %struct.tsens_priv*, %struct.tsens_priv** %3, align 8
  %71 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp sgt i32 %72, 1
  br i1 %73, label %74, label %92

74:                                               ; preds = %69
  %75 = load i32, i32* @SLP_CLK_ENA, align 4
  %76 = load i32, i32* @MEASURE_PERIOD, align 4
  %77 = shl i32 %76, 18
  %78 = or i32 %75, %77
  %79 = load i32, i32* %6, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* @SW_RST, align 4
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %6, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %6, align 4
  %85 = load %struct.tsens_priv*, %struct.tsens_priv** %3, align 8
  %86 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @CONFIG_ADDR, align 4
  %89 = load i32, i32* @CONFIG_MASK, align 4
  %90 = load i32, i32* @CONFIG, align 4
  %91 = call i32 @regmap_update_bits(i32 %87, i32 %88, i32 %89, i32 %90)
  store i32 %91, i32* %4, align 4
  br label %108

92:                                               ; preds = %69
  %93 = load i32, i32* @SLP_CLK_ENA_8660, align 4
  %94 = load i32, i32* @MEASURE_PERIOD, align 4
  %95 = shl i32 %94, 16
  %96 = or i32 %93, %95
  %97 = load i32, i32* %6, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* @CONFIG_MASK_8660, align 4
  %100 = xor i32 %99, -1
  %101 = load i32, i32* %6, align 4
  %102 = and i32 %101, %100
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* @CONFIG_8660, align 4
  %104 = load i32, i32* @CONFIG_SHIFT_8660, align 4
  %105 = shl i32 %103, %104
  %106 = load i32, i32* %6, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %6, align 4
  br label %108

108:                                              ; preds = %92, %74
  %109 = load %struct.tsens_priv*, %struct.tsens_priv** %3, align 8
  %110 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = sub nsw i32 %111, 1
  %113 = call i32 @GENMASK(i32 %112, i32 0)
  %114 = load i32, i32* @SENSOR0_SHIFT, align 4
  %115 = shl i32 %113, %114
  %116 = load i32, i32* %6, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %6, align 4
  %118 = load %struct.tsens_priv*, %struct.tsens_priv** %3, align 8
  %119 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @CNTL_ADDR, align 4
  %122 = load i32, i32* %6, align 4
  %123 = call i32 @regmap_write(i32 %120, i32 %121, i32 %122)
  store i32 %123, i32* %4, align 4
  %124 = load i32, i32* %4, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %108
  %127 = load i32, i32* %4, align 4
  store i32 %127, i32* %2, align 4
  br label %143

128:                                              ; preds = %108
  %129 = load i32, i32* @EN, align 4
  %130 = load i32, i32* %6, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %6, align 4
  %132 = load %struct.tsens_priv*, %struct.tsens_priv** %3, align 8
  %133 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @CNTL_ADDR, align 4
  %136 = load i32, i32* %6, align 4
  %137 = call i32 @regmap_write(i32 %134, i32 %135, i32 %136)
  store i32 %137, i32* %4, align 4
  %138 = load i32, i32* %4, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %128
  %141 = load i32, i32* %4, align 4
  store i32 %141, i32* %2, align 4
  br label %143

142:                                              ; preds = %128
  store i32 0, i32* %2, align 4
  br label %143

143:                                              ; preds = %142, %140, %126, %67, %17
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local i32 @dev_get_regmap(i32, i32*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
