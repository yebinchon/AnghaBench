; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_phy.c_mt7601u_temp_comp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_phy.c_mt7601u_temp_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7601u_dev = type { i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MT_EE_TEMPERATURE_SLOPE = common dso_local global i32 0, align 4
@MCU_CAL_DPD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Recalibrate DPD\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"PLL lock protect on - too cold\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"PLL lock protect off\0A\00", align 1
@MT_TEMP_MODE_HIGH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@MT_TEMP_MODE_NORMAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@MT_TEMP_MODE_LOW = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt7601u_dev*, i32)* @mt7601u_temp_comp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7601u_temp_comp(%struct.mt7601u_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mt7601u_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mt7601u_dev* %0, %struct.mt7601u_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 400, i32* %8, align 4
  store i32 -200, i32* %9, align 4
  %10 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %11 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %14 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %13, i32 0, i32 5
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sub nsw i32 %12, %17
  %19 = load i32, i32* @MT_EE_TEMPERATURE_SLOPE, align 4
  %20 = mul nsw i32 %18, %19
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %23 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %26 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %24, %27
  %29 = icmp sgt i32 %28, 450
  br i1 %29, label %37, label %30

30:                                               ; preds = %2
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %33 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %31, %34
  %36 = icmp slt i32 %35, -450
  br i1 %36, label %37, label %58

37:                                               ; preds = %30, %2
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %40 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %42 = load i32, i32* @MCU_CAL_DPD, align 4
  %43 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %44 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @mt7601u_mcu_calibrate(%struct.mt7601u_dev* %41, i32 %42, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %37
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %3, align 4
  br label %125

51:                                               ; preds = %37
  %52 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %53 = call i32 @mt7601u_vco_cal(%struct.mt7601u_dev* %52)
  %54 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %55 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @dev_dbg(i32 %56, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %58

58:                                               ; preds = %51, %30
  %59 = load i32, i32* %7, align 4
  %60 = icmp slt i32 %59, -50
  br i1 %60, label %61, label %77

61:                                               ; preds = %58
  %62 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %63 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %77, label %66

66:                                               ; preds = %61
  %67 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %68 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %67, i32 0, i32 3
  store i32 1, i32* %68, align 4
  %69 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %70 = call i32 @mt7601u_rf_wr(%struct.mt7601u_dev* %69, i32 4, i32 4, i32 6)
  %71 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %72 = call i32 @mt7601u_rf_clear(%struct.mt7601u_dev* %71, i32 4, i32 10, i32 48)
  %73 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %74 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @dev_dbg(i32 %75, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %97

77:                                               ; preds = %61, %58
  %78 = load i32, i32* %7, align 4
  %79 = icmp sgt i32 %78, 50
  br i1 %79, label %80, label %96

80:                                               ; preds = %77
  %81 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %82 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %80
  %86 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %87 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %86, i32 0, i32 3
  store i32 0, i32* %87, align 4
  %88 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %89 = call i32 @mt7601u_rf_wr(%struct.mt7601u_dev* %88, i32 4, i32 4, i32 0)
  %90 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %91 = call i32 @mt7601u_rf_rmw(%struct.mt7601u_dev* %90, i32 4, i32 10, i32 48, i32 16)
  %92 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %93 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @dev_dbg(i32 %94, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %96

96:                                               ; preds = %85, %80, %77
  br label %97

97:                                               ; preds = %96, %66
  %98 = load i32, i32* %5, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %97
  %101 = load i32, i32* %8, align 4
  %102 = sub nsw i32 %101, 50
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %9, align 4
  %104 = sub nsw i32 %103, 50
  store i32 %104, i32* %9, align 4
  br label %105

105:                                              ; preds = %100, %97
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp sgt i32 %106, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %105
  %110 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %111 = load i32, i32* @MT_TEMP_MODE_HIGH, align 4
  %112 = call i32 @mt7601u_bbp_temp(%struct.mt7601u_dev* %110, i32 %111, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i32 %112, i32* %3, align 4
  br label %125

113:                                              ; preds = %105
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp sgt i32 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %113
  %118 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %119 = load i32, i32* @MT_TEMP_MODE_NORMAL, align 4
  %120 = call i32 @mt7601u_bbp_temp(%struct.mt7601u_dev* %118, i32 %119, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i32 %120, i32* %3, align 4
  br label %125

121:                                              ; preds = %113
  %122 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %123 = load i32, i32* @MT_TEMP_MODE_LOW, align 4
  %124 = call i32 @mt7601u_bbp_temp(%struct.mt7601u_dev* %122, i32 %123, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %121, %117, %109, %49
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i32 @mt7601u_mcu_calibrate(%struct.mt7601u_dev*, i32, i32) #1

declare dso_local i32 @mt7601u_vco_cal(%struct.mt7601u_dev*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @mt7601u_rf_wr(%struct.mt7601u_dev*, i32, i32, i32) #1

declare dso_local i32 @mt7601u_rf_clear(%struct.mt7601u_dev*, i32, i32, i32) #1

declare dso_local i32 @mt7601u_rf_rmw(%struct.mt7601u_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @mt7601u_bbp_temp(%struct.mt7601u_dev*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
