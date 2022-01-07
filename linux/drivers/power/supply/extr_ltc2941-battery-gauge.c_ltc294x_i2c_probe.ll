; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ltc2941-battery-gauge.c_ltc294x_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ltc2941-battery-gauge.c_ltc294x_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.power_supply_config = type { %struct.ltc294x_info* }
%struct.ltc294x_info = type { i32, i32, i32, i32, i32, %struct.TYPE_8__, %struct.i2c_client* }
%struct.TYPE_8__ = type { i32*, i32, i32, i32, i32, i32, i32, i32 }
%struct.device_node = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"lltc,resistor-sense\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Could not find lltc,resistor-sense in devicetree\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"lltc,prescaler-exponent\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"lltc,prescaler-exponent not in devicetree\0A\00", align 1
@LTC2941_MAX_PRESCALER_EXP = common dso_local global i32 0, align 4
@LTC2943_MAX_PRESCALER_EXP = common dso_local global i32 0, align 4
@LTC294X_REG_STATUS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"Could not read status register\0A\00", align 1
@LTC2941_REG_STATUS_CHIP_ID = common dso_local global i32 0, align 4
@POWER_SUPPLY_TYPE_BATTERY = common dso_local global i32 0, align 4
@ltc294x_properties = common dso_local global i32 0, align 4
@ltc294x_get_property = common dso_local global i32 0, align 4
@ltc294x_set_property = common dso_local global i32 0, align 4
@ltc294x_property_is_writeable = common dso_local global i32 0, align 4
@ltc294x_work = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"Communication with chip failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"failed to register ltc2941\0A\00", align 1
@LTC294X_WORK_DELAY = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ltc294x_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltc294x_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.power_supply_config, align 8
  %7 = alloca %struct.ltc294x_info*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %13 = bitcast %struct.power_supply_config* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 8, i1 false)
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 0
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.ltc294x_info* @devm_kzalloc(%struct.TYPE_7__* %15, i32 72, i32 %16)
  store %struct.ltc294x_info* %17, %struct.ltc294x_info** %7, align 8
  %18 = load %struct.ltc294x_info*, %struct.ltc294x_info** %7, align 8
  %19 = icmp eq %struct.ltc294x_info* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %232

23:                                               ; preds = %2
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = load %struct.ltc294x_info*, %struct.ltc294x_info** %7, align 8
  %26 = call i32 @i2c_set_clientdata(%struct.i2c_client* %24, %struct.ltc294x_info* %25)
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.device_node* @of_node_get(i32 %30)
  store %struct.device_node* %31, %struct.device_node** %8, align 8
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %32, i32 0, i32 0
  %34 = call i64 @of_device_get_match_data(%struct.TYPE_7__* %33)
  %35 = trunc i64 %34 to i32
  %36 = load %struct.ltc294x_info*, %struct.ltc294x_info** %7, align 8
  %37 = getelementptr inbounds %struct.ltc294x_info, %struct.ltc294x_info* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.device_node*, %struct.device_node** %8, align 8
  %39 = getelementptr inbounds %struct.device_node, %struct.device_node* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ltc294x_info*, %struct.ltc294x_info** %7, align 8
  %42 = getelementptr inbounds %struct.ltc294x_info, %struct.ltc294x_info* %41, i32 0, i32 5
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 7
  store i32 %40, i32* %43, align 8
  %44 = load %struct.device_node*, %struct.device_node** %8, align 8
  %45 = call i32 @of_property_read_u32(%struct.device_node* %44, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32* %11)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %23
  %49 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %50 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %49, i32 0, i32 0
  %51 = call i32 @dev_err(%struct.TYPE_7__* %50, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %3, align 4
  br label %232

53:                                               ; preds = %23
  %54 = load i32, i32* %11, align 4
  %55 = load %struct.ltc294x_info*, %struct.ltc294x_info** %7, align 8
  %56 = getelementptr inbounds %struct.ltc294x_info, %struct.ltc294x_info* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.device_node*, %struct.device_node** %8, align 8
  %58 = call i32 @of_property_read_u32(%struct.device_node* %57, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32* %10)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %53
  %62 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %63 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %62, i32 0, i32 0
  %64 = call i32 @dev_warn(%struct.TYPE_7__* %63, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %65 = load i32, i32* @LTC2941_MAX_PRESCALER_EXP, align 4
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %61, %53
  %67 = load %struct.ltc294x_info*, %struct.ltc294x_info** %7, align 8
  %68 = getelementptr inbounds %struct.ltc294x_info, %struct.ltc294x_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %69, 129
  br i1 %70, label %71, label %87

71:                                               ; preds = %66
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @LTC2943_MAX_PRESCALER_EXP, align 4
  %74 = icmp sgt i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = load i32, i32* @LTC2943_MAX_PRESCALER_EXP, align 4
  store i32 %76, i32* %10, align 4
  br label %77

77:                                               ; preds = %75, %71
  %78 = load i32, i32* %11, align 4
  %79 = sdiv i32 17000000, %78
  %80 = load i32, i32* %10, align 4
  %81 = mul nsw i32 2, %80
  %82 = shl i32 1, %81
  %83 = sdiv i32 4096, %82
  %84 = sdiv i32 %79, %83
  %85 = load %struct.ltc294x_info*, %struct.ltc294x_info** %7, align 8
  %86 = getelementptr inbounds %struct.ltc294x_info, %struct.ltc294x_info* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  br label %102

87:                                               ; preds = %66
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* @LTC2941_MAX_PRESCALER_EXP, align 4
  %90 = icmp sgt i32 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = load i32, i32* @LTC2941_MAX_PRESCALER_EXP, align 4
  store i32 %92, i32* %10, align 4
  br label %93

93:                                               ; preds = %91, %87
  %94 = load i32, i32* %11, align 4
  %95 = sdiv i32 4250000, %94
  %96 = load i32, i32* %10, align 4
  %97 = shl i32 1, %96
  %98 = sdiv i32 128, %97
  %99 = sdiv i32 %95, %98
  %100 = load %struct.ltc294x_info*, %struct.ltc294x_info** %7, align 8
  %101 = getelementptr inbounds %struct.ltc294x_info, %struct.ltc294x_info* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 8
  br label %102

102:                                              ; preds = %93, %77
  %103 = load %struct.ltc294x_info*, %struct.ltc294x_info** %7, align 8
  %104 = getelementptr inbounds %struct.ltc294x_info, %struct.ltc294x_info* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp eq i32 %105, 131
  br i1 %106, label %112, label %107

107:                                              ; preds = %102
  %108 = load %struct.ltc294x_info*, %struct.ltc294x_info** %7, align 8
  %109 = getelementptr inbounds %struct.ltc294x_info, %struct.ltc294x_info* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp eq i32 %110, 130
  br i1 %111, label %112, label %135

112:                                              ; preds = %107, %102
  %113 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %114 = load i32, i32* @LTC294X_REG_STATUS, align 4
  %115 = call i32 @ltc294x_read_regs(%struct.i2c_client* %113, i32 %114, i32* %12, i32 1)
  store i32 %115, i32* %9, align 4
  %116 = load i32, i32* %9, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %112
  %119 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %120 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %119, i32 0, i32 0
  %121 = call i32 @dev_err(%struct.TYPE_7__* %120, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %122 = load i32, i32* %9, align 4
  store i32 %122, i32* %3, align 4
  br label %232

123:                                              ; preds = %112
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* @LTC2941_REG_STATUS_CHIP_ID, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = load %struct.ltc294x_info*, %struct.ltc294x_info** %7, align 8
  %130 = getelementptr inbounds %struct.ltc294x_info, %struct.ltc294x_info* %129, i32 0, i32 0
  store i32 131, i32* %130, align 8
  br label %134

131:                                              ; preds = %123
  %132 = load %struct.ltc294x_info*, %struct.ltc294x_info** %7, align 8
  %133 = getelementptr inbounds %struct.ltc294x_info, %struct.ltc294x_info* %132, i32 0, i32 0
  store i32 130, i32* %133, align 8
  br label %134

134:                                              ; preds = %131, %128
  br label %135

135:                                              ; preds = %134, %107
  %136 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %137 = load %struct.ltc294x_info*, %struct.ltc294x_info** %7, align 8
  %138 = getelementptr inbounds %struct.ltc294x_info, %struct.ltc294x_info* %137, i32 0, i32 6
  store %struct.i2c_client* %136, %struct.i2c_client** %138, align 8
  %139 = load i32, i32* @POWER_SUPPLY_TYPE_BATTERY, align 4
  %140 = load %struct.ltc294x_info*, %struct.ltc294x_info** %7, align 8
  %141 = getelementptr inbounds %struct.ltc294x_info, %struct.ltc294x_info* %140, i32 0, i32 5
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 6
  store i32 %139, i32* %142, align 4
  %143 = load i32, i32* @ltc294x_properties, align 4
  %144 = load %struct.ltc294x_info*, %struct.ltc294x_info** %7, align 8
  %145 = getelementptr inbounds %struct.ltc294x_info, %struct.ltc294x_info* %144, i32 0, i32 5
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 5
  store i32 %143, i32* %146, align 8
  %147 = load %struct.ltc294x_info*, %struct.ltc294x_info** %7, align 8
  %148 = getelementptr inbounds %struct.ltc294x_info, %struct.ltc294x_info* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  switch i32 %149, label %164 [
    i32 128, label %150
    i32 129, label %150
    i32 130, label %156
    i32 131, label %163
  ]

150:                                              ; preds = %135, %135
  %151 = load i32, i32* @ltc294x_properties, align 4
  %152 = call i32 @ARRAY_SIZE(i32 %151)
  %153 = load %struct.ltc294x_info*, %struct.ltc294x_info** %7, align 8
  %154 = getelementptr inbounds %struct.ltc294x_info, %struct.ltc294x_info* %153, i32 0, i32 5
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 4
  store i32 %152, i32* %155, align 4
  br label %171

156:                                              ; preds = %135
  %157 = load i32, i32* @ltc294x_properties, align 4
  %158 = call i32 @ARRAY_SIZE(i32 %157)
  %159 = sub nsw i32 %158, 1
  %160 = load %struct.ltc294x_info*, %struct.ltc294x_info** %7, align 8
  %161 = getelementptr inbounds %struct.ltc294x_info, %struct.ltc294x_info* %160, i32 0, i32 5
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 4
  store i32 %159, i32* %162, align 4
  br label %171

163:                                              ; preds = %135
  br label %164

164:                                              ; preds = %135, %163
  %165 = load i32, i32* @ltc294x_properties, align 4
  %166 = call i32 @ARRAY_SIZE(i32 %165)
  %167 = sub nsw i32 %166, 3
  %168 = load %struct.ltc294x_info*, %struct.ltc294x_info** %7, align 8
  %169 = getelementptr inbounds %struct.ltc294x_info, %struct.ltc294x_info* %168, i32 0, i32 5
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 4
  store i32 %167, i32* %170, align 4
  br label %171

171:                                              ; preds = %164, %156, %150
  %172 = load i32, i32* @ltc294x_get_property, align 4
  %173 = load %struct.ltc294x_info*, %struct.ltc294x_info** %7, align 8
  %174 = getelementptr inbounds %struct.ltc294x_info, %struct.ltc294x_info* %173, i32 0, i32 5
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 3
  store i32 %172, i32* %175, align 8
  %176 = load i32, i32* @ltc294x_set_property, align 4
  %177 = load %struct.ltc294x_info*, %struct.ltc294x_info** %7, align 8
  %178 = getelementptr inbounds %struct.ltc294x_info, %struct.ltc294x_info* %177, i32 0, i32 5
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 2
  store i32 %176, i32* %179, align 4
  %180 = load i32, i32* @ltc294x_property_is_writeable, align 4
  %181 = load %struct.ltc294x_info*, %struct.ltc294x_info** %7, align 8
  %182 = getelementptr inbounds %struct.ltc294x_info, %struct.ltc294x_info* %181, i32 0, i32 5
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 1
  store i32 %180, i32* %183, align 8
  %184 = load %struct.ltc294x_info*, %struct.ltc294x_info** %7, align 8
  %185 = getelementptr inbounds %struct.ltc294x_info, %struct.ltc294x_info* %184, i32 0, i32 5
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 0
  store i32* null, i32** %186, align 8
  %187 = load %struct.ltc294x_info*, %struct.ltc294x_info** %7, align 8
  %188 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %6, i32 0, i32 0
  store %struct.ltc294x_info* %187, %struct.ltc294x_info** %188, align 8
  %189 = load %struct.ltc294x_info*, %struct.ltc294x_info** %7, align 8
  %190 = getelementptr inbounds %struct.ltc294x_info, %struct.ltc294x_info* %189, i32 0, i32 3
  %191 = load i32, i32* @ltc294x_work, align 4
  %192 = call i32 @INIT_DELAYED_WORK(i32* %190, i32 %191)
  %193 = load %struct.ltc294x_info*, %struct.ltc294x_info** %7, align 8
  %194 = load i32, i32* %10, align 4
  %195 = call i32 @ltc294x_reset(%struct.ltc294x_info* %193, i32 %194)
  store i32 %195, i32* %9, align 4
  %196 = load i32, i32* %9, align 4
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %198, label %203

198:                                              ; preds = %171
  %199 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %200 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %199, i32 0, i32 0
  %201 = call i32 @dev_err(%struct.TYPE_7__* %200, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %202 = load i32, i32* %9, align 4
  store i32 %202, i32* %3, align 4
  br label %232

203:                                              ; preds = %171
  %204 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %205 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %204, i32 0, i32 0
  %206 = load %struct.ltc294x_info*, %struct.ltc294x_info** %7, align 8
  %207 = getelementptr inbounds %struct.ltc294x_info, %struct.ltc294x_info* %206, i32 0, i32 5
  %208 = call i32 @power_supply_register(%struct.TYPE_7__* %205, %struct.TYPE_8__* %207, %struct.power_supply_config* %6)
  %209 = load %struct.ltc294x_info*, %struct.ltc294x_info** %7, align 8
  %210 = getelementptr inbounds %struct.ltc294x_info, %struct.ltc294x_info* %209, i32 0, i32 4
  store i32 %208, i32* %210, align 8
  %211 = load %struct.ltc294x_info*, %struct.ltc294x_info** %7, align 8
  %212 = getelementptr inbounds %struct.ltc294x_info, %struct.ltc294x_info* %211, i32 0, i32 4
  %213 = load i32, i32* %212, align 8
  %214 = call i64 @IS_ERR(i32 %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %224

216:                                              ; preds = %203
  %217 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %218 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %217, i32 0, i32 0
  %219 = call i32 @dev_err(%struct.TYPE_7__* %218, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %220 = load %struct.ltc294x_info*, %struct.ltc294x_info** %7, align 8
  %221 = getelementptr inbounds %struct.ltc294x_info, %struct.ltc294x_info* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @PTR_ERR(i32 %222)
  store i32 %223, i32* %3, align 4
  br label %232

224:                                              ; preds = %203
  %225 = load %struct.ltc294x_info*, %struct.ltc294x_info** %7, align 8
  %226 = getelementptr inbounds %struct.ltc294x_info, %struct.ltc294x_info* %225, i32 0, i32 3
  %227 = load i32, i32* @LTC294X_WORK_DELAY, align 4
  %228 = load i32, i32* @HZ, align 4
  %229 = mul nsw i32 %227, %228
  %230 = call i32 @schedule_delayed_work(i32* %226, i32 %229)
  br label %231

231:                                              ; preds = %224
  store i32 0, i32* %3, align 4
  br label %232

232:                                              ; preds = %231, %216, %198, %118, %48, %20
  %233 = load i32, i32* %3, align 4
  ret i32 %233
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.ltc294x_info* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #2

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.ltc294x_info*) #2

declare dso_local %struct.device_node* @of_node_get(i32) #2

declare dso_local i64 @of_device_get_match_data(%struct.TYPE_7__*) #2

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #2

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*) #2

declare dso_local i32 @dev_warn(%struct.TYPE_7__*, i8*) #2

declare dso_local i32 @ltc294x_read_regs(%struct.i2c_client*, i32, i32*, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32) #2

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #2

declare dso_local i32 @ltc294x_reset(%struct.ltc294x_info*, i32) #2

declare dso_local i32 @power_supply_register(%struct.TYPE_7__*, %struct.TYPE_8__*, %struct.power_supply_config*) #2

declare dso_local i64 @IS_ERR(i32) #2

declare dso_local i32 @PTR_ERR(i32) #2

declare dso_local i32 @schedule_delayed_work(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
