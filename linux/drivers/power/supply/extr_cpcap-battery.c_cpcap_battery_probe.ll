; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_cpcap-battery.c_cpcap_battery_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_cpcap-battery.c_cpcap_battery_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.power_supply_desc = type { i8*, i32, i32, i32, i32 }
%struct.cpcap_battery_ddata = type { i32, %struct.TYPE_7__*, i32, %struct.TYPE_8__, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.of_device_id = type { i32 }
%struct.power_supply_config = type { %struct.cpcap_battery_ddata*, i32 }

@cpcap_battery_id_table = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"no configuration data found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CPCAP_REG_CCM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"battery\00", align 1
@POWER_SUPPLY_TYPE_BATTERY = common dso_local global i32 0, align 4
@cpcap_battery_props = common dso_local global i32 0, align 4
@cpcap_battery_get_property = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"failed to register power supply\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cpcap_battery_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpcap_battery_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.power_supply_desc*, align 8
  %5 = alloca %struct.cpcap_battery_ddata*, align 8
  %6 = alloca %struct.of_device_id*, align 8
  %7 = alloca %struct.power_supply_config, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = bitcast %struct.power_supply_config* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 16, i1 false)
  %10 = load i32, i32* @cpcap_battery_id_table, align 4
  %11 = call i32 @of_match_ptr(i32 %10)
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = call %struct.of_device_id* @of_match_device(i32 %11, %struct.TYPE_7__* %13)
  store %struct.of_device_id* %14, %struct.of_device_id** %6, align 8
  %15 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %16 = icmp ne %struct.of_device_id* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %175

20:                                               ; preds = %1
  %21 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %22 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %20
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = call i32 @dev_err(%struct.TYPE_7__* %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %175

31:                                               ; preds = %20
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i8* @devm_kzalloc(%struct.TYPE_7__* %33, i32 40, i32 %34)
  %36 = bitcast i8* %35 to %struct.cpcap_battery_ddata*
  store %struct.cpcap_battery_ddata* %36, %struct.cpcap_battery_ddata** %5, align 8
  %37 = load %struct.cpcap_battery_ddata*, %struct.cpcap_battery_ddata** %5, align 8
  %38 = icmp ne %struct.cpcap_battery_ddata* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %31
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %175

42:                                               ; preds = %31
  %43 = load %struct.cpcap_battery_ddata*, %struct.cpcap_battery_ddata** %5, align 8
  %44 = getelementptr inbounds %struct.cpcap_battery_ddata, %struct.cpcap_battery_ddata* %43, i32 0, i32 6
  %45 = call i32 @INIT_LIST_HEAD(i32* %44)
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = load %struct.cpcap_battery_ddata*, %struct.cpcap_battery_ddata** %5, align 8
  %49 = getelementptr inbounds %struct.cpcap_battery_ddata, %struct.cpcap_battery_ddata* %48, i32 0, i32 1
  store %struct.TYPE_7__* %47, %struct.TYPE_7__** %49, align 8
  %50 = load %struct.cpcap_battery_ddata*, %struct.cpcap_battery_ddata** %5, align 8
  %51 = getelementptr inbounds %struct.cpcap_battery_ddata, %struct.cpcap_battery_ddata* %50, i32 0, i32 3
  %52 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %53 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @memcpy(%struct.TYPE_8__* %51, i32 %54, i32 4)
  %56 = load %struct.cpcap_battery_ddata*, %struct.cpcap_battery_ddata** %5, align 8
  %57 = getelementptr inbounds %struct.cpcap_battery_ddata, %struct.cpcap_battery_ddata* %56, i32 0, i32 1
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @dev_get_regmap(i32 %60, i32* null)
  %62 = load %struct.cpcap_battery_ddata*, %struct.cpcap_battery_ddata** %5, align 8
  %63 = getelementptr inbounds %struct.cpcap_battery_ddata, %struct.cpcap_battery_ddata* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 8
  %64 = load %struct.cpcap_battery_ddata*, %struct.cpcap_battery_ddata** %5, align 8
  %65 = getelementptr inbounds %struct.cpcap_battery_ddata, %struct.cpcap_battery_ddata* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %42
  %69 = load i32, i32* @ENODEV, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %175

71:                                               ; preds = %42
  %72 = load %struct.cpcap_battery_ddata*, %struct.cpcap_battery_ddata** %5, align 8
  %73 = getelementptr inbounds %struct.cpcap_battery_ddata, %struct.cpcap_battery_ddata* %72, i32 0, i32 1
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = load %struct.cpcap_battery_ddata*, %struct.cpcap_battery_ddata** %5, align 8
  %76 = getelementptr inbounds %struct.cpcap_battery_ddata, %struct.cpcap_battery_ddata* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.cpcap_battery_ddata*, %struct.cpcap_battery_ddata** %5, align 8
  %79 = getelementptr inbounds %struct.cpcap_battery_ddata, %struct.cpcap_battery_ddata* %78, i32 0, i32 5
  %80 = call i32 @cpcap_get_vendor(%struct.TYPE_7__* %74, i32 %77, i32* %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %71
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %2, align 4
  br label %175

85:                                               ; preds = %71
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = load %struct.cpcap_battery_ddata*, %struct.cpcap_battery_ddata** %5, align 8
  %88 = call i32 @platform_set_drvdata(%struct.platform_device* %86, %struct.cpcap_battery_ddata* %87)
  %89 = load %struct.cpcap_battery_ddata*, %struct.cpcap_battery_ddata** %5, align 8
  %90 = getelementptr inbounds %struct.cpcap_battery_ddata, %struct.cpcap_battery_ddata* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @CPCAP_REG_CCM, align 4
  %93 = load %struct.cpcap_battery_ddata*, %struct.cpcap_battery_ddata** %5, align 8
  %94 = getelementptr inbounds %struct.cpcap_battery_ddata, %struct.cpcap_battery_ddata* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @regmap_update_bits(i32 %91, i32 %92, i32 65535, i32 %96)
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %85
  %101 = load i32, i32* %8, align 4
  store i32 %101, i32* %2, align 4
  br label %175

102:                                              ; preds = %85
  %103 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %104 = load %struct.cpcap_battery_ddata*, %struct.cpcap_battery_ddata** %5, align 8
  %105 = call i32 @cpcap_battery_init_interrupts(%struct.platform_device* %103, %struct.cpcap_battery_ddata* %104)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %102
  %109 = load i32, i32* %8, align 4
  store i32 %109, i32* %2, align 4
  br label %175

110:                                              ; preds = %102
  %111 = load %struct.cpcap_battery_ddata*, %struct.cpcap_battery_ddata** %5, align 8
  %112 = call i32 @cpcap_battery_init_iio(%struct.cpcap_battery_ddata* %111)
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %8, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = load i32, i32* %8, align 4
  store i32 %116, i32* %2, align 4
  br label %175

117:                                              ; preds = %110
  %118 = load %struct.cpcap_battery_ddata*, %struct.cpcap_battery_ddata** %5, align 8
  %119 = getelementptr inbounds %struct.cpcap_battery_ddata, %struct.cpcap_battery_ddata* %118, i32 0, i32 1
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %119, align 8
  %121 = load i32, i32* @GFP_KERNEL, align 4
  %122 = call i8* @devm_kzalloc(%struct.TYPE_7__* %120, i32 24, i32 %121)
  %123 = bitcast i8* %122 to %struct.power_supply_desc*
  store %struct.power_supply_desc* %123, %struct.power_supply_desc** %4, align 8
  %124 = load %struct.power_supply_desc*, %struct.power_supply_desc** %4, align 8
  %125 = icmp ne %struct.power_supply_desc* %124, null
  br i1 %125, label %129, label %126

126:                                              ; preds = %117
  %127 = load i32, i32* @ENOMEM, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %2, align 4
  br label %175

129:                                              ; preds = %117
  %130 = load %struct.power_supply_desc*, %struct.power_supply_desc** %4, align 8
  %131 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %130, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %131, align 8
  %132 = load i32, i32* @POWER_SUPPLY_TYPE_BATTERY, align 4
  %133 = load %struct.power_supply_desc*, %struct.power_supply_desc** %4, align 8
  %134 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %133, i32 0, i32 4
  store i32 %132, i32* %134, align 4
  %135 = load i32, i32* @cpcap_battery_props, align 4
  %136 = load %struct.power_supply_desc*, %struct.power_supply_desc** %4, align 8
  %137 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %136, i32 0, i32 3
  store i32 %135, i32* %137, align 8
  %138 = load i32, i32* @cpcap_battery_props, align 4
  %139 = call i32 @ARRAY_SIZE(i32 %138)
  %140 = load %struct.power_supply_desc*, %struct.power_supply_desc** %4, align 8
  %141 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %140, i32 0, i32 2
  store i32 %139, i32* %141, align 4
  %142 = load i32, i32* @cpcap_battery_get_property, align 4
  %143 = load %struct.power_supply_desc*, %struct.power_supply_desc** %4, align 8
  %144 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 8
  %145 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %146 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %7, i32 0, i32 1
  store i32 %148, i32* %149, align 8
  %150 = load %struct.cpcap_battery_ddata*, %struct.cpcap_battery_ddata** %5, align 8
  %151 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %7, i32 0, i32 0
  store %struct.cpcap_battery_ddata* %150, %struct.cpcap_battery_ddata** %151, align 8
  %152 = load %struct.cpcap_battery_ddata*, %struct.cpcap_battery_ddata** %5, align 8
  %153 = getelementptr inbounds %struct.cpcap_battery_ddata, %struct.cpcap_battery_ddata* %152, i32 0, i32 1
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %153, align 8
  %155 = load %struct.power_supply_desc*, %struct.power_supply_desc** %4, align 8
  %156 = call i32 @devm_power_supply_register(%struct.TYPE_7__* %154, %struct.power_supply_desc* %155, %struct.power_supply_config* %7)
  %157 = load %struct.cpcap_battery_ddata*, %struct.cpcap_battery_ddata** %5, align 8
  %158 = getelementptr inbounds %struct.cpcap_battery_ddata, %struct.cpcap_battery_ddata* %157, i32 0, i32 2
  store i32 %156, i32* %158, align 8
  %159 = load %struct.cpcap_battery_ddata*, %struct.cpcap_battery_ddata** %5, align 8
  %160 = getelementptr inbounds %struct.cpcap_battery_ddata, %struct.cpcap_battery_ddata* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @PTR_ERR_OR_ZERO(i32 %161)
  store i32 %162, i32* %8, align 4
  %163 = load i32, i32* %8, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %129
  %166 = load %struct.cpcap_battery_ddata*, %struct.cpcap_battery_ddata** %5, align 8
  %167 = getelementptr inbounds %struct.cpcap_battery_ddata, %struct.cpcap_battery_ddata* %166, i32 0, i32 1
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %167, align 8
  %169 = call i32 @dev_err(%struct.TYPE_7__* %168, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %170 = load i32, i32* %8, align 4
  store i32 %170, i32* %2, align 4
  br label %175

171:                                              ; preds = %129
  %172 = load %struct.cpcap_battery_ddata*, %struct.cpcap_battery_ddata** %5, align 8
  %173 = getelementptr inbounds %struct.cpcap_battery_ddata, %struct.cpcap_battery_ddata* %172, i32 0, i32 0
  %174 = call i32 @atomic_set(i32* %173, i32 1)
  store i32 0, i32* %2, align 4
  br label %175

175:                                              ; preds = %171, %165, %126, %115, %108, %100, %83, %68, %39, %25, %17
  %176 = load i32, i32* %2, align 4
  ret i32 %176
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_7__*) #2

declare dso_local i32 @of_match_ptr(i32) #2

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*) #2

declare dso_local i8* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #2

declare dso_local i32 @INIT_LIST_HEAD(i32*) #2

declare dso_local i32 @memcpy(%struct.TYPE_8__*, i32, i32) #2

declare dso_local i32 @dev_get_regmap(i32, i32*) #2

declare dso_local i32 @cpcap_get_vendor(%struct.TYPE_7__*, i32, i32*) #2

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.cpcap_battery_ddata*) #2

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #2

declare dso_local i32 @cpcap_battery_init_interrupts(%struct.platform_device*, %struct.cpcap_battery_ddata*) #2

declare dso_local i32 @cpcap_battery_init_iio(%struct.cpcap_battery_ddata*) #2

declare dso_local i32 @ARRAY_SIZE(i32) #2

declare dso_local i32 @devm_power_supply_register(%struct.TYPE_7__*, %struct.power_supply_desc*, %struct.power_supply_config*) #2

declare dso_local i32 @PTR_ERR_OR_ZERO(i32) #2

declare dso_local i32 @atomic_set(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
