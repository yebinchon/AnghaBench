; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_sc27xx_fuel_gauge.c_sc27xx_fgu_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_sc27xx_fuel_gauge.c_sc27xx_fgu_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc27xx_fgu_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i8*, i64, i32, i64, i32 }
%struct.power_supply_battery_info = type { i32, i32, i32, i32 }
%struct.power_supply_battery_ocv_table = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"failed to get battery information\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SC27XX_MODULE_EN0 = common dso_local global i64 0, align 8
@SC27XX_FGU_EN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"failed to enable fgu\0A\00", align 1
@SC27XX_CLK_EN0 = common dso_local global i64 0, align 8
@SC27XX_FGU_RTC_EN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"failed to enable fgu RTC clock\0A\00", align 1
@SC27XX_FGU_INT_CLR = common dso_local global i64 0, align 8
@SC27XX_FGU_INT_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"failed to clear interrupt status\0A\00", align 1
@SC27XX_FGU_LOW_OVERLOAD = common dso_local global i64 0, align 8
@SC27XX_FGU_LOW_OVERLOAD_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"failed to set fgu low overload\0A\00", align 1
@SC27XX_FGU_CLBCNT_DELTL = common dso_local global i64 0, align 8
@SC27XX_FGU_CLBCNT_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"failed to set low delta coulomb counter\0A\00", align 1
@SC27XX_FGU_CLBCNT_DELTH = common dso_local global i64 0, align 8
@SC27XX_FGU_CLBCNT_SHIFT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [42 x i8] c"failed to set high delta coulomb counter\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"failed to get boot capacity\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"failed to initialize coulomb counter\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sc27xx_fgu_data*)* @sc27xx_fgu_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sc27xx_fgu_hw_init(%struct.sc27xx_fgu_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sc27xx_fgu_data*, align 8
  %4 = alloca %struct.power_supply_battery_info, align 4
  %5 = alloca %struct.power_supply_battery_ocv_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sc27xx_fgu_data* %0, %struct.sc27xx_fgu_data** %3, align 8
  %9 = bitcast %struct.power_supply_battery_info* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 16, i1 false)
  %10 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %3, align 8
  %11 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %10, i32 0, i32 10
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @power_supply_get_battery_info(i32 %12, %struct.power_supply_battery_info* %4)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %3, align 8
  %18 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %2, align 4
  br label %275

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %4, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sdiv i32 %24, 1000
  %26 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %3, align 8
  %27 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %4, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = sdiv i32 %29, 1000
  %31 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %3, align 8
  %32 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %4, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = sdiv i32 %34, 1000
  %36 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %3, align 8
  %37 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = getelementptr inbounds %struct.power_supply_battery_info, %struct.power_supply_battery_info* %4, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %3, align 8
  %41 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %3, align 8
  %43 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %42, i32 0, i32 4
  %44 = call %struct.power_supply_battery_ocv_table* @power_supply_find_ocv2cap_table(%struct.power_supply_battery_info* %4, i32 20, i32* %43)
  store %struct.power_supply_battery_ocv_table* %44, %struct.power_supply_battery_ocv_table** %5, align 8
  %45 = load %struct.power_supply_battery_ocv_table*, %struct.power_supply_battery_ocv_table** %5, align 8
  %46 = icmp ne %struct.power_supply_battery_ocv_table* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %22
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %275

50:                                               ; preds = %22
  %51 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %3, align 8
  %52 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %51, i32 0, i32 7
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.power_supply_battery_ocv_table*, %struct.power_supply_battery_ocv_table** %5, align 8
  %55 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %3, align 8
  %56 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = mul i64 %58, 4
  %60 = trunc i64 %59 to i32
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call i32 @devm_kmemdup(i32 %53, %struct.power_supply_battery_ocv_table* %54, i32 %60, i32 %61)
  %63 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %3, align 8
  %64 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %63, i32 0, i32 12
  store i32 %62, i32* %64, align 8
  %65 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %3, align 8
  %66 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %65, i32 0, i32 12
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %50
  %70 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %3, align 8
  %71 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %70, i32 0, i32 10
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @power_supply_put_battery_info(i32 %72, %struct.power_supply_battery_info* %4)
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %275

76:                                               ; preds = %50
  %77 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %3, align 8
  %78 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %77, i32 0, i32 12
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %3, align 8
  %81 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %3, align 8
  %84 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @power_supply_ocv2cap_simple(i32 %79, i32 %82, i32 %85)
  %87 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %3, align 8
  %88 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %87, i32 0, i32 11
  store i64 %86, i64* %88, align 8
  %89 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %3, align 8
  %90 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %89, i32 0, i32 11
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %76
  %94 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %3, align 8
  %95 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %94, i32 0, i32 11
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %96, 1
  store i64 %97, i64* %95, align 8
  br label %98

98:                                               ; preds = %93, %76
  %99 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %3, align 8
  %100 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %99, i32 0, i32 10
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @power_supply_put_battery_info(i32 %101, %struct.power_supply_battery_info* %4)
  %103 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %3, align 8
  %104 = call i32 @sc27xx_fgu_calibration(%struct.sc27xx_fgu_data* %103)
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* %6, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %98
  %108 = load i32, i32* %6, align 4
  store i32 %108, i32* %2, align 4
  br label %275

109:                                              ; preds = %98
  %110 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %3, align 8
  %111 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 8
  %113 = load i64, i64* @SC27XX_MODULE_EN0, align 8
  %114 = load i32, i32* @SC27XX_FGU_EN, align 4
  %115 = load i32, i32* @SC27XX_FGU_EN, align 4
  %116 = call i32 @regmap_update_bits(i32 %112, i64 %113, i32 %114, i32 %115)
  store i32 %116, i32* %6, align 4
  %117 = load i32, i32* %6, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %109
  %120 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %3, align 8
  %121 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %120, i32 0, i32 7
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @dev_err(i32 %122, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %124 = load i32, i32* %6, align 4
  store i32 %124, i32* %2, align 4
  br label %275

125:                                              ; preds = %109
  %126 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %3, align 8
  %127 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %126, i32 0, i32 6
  %128 = load i32, i32* %127, align 8
  %129 = load i64, i64* @SC27XX_CLK_EN0, align 8
  %130 = load i32, i32* @SC27XX_FGU_RTC_EN, align 4
  %131 = load i32, i32* @SC27XX_FGU_RTC_EN, align 4
  %132 = call i32 @regmap_update_bits(i32 %128, i64 %129, i32 %130, i32 %131)
  store i32 %132, i32* %6, align 4
  %133 = load i32, i32* %6, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %125
  %136 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %3, align 8
  %137 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %136, i32 0, i32 7
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @dev_err(i32 %138, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %267

140:                                              ; preds = %125
  %141 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %3, align 8
  %142 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %141, i32 0, i32 6
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %3, align 8
  %145 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %144, i32 0, i32 9
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @SC27XX_FGU_INT_CLR, align 8
  %148 = add nsw i64 %146, %147
  %149 = load i32, i32* @SC27XX_FGU_INT_MASK, align 4
  %150 = load i32, i32* @SC27XX_FGU_INT_MASK, align 4
  %151 = call i32 @regmap_update_bits(i32 %143, i64 %148, i32 %149, i32 %150)
  store i32 %151, i32* %6, align 4
  %152 = load i32, i32* %6, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %140
  %155 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %3, align 8
  %156 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %155, i32 0, i32 7
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @dev_err(i32 %157, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %260

159:                                              ; preds = %140
  %160 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %3, align 8
  %161 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %3, align 8
  %162 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = sdiv i32 %163, 1000
  %165 = call i32 @sc27xx_fgu_voltage_to_adc(%struct.sc27xx_fgu_data* %160, i32 %164)
  store i32 %165, i32* %8, align 4
  %166 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %3, align 8
  %167 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %166, i32 0, i32 6
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %3, align 8
  %170 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %169, i32 0, i32 9
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @SC27XX_FGU_LOW_OVERLOAD, align 8
  %173 = add nsw i64 %171, %172
  %174 = load i32, i32* @SC27XX_FGU_LOW_OVERLOAD_MASK, align 4
  %175 = load i32, i32* %8, align 4
  %176 = call i32 @regmap_update_bits(i32 %168, i64 %173, i32 %174, i32 %175)
  store i32 %176, i32* %6, align 4
  %177 = load i32, i32* %6, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %159
  %180 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %3, align 8
  %181 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %180, i32 0, i32 7
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @dev_err(i32 %182, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %260

184:                                              ; preds = %159
  %185 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %3, align 8
  %186 = call i8* @sc27xx_fgu_cap_to_clbcnt(%struct.sc27xx_fgu_data* %185, i32 1)
  %187 = ptrtoint i8* %186 to i32
  store i32 %187, i32* %7, align 4
  %188 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %3, align 8
  %189 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %188, i32 0, i32 6
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %3, align 8
  %192 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %191, i32 0, i32 9
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @SC27XX_FGU_CLBCNT_DELTL, align 8
  %195 = add nsw i64 %193, %194
  %196 = load i32, i32* @SC27XX_FGU_CLBCNT_MASK, align 4
  %197 = load i32, i32* %7, align 4
  %198 = call i32 @regmap_update_bits(i32 %190, i64 %195, i32 %196, i32 %197)
  store i32 %198, i32* %6, align 4
  %199 = load i32, i32* %6, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %184
  %202 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %3, align 8
  %203 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %202, i32 0, i32 7
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @dev_err(i32 %204, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  br label %260

206:                                              ; preds = %184
  %207 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %3, align 8
  %208 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %207, i32 0, i32 6
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %3, align 8
  %211 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %210, i32 0, i32 9
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @SC27XX_FGU_CLBCNT_DELTH, align 8
  %214 = add nsw i64 %212, %213
  %215 = load i32, i32* @SC27XX_FGU_CLBCNT_MASK, align 4
  %216 = load i32, i32* %7, align 4
  %217 = load i32, i32* @SC27XX_FGU_CLBCNT_SHIFT, align 4
  %218 = ashr i32 %216, %217
  %219 = call i32 @regmap_update_bits(i32 %209, i64 %214, i32 %215, i32 %218)
  store i32 %219, i32* %6, align 4
  %220 = load i32, i32* %6, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %227

222:                                              ; preds = %206
  %223 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %3, align 8
  %224 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %223, i32 0, i32 7
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @dev_err(i32 %225, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  br label %260

227:                                              ; preds = %206
  %228 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %3, align 8
  %229 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %3, align 8
  %230 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %229, i32 0, i32 5
  %231 = call i32 @sc27xx_fgu_get_boot_capacity(%struct.sc27xx_fgu_data* %228, i32* %230)
  store i32 %231, i32* %6, align 4
  %232 = load i32, i32* %6, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %239

234:                                              ; preds = %227
  %235 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %3, align 8
  %236 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %235, i32 0, i32 7
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @dev_err(i32 %237, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  br label %260

239:                                              ; preds = %227
  %240 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %3, align 8
  %241 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %3, align 8
  %242 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %241, i32 0, i32 5
  %243 = load i32, i32* %242, align 4
  %244 = call i8* @sc27xx_fgu_cap_to_clbcnt(%struct.sc27xx_fgu_data* %240, i32 %243)
  %245 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %3, align 8
  %246 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %245, i32 0, i32 8
  store i8* %244, i8** %246, align 8
  %247 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %3, align 8
  %248 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %3, align 8
  %249 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %248, i32 0, i32 8
  %250 = load i8*, i8** %249, align 8
  %251 = call i32 @sc27xx_fgu_set_clbcnt(%struct.sc27xx_fgu_data* %247, i8* %250)
  store i32 %251, i32* %6, align 4
  %252 = load i32, i32* %6, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %259

254:                                              ; preds = %239
  %255 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %3, align 8
  %256 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %255, i32 0, i32 7
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @dev_err(i32 %257, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  br label %260

259:                                              ; preds = %239
  store i32 0, i32* %2, align 4
  br label %275

260:                                              ; preds = %254, %234, %222, %201, %179, %154
  %261 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %3, align 8
  %262 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %261, i32 0, i32 6
  %263 = load i32, i32* %262, align 8
  %264 = load i64, i64* @SC27XX_CLK_EN0, align 8
  %265 = load i32, i32* @SC27XX_FGU_RTC_EN, align 4
  %266 = call i32 @regmap_update_bits(i32 %263, i64 %264, i32 %265, i32 0)
  br label %267

267:                                              ; preds = %260, %135
  %268 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %3, align 8
  %269 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %268, i32 0, i32 6
  %270 = load i32, i32* %269, align 8
  %271 = load i64, i64* @SC27XX_MODULE_EN0, align 8
  %272 = load i32, i32* @SC27XX_FGU_EN, align 4
  %273 = call i32 @regmap_update_bits(i32 %270, i64 %271, i32 %272, i32 0)
  %274 = load i32, i32* %6, align 4
  store i32 %274, i32* %2, align 4
  br label %275

275:                                              ; preds = %267, %259, %119, %107, %69, %47, %16
  %276 = load i32, i32* %2, align 4
  ret i32 %276
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @power_supply_get_battery_info(i32, %struct.power_supply_battery_info*) #2

declare dso_local i32 @dev_err(i32, i8*) #2

declare dso_local %struct.power_supply_battery_ocv_table* @power_supply_find_ocv2cap_table(%struct.power_supply_battery_info*, i32, i32*) #2

declare dso_local i32 @devm_kmemdup(i32, %struct.power_supply_battery_ocv_table*, i32, i32) #2

declare dso_local i32 @power_supply_put_battery_info(i32, %struct.power_supply_battery_info*) #2

declare dso_local i64 @power_supply_ocv2cap_simple(i32, i32, i32) #2

declare dso_local i32 @sc27xx_fgu_calibration(%struct.sc27xx_fgu_data*) #2

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #2

declare dso_local i32 @sc27xx_fgu_voltage_to_adc(%struct.sc27xx_fgu_data*, i32) #2

declare dso_local i8* @sc27xx_fgu_cap_to_clbcnt(%struct.sc27xx_fgu_data*, i32) #2

declare dso_local i32 @sc27xx_fgu_get_boot_capacity(%struct.sc27xx_fgu_data*, i32*) #2

declare dso_local i32 @sc27xx_fgu_set_clbcnt(%struct.sc27xx_fgu_data*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
