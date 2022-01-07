; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_mtk_thermal.c_mtk_thermal_bank_temperature.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_mtk_thermal.c_mtk_thermal_bank_temperature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_thermal_bank = type { i64, %struct.mtk_thermal* }
%struct.mtk_thermal = type { i64, %struct.mtk_thermal_data* }
%struct.mtk_thermal_data = type { %struct.TYPE_2__*, i64* }
%struct.TYPE_2__ = type { i32, i64* }

@INT_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_thermal_bank*)* @mtk_thermal_bank_temperature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_thermal_bank_temperature(%struct.mtk_thermal_bank* %0) #0 {
  %2 = alloca %struct.mtk_thermal_bank*, align 8
  %3 = alloca %struct.mtk_thermal*, align 8
  %4 = alloca %struct.mtk_thermal_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mtk_thermal_bank* %0, %struct.mtk_thermal_bank** %2, align 8
  %9 = load %struct.mtk_thermal_bank*, %struct.mtk_thermal_bank** %2, align 8
  %10 = getelementptr inbounds %struct.mtk_thermal_bank, %struct.mtk_thermal_bank* %9, i32 0, i32 1
  %11 = load %struct.mtk_thermal*, %struct.mtk_thermal** %10, align 8
  store %struct.mtk_thermal* %11, %struct.mtk_thermal** %3, align 8
  %12 = load %struct.mtk_thermal*, %struct.mtk_thermal** %3, align 8
  %13 = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %12, i32 0, i32 1
  %14 = load %struct.mtk_thermal_data*, %struct.mtk_thermal_data** %13, align 8
  store %struct.mtk_thermal_data* %14, %struct.mtk_thermal_data** %4, align 8
  %15 = load i32, i32* @INT_MIN, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @INT_MIN, align 4
  store i32 %16, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %79, %1
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.mtk_thermal_data*, %struct.mtk_thermal_data** %4, align 8
  %20 = getelementptr inbounds %struct.mtk_thermal_data, %struct.mtk_thermal_data* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load %struct.mtk_thermal_bank*, %struct.mtk_thermal_bank** %2, align 8
  %23 = getelementptr inbounds %struct.mtk_thermal_bank, %struct.mtk_thermal_bank* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %18, %27
  br i1 %28, label %29, label %82

29:                                               ; preds = %17
  %30 = load %struct.mtk_thermal*, %struct.mtk_thermal** %3, align 8
  %31 = getelementptr inbounds %struct.mtk_thermal, %struct.mtk_thermal* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.mtk_thermal_data*, %struct.mtk_thermal_data** %4, align 8
  %34 = getelementptr inbounds %struct.mtk_thermal_data, %struct.mtk_thermal_data* %33, i32 0, i32 1
  %35 = load i64*, i64** %34, align 8
  %36 = load %struct.mtk_thermal_data*, %struct.mtk_thermal_data** %4, align 8
  %37 = getelementptr inbounds %struct.mtk_thermal_data, %struct.mtk_thermal_data* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load %struct.mtk_thermal_bank*, %struct.mtk_thermal_bank** %2, align 8
  %40 = getelementptr inbounds %struct.mtk_thermal_bank, %struct.mtk_thermal_bank* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i64, i64* %35, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %32, %50
  %52 = call i32 @readl(i64 %51)
  store i32 %52, i32* %8, align 4
  %53 = load %struct.mtk_thermal*, %struct.mtk_thermal** %3, align 8
  %54 = load %struct.mtk_thermal_data*, %struct.mtk_thermal_data** %4, align 8
  %55 = getelementptr inbounds %struct.mtk_thermal_data, %struct.mtk_thermal_data* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load %struct.mtk_thermal_bank*, %struct.mtk_thermal_bank** %2, align 8
  %58 = getelementptr inbounds %struct.mtk_thermal_bank, %struct.mtk_thermal_bank* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i64*, i64** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @raw_to_mcelsius(%struct.mtk_thermal* %53, i64 %66, i32 %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp sgt i32 %69, 200000
  br i1 %70, label %71, label %72

71:                                               ; preds = %29
  store i32 0, i32* %6, align 4
  br label %72

72:                                               ; preds = %71, %29
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %76, %72
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %5, align 4
  br label %17

82:                                               ; preds = %17
  %83 = load i32, i32* %7, align 4
  ret i32 %83
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @raw_to_mcelsius(%struct.mtk_thermal*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
