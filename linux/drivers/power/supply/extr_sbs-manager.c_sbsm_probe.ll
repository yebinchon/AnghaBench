; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_sbs-manager.c_sbsm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_sbs-manager.c_sbsm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.device, %struct.i2c_adapter* }
%struct.device = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.sbsm_data = type { i32, i32, %struct.TYPE_4__*, i32, %struct.i2c_client* }
%struct.TYPE_4__ = type { %struct.sbsm_data* }
%struct.power_supply_desc = type { i32 }
%struct.power_supply_config = type { i32, %struct.sbsm_data* }

@EINVAL = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WORD_DATA = common dso_local global i32 0, align 4
@EPFNOSUPPORT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"ltc1760\00", align 1
@SBSM_CMD_BATSYSINFO = common dso_local global i32 0, align 4
@SBSM_MASK_BAT_SUPPORTED = common dso_local global i32 0, align 4
@SBSM_MAX_BATS = common dso_local global i32 0, align 4
@I2C_MUX_LOCKED = common dso_local global i32 0, align 4
@sbsm_select = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to alloc i2c mux\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"failed to register i2c mux channel %d\0A\00", align 1
@sbsm_default_psy_desc = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"sbsm-%s\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"failed to register power supply %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @sbsm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbsm_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %struct.sbsm_data*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.power_supply_desc*, align 8
  %10 = alloca %struct.power_supply_config, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 2
  %15 = load %struct.i2c_adapter*, %struct.i2c_adapter** %14, align 8
  store %struct.i2c_adapter* %15, %struct.i2c_adapter** %6, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 1
  store %struct.device* %17, %struct.device** %8, align 8
  %18 = bitcast %struct.power_supply_config* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 16, i1 false)
  store i32 0, i32* %11, align 4
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 10
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %197

26:                                               ; preds = %2
  %27 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %28 = load i32, i32* @I2C_FUNC_SMBUS_WORD_DATA, align 4
  %29 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @EPFNOSUPPORT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %197

34:                                               ; preds = %26
  %35 = load %struct.device*, %struct.device** %8, align 8
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.sbsm_data* @devm_kzalloc(%struct.device* %35, i32 32, i32 %36)
  store %struct.sbsm_data* %37, %struct.sbsm_data** %7, align 8
  %38 = load %struct.sbsm_data*, %struct.sbsm_data** %7, align 8
  %39 = icmp ne %struct.sbsm_data* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %197

43:                                               ; preds = %34
  %44 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %45 = load %struct.sbsm_data*, %struct.sbsm_data** %7, align 8
  %46 = call i32 @i2c_set_clientdata(%struct.i2c_client* %44, %struct.sbsm_data* %45)
  %47 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %48 = load %struct.sbsm_data*, %struct.sbsm_data** %7, align 8
  %49 = getelementptr inbounds %struct.sbsm_data, %struct.sbsm_data* %48, i32 0, i32 4
  store %struct.i2c_client* %47, %struct.i2c_client** %49, align 8
  %50 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %51 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @strstr(i32 %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = load %struct.sbsm_data*, %struct.sbsm_data** %7, align 8
  %59 = getelementptr inbounds %struct.sbsm_data, %struct.sbsm_data* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %61 = load i32, i32* @SBSM_CMD_BATSYSINFO, align 4
  %62 = call i32 @sbsm_read_word(%struct.i2c_client* %60, i32 %61)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %43
  %66 = load i32, i32* %11, align 4
  store i32 %66, i32* %3, align 4
  br label %197

67:                                               ; preds = %43
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* @SBSM_MASK_BAT_SUPPORTED, align 4
  %70 = and i32 %68, %69
  %71 = load %struct.sbsm_data*, %struct.sbsm_data** %7, align 8
  %72 = getelementptr inbounds %struct.sbsm_data, %struct.sbsm_data* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %74 = load %struct.device*, %struct.device** %8, align 8
  %75 = load i32, i32* @SBSM_MAX_BATS, align 4
  %76 = load i32, i32* @I2C_MUX_LOCKED, align 4
  %77 = call %struct.TYPE_4__* @i2c_mux_alloc(%struct.i2c_adapter* %73, %struct.device* %74, i32 %75, i32 0, i32 %76, i32* @sbsm_select, i32* null)
  %78 = load %struct.sbsm_data*, %struct.sbsm_data** %7, align 8
  %79 = getelementptr inbounds %struct.sbsm_data, %struct.sbsm_data* %78, i32 0, i32 2
  store %struct.TYPE_4__* %77, %struct.TYPE_4__** %79, align 8
  %80 = load %struct.sbsm_data*, %struct.sbsm_data** %7, align 8
  %81 = getelementptr inbounds %struct.sbsm_data, %struct.sbsm_data* %80, i32 0, i32 2
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = icmp ne %struct.TYPE_4__* %82, null
  br i1 %83, label %89, label %84

84:                                               ; preds = %67
  %85 = load %struct.device*, %struct.device** %8, align 8
  %86 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %85, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %11, align 4
  br label %195

89:                                               ; preds = %67
  %90 = load %struct.sbsm_data*, %struct.sbsm_data** %7, align 8
  %91 = load %struct.sbsm_data*, %struct.sbsm_data** %7, align 8
  %92 = getelementptr inbounds %struct.sbsm_data, %struct.sbsm_data* %91, i32 0, i32 2
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  store %struct.sbsm_data* %90, %struct.sbsm_data** %94, align 8
  store i32 0, i32* %12, align 4
  br label %95

95:                                               ; preds = %119, %89
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* @SBSM_MAX_BATS, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %122

99:                                               ; preds = %95
  %100 = load %struct.sbsm_data*, %struct.sbsm_data** %7, align 8
  %101 = getelementptr inbounds %struct.sbsm_data, %struct.sbsm_data* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %12, align 4
  %104 = call i32 @BIT(i32 %103)
  %105 = and i32 %102, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %118

107:                                              ; preds = %99
  %108 = load %struct.sbsm_data*, %struct.sbsm_data** %7, align 8
  %109 = getelementptr inbounds %struct.sbsm_data, %struct.sbsm_data* %108, i32 0, i32 2
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = load i32, i32* %12, align 4
  %112 = add nsw i32 %111, 1
  %113 = call i32 @i2c_mux_add_adapter(%struct.TYPE_4__* %110, i32 0, i32 %112, i32 0)
  store i32 %113, i32* %11, align 4
  %114 = load i32, i32* %11, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %107
  br label %122

117:                                              ; preds = %107
  br label %118

118:                                              ; preds = %117, %99
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %12, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %12, align 4
  br label %95

122:                                              ; preds = %116, %95
  %123 = load i32, i32* %11, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %122
  %126 = load %struct.device*, %struct.device** %8, align 8
  %127 = load i32, i32* %12, align 4
  %128 = add nsw i32 %127, 1
  %129 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %126, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %128)
  br label %190

130:                                              ; preds = %122
  %131 = load %struct.device*, %struct.device** %8, align 8
  %132 = load i32, i32* @GFP_KERNEL, align 4
  %133 = call %struct.power_supply_desc* @devm_kmemdup(%struct.device* %131, i32* @sbsm_default_psy_desc, i32 4, i32 %132)
  store %struct.power_supply_desc* %133, %struct.power_supply_desc** %9, align 8
  %134 = load %struct.power_supply_desc*, %struct.power_supply_desc** %9, align 8
  %135 = icmp ne %struct.power_supply_desc* %134, null
  br i1 %135, label %139, label %136

136:                                              ; preds = %130
  %137 = load i32, i32* @ENOMEM, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %11, align 4
  br label %189

139:                                              ; preds = %130
  %140 = load %struct.device*, %struct.device** %8, align 8
  %141 = load i32, i32* @GFP_KERNEL, align 4
  %142 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %143 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %142, i32 0, i32 1
  %144 = call i32 @dev_name(%struct.device* %143)
  %145 = call i32 @devm_kasprintf(%struct.device* %140, i32 %141, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %144)
  %146 = load %struct.power_supply_desc*, %struct.power_supply_desc** %9, align 8
  %147 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 4
  %148 = load %struct.power_supply_desc*, %struct.power_supply_desc** %9, align 8
  %149 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %155, label %152

152:                                              ; preds = %139
  %153 = load i32, i32* @ENOMEM, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %11, align 4
  br label %189

155:                                              ; preds = %139
  %156 = load %struct.sbsm_data*, %struct.sbsm_data** %7, align 8
  %157 = call i32 @sbsm_gpio_setup(%struct.sbsm_data* %156)
  store i32 %157, i32* %11, align 4
  %158 = load i32, i32* %11, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %155
  br label %189

161:                                              ; preds = %155
  %162 = load %struct.sbsm_data*, %struct.sbsm_data** %7, align 8
  %163 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %10, i32 0, i32 1
  store %struct.sbsm_data* %162, %struct.sbsm_data** %163, align 8
  %164 = load %struct.device*, %struct.device** %8, align 8
  %165 = getelementptr inbounds %struct.device, %struct.device* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %10, i32 0, i32 0
  store i32 %166, i32* %167, align 8
  %168 = load %struct.device*, %struct.device** %8, align 8
  %169 = load %struct.power_supply_desc*, %struct.power_supply_desc** %9, align 8
  %170 = call i32 @devm_power_supply_register(%struct.device* %168, %struct.power_supply_desc* %169, %struct.power_supply_config* %10)
  %171 = load %struct.sbsm_data*, %struct.sbsm_data** %7, align 8
  %172 = getelementptr inbounds %struct.sbsm_data, %struct.sbsm_data* %171, i32 0, i32 3
  store i32 %170, i32* %172, align 8
  %173 = load %struct.sbsm_data*, %struct.sbsm_data** %7, align 8
  %174 = getelementptr inbounds %struct.sbsm_data, %struct.sbsm_data* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 8
  %176 = call i64 @IS_ERR(i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %188

178:                                              ; preds = %161
  %179 = load %struct.sbsm_data*, %struct.sbsm_data** %7, align 8
  %180 = getelementptr inbounds %struct.sbsm_data, %struct.sbsm_data* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @PTR_ERR(i32 %181)
  store i32 %182, i32* %11, align 4
  %183 = load %struct.device*, %struct.device** %8, align 8
  %184 = load %struct.power_supply_desc*, %struct.power_supply_desc** %9, align 8
  %185 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %183, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %186)
  br label %189

188:                                              ; preds = %161
  store i32 0, i32* %3, align 4
  br label %197

189:                                              ; preds = %178, %160, %152, %136
  br label %190

190:                                              ; preds = %189, %125
  %191 = load %struct.sbsm_data*, %struct.sbsm_data** %7, align 8
  %192 = getelementptr inbounds %struct.sbsm_data, %struct.sbsm_data* %191, i32 0, i32 2
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %192, align 8
  %194 = call i32 @i2c_mux_del_adapters(%struct.TYPE_4__* %193)
  br label %195

195:                                              ; preds = %190, %84
  %196 = load i32, i32* %11, align 4
  store i32 %196, i32* %3, align 4
  br label %197

197:                                              ; preds = %195, %188, %65, %40, %31, %23
  %198 = load i32, i32* %3, align 4
  ret i32 %198
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #2

declare dso_local %struct.sbsm_data* @devm_kzalloc(%struct.device*, i32, i32) #2

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.sbsm_data*) #2

declare dso_local i32 @strstr(i32, i8*) #2

declare dso_local i32 @sbsm_read_word(%struct.i2c_client*, i32) #2

declare dso_local %struct.TYPE_4__* @i2c_mux_alloc(%struct.i2c_adapter*, %struct.device*, i32, i32, i32, i32*, i32*) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #2

declare dso_local i32 @BIT(i32) #2

declare dso_local i32 @i2c_mux_add_adapter(%struct.TYPE_4__*, i32, i32, i32) #2

declare dso_local %struct.power_supply_desc* @devm_kmemdup(%struct.device*, i32*, i32, i32) #2

declare dso_local i32 @devm_kasprintf(%struct.device*, i32, i8*, i32) #2

declare dso_local i32 @dev_name(%struct.device*) #2

declare dso_local i32 @sbsm_gpio_setup(%struct.sbsm_data*) #2

declare dso_local i32 @devm_power_supply_register(%struct.device*, %struct.power_supply_desc*, %struct.power_supply_config*) #2

declare dso_local i64 @IS_ERR(i32) #2

declare dso_local i32 @PTR_ERR(i32) #2

declare dso_local i32 @i2c_mux_del_adapters(%struct.TYPE_4__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
