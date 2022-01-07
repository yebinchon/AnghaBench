; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_sc27xx_fuel_gauge.c_sc27xx_fgu_capacity_calibration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_sc27xx_fuel_gauge.c_sc27xx_fgu_capacity_calibration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc27xx_fgu_data = type { i32, i32, i32, i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"get battery ocv error.\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"get charger status error.\0A\00", align 1
@POWER_SUPPLY_STATUS_CHARGING = common dso_local global i32 0, align 4
@SC27XX_FGU_LOW_OVERLOAD = common dso_local global i64 0, align 8
@SC27XX_FGU_LOW_OVERLOAD_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sc27xx_fgu_data*, i32, i32)* @sc27xx_fgu_capacity_calibration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sc27xx_fgu_capacity_calibration(%struct.sc27xx_fgu_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sc27xx_fgu_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sc27xx_fgu_data* %0, %struct.sc27xx_fgu_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %4, align 8
  %14 = call i32 @sc27xx_fgu_get_vbat_ocv(%struct.sc27xx_fgu_data* %13, i32* %8)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %4, align 8
  %19 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %196

22:                                               ; preds = %3
  %23 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %4, align 8
  %24 = call i32 @sc27xx_fgu_get_status(%struct.sc27xx_fgu_data* %23, i32* %9)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %4, align 8
  %29 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %196

32:                                               ; preds = %22
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @POWER_SUPPLY_STATUS_CHARGING, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %196

37:                                               ; preds = %32
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %4, align 8
  %40 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %39, i32 0, i32 5
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp sgt i32 %38, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %37
  %47 = load i32, i32* %5, align 4
  %48 = icmp slt i32 %47, 100
  br i1 %48, label %52, label %49

49:                                               ; preds = %46, %37
  %50 = load i32, i32* %5, align 4
  %51 = icmp sgt i32 %50, 100
  br i1 %51, label %52, label %55

52:                                               ; preds = %49, %46
  %53 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %4, align 8
  %54 = call i32 @sc27xx_fgu_adjust_cap(%struct.sc27xx_fgu_data* %53, i32 100)
  br label %196

55:                                               ; preds = %49
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %4, align 8
  %58 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %57, i32 0, i32 5
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %4, align 8
  %61 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp sle i32 %56, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %55
  %70 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %4, align 8
  %71 = call i32 @sc27xx_fgu_adjust_cap(%struct.sc27xx_fgu_data* %70, i32 0)
  br label %195

72:                                               ; preds = %55
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %4, align 8
  %75 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %74, i32 0, i32 5
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %4, align 8
  %78 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp sgt i32 %73, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %72
  %87 = load i32, i32* %5, align 4
  %88 = icmp sle i32 %87, 0
  br i1 %88, label %101, label %89

89:                                               ; preds = %86, %72
  %90 = load i32, i32* %8, align 4
  %91 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %4, align 8
  %92 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp sgt i32 %90, %93
  br i1 %94, label %95, label %114

95:                                               ; preds = %89
  %96 = load i32, i32* %5, align 4
  %97 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %4, align 8
  %98 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = icmp sle i32 %96, %99
  br i1 %100, label %101, label %114

101:                                              ; preds = %95, %86
  %102 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %4, align 8
  %103 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %102, i32 0, i32 5
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %4, align 8
  %106 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %8, align 4
  %109 = call i8* @power_supply_ocv2cap_simple(%struct.TYPE_2__* %104, i32 %107, i32 %108)
  %110 = ptrtoint i8* %109 to i32
  store i32 %110, i32* %11, align 4
  %111 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %4, align 8
  %112 = load i32, i32* %11, align 4
  %113 = call i32 @sc27xx_fgu_adjust_cap(%struct.sc27xx_fgu_data* %111, i32 %112)
  br label %194

114:                                              ; preds = %95, %89
  %115 = load i32, i32* %8, align 4
  %116 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %4, align 8
  %117 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp sle i32 %115, %118
  br i1 %119, label %120, label %193

120:                                              ; preds = %114
  %121 = load i32, i32* %5, align 4
  %122 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %4, align 8
  %123 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = icmp sgt i32 %121, %124
  br i1 %125, label %126, label %132

126:                                              ; preds = %120
  %127 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %4, align 8
  %128 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %4, align 8
  %129 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @sc27xx_fgu_adjust_cap(%struct.sc27xx_fgu_data* %127, i32 %130)
  br label %145

132:                                              ; preds = %120
  %133 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %4, align 8
  %134 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %133, i32 0, i32 5
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %4, align 8
  %137 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* %8, align 4
  %140 = call i8* @power_supply_ocv2cap_simple(%struct.TYPE_2__* %135, i32 %138, i32 %139)
  %141 = ptrtoint i8* %140 to i32
  store i32 %141, i32* %12, align 4
  %142 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %4, align 8
  %143 = load i32, i32* %12, align 4
  %144 = call i32 @sc27xx_fgu_adjust_cap(%struct.sc27xx_fgu_data* %142, i32 %143)
  br label %145

145:                                              ; preds = %132, %126
  %146 = load i32, i32* %6, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %145
  br label %196

149:                                              ; preds = %145
  %150 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %4, align 8
  %151 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %150, i32 0, i32 5
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %151, align 8
  %153 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %4, align 8
  %154 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = sub nsw i32 %155, 1
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %4, align 8
  %162 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %161, i32 0, i32 1
  store i32 %160, i32* %162, align 4
  %163 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %4, align 8
  %164 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %163, i32 0, i32 5
  %165 = load %struct.TYPE_2__*, %struct.TYPE_2__** %164, align 8
  %166 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %4, align 8
  %167 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %4, align 8
  %170 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = call i8* @power_supply_ocv2cap_simple(%struct.TYPE_2__* %165, i32 %168, i32 %171)
  %173 = ptrtoint i8* %172 to i32
  %174 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %4, align 8
  %175 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %174, i32 0, i32 2
  store i32 %173, i32* %175, align 8
  %176 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %4, align 8
  %177 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %4, align 8
  %178 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = sdiv i32 %179, 1000
  %181 = call i32 @sc27xx_fgu_voltage_to_adc(%struct.sc27xx_fgu_data* %176, i32 %180)
  store i32 %181, i32* %10, align 4
  %182 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %4, align 8
  %183 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %4, align 8
  %186 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %185, i32 0, i32 3
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @SC27XX_FGU_LOW_OVERLOAD, align 8
  %189 = add nsw i64 %187, %188
  %190 = load i32, i32* @SC27XX_FGU_LOW_OVERLOAD_MASK, align 4
  %191 = load i32, i32* %10, align 4
  %192 = call i32 @regmap_update_bits(i32 %184, i64 %189, i32 %190, i32 %191)
  br label %193

193:                                              ; preds = %149, %114
  br label %194

194:                                              ; preds = %193, %101
  br label %195

195:                                              ; preds = %194, %69
  br label %196

196:                                              ; preds = %17, %27, %36, %148, %195, %52
  ret void
}

declare dso_local i32 @sc27xx_fgu_get_vbat_ocv(%struct.sc27xx_fgu_data*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @sc27xx_fgu_get_status(%struct.sc27xx_fgu_data*, i32*) #1

declare dso_local i32 @sc27xx_fgu_adjust_cap(%struct.sc27xx_fgu_data*, i32) #1

declare dso_local i8* @power_supply_ocv2cap_simple(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @sc27xx_fgu_voltage_to_adc(%struct.sc27xx_fgu_data*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
