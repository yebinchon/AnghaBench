; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_set_tx_power_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_set_tx_power_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_hal }
%struct.rtw_hal = type { i64** }

@RF_PATH_A = common dso_local global i64 0, align 8
@DESC_RATE11M = common dso_local global i64 0, align 8
@RF_PATH_B = common dso_local global i64 0, align 8
@DESC_RATEMCS7 = common dso_local global i64 0, align 8
@RTW_RATE_SECTION_MAX = common dso_local global i64 0, align 8
@rtw_rate_size = common dso_local global i64* null, align 8
@rtw_rate_section = common dso_local global i64** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*)* @rtw8822c_set_tx_power_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822c_set_tx_power_index(%struct.rtw_dev* %0) #0 {
  %2 = alloca %struct.rtw_dev*, align 8
  %3 = alloca %struct.rtw_hal*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca [2 x i64], align 16
  %8 = alloca [2 x i64], align 16
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca [4 x i64], align 16
  store %struct.rtw_dev* %0, %struct.rtw_dev** %2, align 8
  %14 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %15 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %14, i32 0, i32 0
  store %struct.rtw_hal* %15, %struct.rtw_hal** %3, align 8
  %16 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %17 = load %struct.rtw_hal*, %struct.rtw_hal** %3, align 8
  %18 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %17, i32 0, i32 0
  %19 = load i64**, i64*** %18, align 8
  %20 = load i64, i64* @RF_PATH_A, align 8
  %21 = getelementptr inbounds i64*, i64** %19, i64 %20
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* @DESC_RATE11M, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %16, align 8
  %26 = getelementptr inbounds i64, i64* %16, i64 1
  %27 = load %struct.rtw_hal*, %struct.rtw_hal** %3, align 8
  %28 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %27, i32 0, i32 0
  %29 = load i64**, i64*** %28, align 8
  %30 = load i64, i64* @RF_PATH_B, align 8
  %31 = getelementptr inbounds i64*, i64** %29, i64 %30
  %32 = load i64*, i64** %31, align 8
  %33 = load i64, i64* @DESC_RATE11M, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %26, align 8
  %36 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %37 = load %struct.rtw_hal*, %struct.rtw_hal** %3, align 8
  %38 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %37, i32 0, i32 0
  %39 = load i64**, i64*** %38, align 8
  %40 = load i64, i64* @RF_PATH_A, align 8
  %41 = getelementptr inbounds i64*, i64** %39, i64 %40
  %42 = load i64*, i64** %41, align 8
  %43 = load i64, i64* @DESC_RATEMCS7, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %36, align 8
  %46 = getelementptr inbounds i64, i64* %36, i64 1
  %47 = load %struct.rtw_hal*, %struct.rtw_hal** %3, align 8
  %48 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %47, i32 0, i32 0
  %49 = load i64**, i64*** %48, align 8
  %50 = load i64, i64* @RF_PATH_B, align 8
  %51 = getelementptr inbounds i64*, i64** %49, i64 %50
  %52 = load i64*, i64** %51, align 8
  %53 = load i64, i64* @DESC_RATEMCS7, align 8
  %54 = getelementptr inbounds i64, i64* %52, i64 %53
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %46, align 8
  %56 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %57 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %58 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %59 = call i32 @rtw8822c_set_write_tx_power_ref(%struct.rtw_dev* %56, i64* %57, i64* %58)
  store i64 0, i64* %4, align 8
  br label %60

60:                                               ; preds = %139, %1
  %61 = load i64, i64* %4, align 8
  %62 = load i64, i64* @RTW_RATE_SECTION_MAX, align 8
  %63 = icmp ult i64 %61, %62
  br i1 %63, label %64, label %142

64:                                               ; preds = %60
  store i64 0, i64* %6, align 8
  br label %65

65:                                               ; preds = %135, %64
  %66 = load i64, i64* %6, align 8
  %67 = load i64*, i64** @rtw_rate_size, align 8
  %68 = load i64, i64* %4, align 8
  %69 = getelementptr inbounds i64, i64* %67, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = icmp ult i64 %66, %70
  br i1 %71, label %72, label %138

72:                                               ; preds = %65
  %73 = load i64**, i64*** @rtw_rate_section, align 8
  %74 = load i64, i64* %4, align 8
  %75 = getelementptr inbounds i64*, i64** %73, i64 %74
  %76 = load i64*, i64** %75, align 8
  %77 = load i64, i64* %6, align 8
  %78 = getelementptr inbounds i64, i64* %76, i64 %77
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %5, align 8
  %80 = load %struct.rtw_hal*, %struct.rtw_hal** %3, align 8
  %81 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %80, i32 0, i32 0
  %82 = load i64**, i64*** %81, align 8
  %83 = load i64, i64* @RF_PATH_A, align 8
  %84 = getelementptr inbounds i64*, i64** %82, i64 %83
  %85 = load i64*, i64** %84, align 8
  %86 = load i64, i64* %5, align 8
  %87 = getelementptr inbounds i64, i64* %85, i64 %86
  %88 = load i64, i64* %87, align 8
  store i64 %88, i64* %11, align 8
  %89 = load %struct.rtw_hal*, %struct.rtw_hal** %3, align 8
  %90 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %89, i32 0, i32 0
  %91 = load i64**, i64*** %90, align 8
  %92 = load i64, i64* @RF_PATH_B, align 8
  %93 = getelementptr inbounds i64*, i64** %91, i64 %92
  %94 = load i64*, i64** %93, align 8
  %95 = load i64, i64* %5, align 8
  %96 = getelementptr inbounds i64, i64* %94, i64 %95
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %12, align 8
  %98 = load i64, i64* %4, align 8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %72
  %101 = load i64, i64* %11, align 8
  %102 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %103 = load i64, i64* %102, align 16
  %104 = sub nsw i64 %101, %103
  store i64 %104, i64* %9, align 8
  %105 = load i64, i64* %12, align 8
  %106 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 1
  %107 = load i64, i64* %106, align 8
  %108 = sub nsw i64 %105, %107
  store i64 %108, i64* %10, align 8
  br label %118

109:                                              ; preds = %72
  %110 = load i64, i64* %11, align 8
  %111 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %112 = load i64, i64* %111, align 16
  %113 = sub nsw i64 %110, %112
  store i64 %113, i64* %9, align 8
  %114 = load i64, i64* %12, align 8
  %115 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 1
  %116 = load i64, i64* %115, align 8
  %117 = sub nsw i64 %114, %116
  store i64 %117, i64* %10, align 8
  br label %118

118:                                              ; preds = %109, %100
  %119 = load i64, i64* %9, align 8
  %120 = load i64, i64* %10, align 8
  %121 = call i64 @min(i64 %119, i64 %120)
  %122 = load i64, i64* %5, align 8
  %123 = urem i64 %122, 4
  %124 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 %123
  store i64 %121, i64* %124, align 8
  %125 = load i64, i64* %5, align 8
  %126 = urem i64 %125, 4
  %127 = icmp eq i64 %126, 3
  br i1 %127, label %128, label %134

128:                                              ; preds = %118
  %129 = load %struct.rtw_dev*, %struct.rtw_dev** %2, align 8
  %130 = load i64, i64* %5, align 8
  %131 = sub i64 %130, 3
  %132 = getelementptr inbounds [4 x i64], [4 x i64]* %13, i64 0, i64 0
  %133 = call i32 @rtw8822c_set_tx_power_diff(%struct.rtw_dev* %129, i64 %131, i64* %132)
  br label %134

134:                                              ; preds = %128, %118
  br label %135

135:                                              ; preds = %134
  %136 = load i64, i64* %6, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %6, align 8
  br label %65

138:                                              ; preds = %65
  br label %139

139:                                              ; preds = %138
  %140 = load i64, i64* %4, align 8
  %141 = add i64 %140, 1
  store i64 %141, i64* %4, align 8
  br label %60

142:                                              ; preds = %60
  ret void
}

declare dso_local i32 @rtw8822c_set_write_tx_power_ref(%struct.rtw_dev*, i64*, i64*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @rtw8822c_set_tx_power_diff(%struct.rtw_dev*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
