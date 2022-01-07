; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_twl4030_madc_battery.c_twl4030_madc_bat_voltscale.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_twl4030_madc_battery.c_twl4030_madc_bat_voltscale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl4030_madc_battery = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.twl4030_madc_bat_calibration*, %struct.twl4030_madc_bat_calibration* }
%struct.twl4030_madc_bat_calibration = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.twl4030_madc_battery*, i32)* @twl4030_madc_bat_voltscale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_madc_bat_voltscale(%struct.twl4030_madc_battery* %0, i32 %1) #0 {
  %3 = alloca %struct.twl4030_madc_battery*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.twl4030_madc_bat_calibration*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.twl4030_madc_battery* %0, %struct.twl4030_madc_battery** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.twl4030_madc_battery*, %struct.twl4030_madc_battery** %3, align 8
  %9 = call i64 @twl4030_madc_bat_get_charging_status(%struct.twl4030_madc_battery* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.twl4030_madc_battery*, %struct.twl4030_madc_battery** %3, align 8
  %13 = getelementptr inbounds %struct.twl4030_madc_battery, %struct.twl4030_madc_battery* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load %struct.twl4030_madc_bat_calibration*, %struct.twl4030_madc_bat_calibration** %15, align 8
  store %struct.twl4030_madc_bat_calibration* %16, %struct.twl4030_madc_bat_calibration** %5, align 8
  br label %23

17:                                               ; preds = %2
  %18 = load %struct.twl4030_madc_battery*, %struct.twl4030_madc_battery** %3, align 8
  %19 = getelementptr inbounds %struct.twl4030_madc_battery, %struct.twl4030_madc_battery* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.twl4030_madc_bat_calibration*, %struct.twl4030_madc_bat_calibration** %21, align 8
  store %struct.twl4030_madc_bat_calibration* %22, %struct.twl4030_madc_bat_calibration** %5, align 8
  br label %23

23:                                               ; preds = %17, %11
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.twl4030_madc_bat_calibration*, %struct.twl4030_madc_bat_calibration** %5, align 8
  %26 = getelementptr inbounds %struct.twl4030_madc_bat_calibration, %struct.twl4030_madc_bat_calibration* %25, i64 0
  %27 = getelementptr inbounds %struct.twl4030_madc_bat_calibration, %struct.twl4030_madc_bat_calibration* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp sgt i32 %24, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load %struct.twl4030_madc_bat_calibration*, %struct.twl4030_madc_bat_calibration** %5, align 8
  %32 = getelementptr inbounds %struct.twl4030_madc_bat_calibration, %struct.twl4030_madc_bat_calibration* %31, i64 0
  %33 = getelementptr inbounds %struct.twl4030_madc_bat_calibration, %struct.twl4030_madc_bat_calibration* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %7, align 4
  br label %115

35:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %111, %35
  %37 = load %struct.twl4030_madc_bat_calibration*, %struct.twl4030_madc_bat_calibration** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.twl4030_madc_bat_calibration, %struct.twl4030_madc_bat_calibration* %37, i64 %40
  %42 = getelementptr inbounds %struct.twl4030_madc_bat_calibration, %struct.twl4030_madc_bat_calibration* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %114

45:                                               ; preds = %36
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.twl4030_madc_bat_calibration*, %struct.twl4030_madc_bat_calibration** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.twl4030_madc_bat_calibration, %struct.twl4030_madc_bat_calibration* %47, i64 %49
  %51 = getelementptr inbounds %struct.twl4030_madc_bat_calibration, %struct.twl4030_madc_bat_calibration* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp sle i32 %46, %52
  br i1 %53, label %54, label %110

54:                                               ; preds = %45
  %55 = load i32, i32* %4, align 4
  %56 = load %struct.twl4030_madc_bat_calibration*, %struct.twl4030_madc_bat_calibration** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.twl4030_madc_bat_calibration, %struct.twl4030_madc_bat_calibration* %56, i64 %59
  %61 = getelementptr inbounds %struct.twl4030_madc_bat_calibration, %struct.twl4030_madc_bat_calibration* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp sge i32 %55, %62
  br i1 %63, label %64, label %110

64:                                               ; preds = %54
  %65 = load %struct.twl4030_madc_bat_calibration*, %struct.twl4030_madc_bat_calibration** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.twl4030_madc_bat_calibration, %struct.twl4030_madc_bat_calibration* %65, i64 %67
  %69 = getelementptr inbounds %struct.twl4030_madc_bat_calibration, %struct.twl4030_madc_bat_calibration* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.twl4030_madc_bat_calibration*, %struct.twl4030_madc_bat_calibration** %5, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.twl4030_madc_bat_calibration, %struct.twl4030_madc_bat_calibration* %71, i64 %73
  %75 = getelementptr inbounds %struct.twl4030_madc_bat_calibration, %struct.twl4030_madc_bat_calibration* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %4, align 4
  %78 = sub nsw i32 %76, %77
  %79 = load %struct.twl4030_madc_bat_calibration*, %struct.twl4030_madc_bat_calibration** %5, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.twl4030_madc_bat_calibration, %struct.twl4030_madc_bat_calibration* %79, i64 %81
  %83 = getelementptr inbounds %struct.twl4030_madc_bat_calibration, %struct.twl4030_madc_bat_calibration* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.twl4030_madc_bat_calibration*, %struct.twl4030_madc_bat_calibration** %5, align 8
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.twl4030_madc_bat_calibration, %struct.twl4030_madc_bat_calibration* %85, i64 %88
  %90 = getelementptr inbounds %struct.twl4030_madc_bat_calibration, %struct.twl4030_madc_bat_calibration* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = sub nsw i32 %84, %91
  %93 = mul nsw i32 %78, %92
  %94 = load %struct.twl4030_madc_bat_calibration*, %struct.twl4030_madc_bat_calibration** %5, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.twl4030_madc_bat_calibration, %struct.twl4030_madc_bat_calibration* %94, i64 %96
  %98 = getelementptr inbounds %struct.twl4030_madc_bat_calibration, %struct.twl4030_madc_bat_calibration* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.twl4030_madc_bat_calibration*, %struct.twl4030_madc_bat_calibration** %5, align 8
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.twl4030_madc_bat_calibration, %struct.twl4030_madc_bat_calibration* %100, i64 %103
  %105 = getelementptr inbounds %struct.twl4030_madc_bat_calibration, %struct.twl4030_madc_bat_calibration* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = sub nsw i32 %99, %106
  %108 = sdiv i32 %93, %107
  %109 = sub nsw i32 %70, %108
  store i32 %109, i32* %7, align 4
  br label %114

110:                                              ; preds = %54, %45
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %6, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %6, align 4
  br label %36

114:                                              ; preds = %64, %36
  br label %115

115:                                              ; preds = %114, %30
  %116 = load i32, i32* %7, align 4
  ret i32 %116
}

declare dso_local i64 @twl4030_madc_bat_get_charging_status(%struct.twl4030_madc_battery*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
