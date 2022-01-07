; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_thermal-generic-adc.c_gadc_thermal_adc_to_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_thermal-generic-adc.c_gadc_thermal_adc_to_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gadc_thermal_info = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gadc_thermal_info*, i32)* @gadc_thermal_adc_to_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gadc_thermal_adc_to_temp(%struct.gadc_thermal_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gadc_thermal_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gadc_thermal_info* %0, %struct.gadc_thermal_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.gadc_thermal_info*, %struct.gadc_thermal_info** %4, align 8
  %13 = getelementptr inbounds %struct.gadc_thermal_info, %struct.gadc_thermal_info* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %3, align 4
  br label %120

18:                                               ; preds = %2
  store i32 0, i32* %11, align 4
  br label %19

19:                                               ; preds = %39, %18
  %20 = load i32, i32* %11, align 4
  %21 = load %struct.gadc_thermal_info*, %struct.gadc_thermal_info** %4, align 8
  %22 = getelementptr inbounds %struct.gadc_thermal_info, %struct.gadc_thermal_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %19
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.gadc_thermal_info*, %struct.gadc_thermal_info** %4, align 8
  %28 = getelementptr inbounds %struct.gadc_thermal_info, %struct.gadc_thermal_info* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %11, align 4
  %31 = mul nsw i32 2, %30
  %32 = add nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %29, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = icmp sge i32 %26, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  br label %42

38:                                               ; preds = %25
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %11, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %11, align 4
  br label %19

42:                                               ; preds = %37, %19
  %43 = load i32, i32* %11, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load %struct.gadc_thermal_info*, %struct.gadc_thermal_info** %4, align 8
  %47 = getelementptr inbounds %struct.gadc_thermal_info, %struct.gadc_thermal_info* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %6, align 4
  br label %118

51:                                               ; preds = %42
  %52 = load i32, i32* %11, align 4
  %53 = load %struct.gadc_thermal_info*, %struct.gadc_thermal_info** %4, align 8
  %54 = getelementptr inbounds %struct.gadc_thermal_info, %struct.gadc_thermal_info* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = icmp sge i32 %52, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %51
  %58 = load %struct.gadc_thermal_info*, %struct.gadc_thermal_info** %4, align 8
  %59 = getelementptr inbounds %struct.gadc_thermal_info, %struct.gadc_thermal_info* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.gadc_thermal_info*, %struct.gadc_thermal_info** %4, align 8
  %62 = getelementptr inbounds %struct.gadc_thermal_info, %struct.gadc_thermal_info* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = sub nsw i32 %63, 1
  %65 = mul nsw i32 2, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %60, i64 %66
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %6, align 4
  br label %117

69:                                               ; preds = %51
  %70 = load %struct.gadc_thermal_info*, %struct.gadc_thermal_info** %4, align 8
  %71 = getelementptr inbounds %struct.gadc_thermal_info, %struct.gadc_thermal_info* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %11, align 4
  %74 = mul nsw i32 2, %73
  %75 = sub nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %72, i64 %76
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %9, align 4
  %79 = load %struct.gadc_thermal_info*, %struct.gadc_thermal_info** %4, align 8
  %80 = getelementptr inbounds %struct.gadc_thermal_info, %struct.gadc_thermal_info* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %11, align 4
  %83 = mul nsw i32 2, %82
  %84 = add nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %81, i64 %85
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %10, align 4
  %88 = load %struct.gadc_thermal_info*, %struct.gadc_thermal_info** %4, align 8
  %89 = getelementptr inbounds %struct.gadc_thermal_info, %struct.gadc_thermal_info* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %11, align 4
  %92 = mul nsw i32 2, %91
  %93 = sub nsw i32 %92, 2
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %90, i64 %94
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %7, align 4
  %97 = load %struct.gadc_thermal_info*, %struct.gadc_thermal_info** %4, align 8
  %98 = getelementptr inbounds %struct.gadc_thermal_info, %struct.gadc_thermal_info* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %11, align 4
  %101 = mul nsw i32 2, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %99, i64 %102
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* %7, align 4
  %108 = sub nsw i32 %106, %107
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* %9, align 4
  %111 = sub nsw i32 %109, %110
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* %9, align 4
  %114 = sub nsw i32 %112, %113
  %115 = call i32 @mult_frac(i32 %108, i32 %111, i32 %114)
  %116 = add nsw i32 %105, %115
  store i32 %116, i32* %6, align 4
  br label %117

117:                                              ; preds = %69, %57
  br label %118

118:                                              ; preds = %117, %45
  %119 = load i32, i32* %6, align 4
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %118, %16
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i32 @mult_frac(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
