; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_cpcap-charger.c_cpcap_charger_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_cpcap-charger.c_cpcap_charger_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.cpcap_charger_ddata = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.of_device_id = type { i32 }
%struct.power_supply_config = type { %struct.cpcap_charger_ddata*, i32 }

@cpcap_charger_id_table = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@cpcap_usb_detect = common dso_local global i32 0, align 4
@cpcap_charger_vbus_work = common dso_local global i32 0, align 4
@cpcap_charger_usb_desc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"failed to register USB charger: %i\0A\00", align 1
@cpcap_charger_set_vbus = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"charger needs phy, deferring probe\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cpcap_charger_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpcap_charger_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.cpcap_charger_ddata*, align 8
  %5 = alloca %struct.of_device_id*, align 8
  %6 = alloca %struct.power_supply_config, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = bitcast %struct.power_supply_config* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 16, i1 false)
  %9 = load i32, i32* @cpcap_charger_id_table, align 4
  %10 = call i32 @of_match_ptr(i32 %9)
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = call %struct.of_device_id* @of_match_device(i32 %10, %struct.TYPE_8__* %12)
  store %struct.of_device_id* %13, %struct.of_device_id** %5, align 8
  %14 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %15 = icmp ne %struct.of_device_id* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %136

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.cpcap_charger_ddata* @devm_kzalloc(%struct.TYPE_8__* %21, i32 40, i32 %22)
  store %struct.cpcap_charger_ddata* %23, %struct.cpcap_charger_ddata** %4, align 8
  %24 = load %struct.cpcap_charger_ddata*, %struct.cpcap_charger_ddata** %4, align 8
  %25 = icmp ne %struct.cpcap_charger_ddata* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %136

29:                                               ; preds = %19
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = load %struct.cpcap_charger_ddata*, %struct.cpcap_charger_ddata** %4, align 8
  %33 = getelementptr inbounds %struct.cpcap_charger_ddata, %struct.cpcap_charger_ddata* %32, i32 0, i32 1
  store %struct.TYPE_8__* %31, %struct.TYPE_8__** %33, align 8
  %34 = load %struct.cpcap_charger_ddata*, %struct.cpcap_charger_ddata** %4, align 8
  %35 = getelementptr inbounds %struct.cpcap_charger_ddata, %struct.cpcap_charger_ddata* %34, i32 0, i32 1
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_get_regmap(i32 %38, i32* null)
  %40 = load %struct.cpcap_charger_ddata*, %struct.cpcap_charger_ddata** %4, align 8
  %41 = getelementptr inbounds %struct.cpcap_charger_ddata, %struct.cpcap_charger_ddata* %40, i32 0, i32 7
  store i32 %39, i32* %41, align 4
  %42 = load %struct.cpcap_charger_ddata*, %struct.cpcap_charger_ddata** %4, align 8
  %43 = getelementptr inbounds %struct.cpcap_charger_ddata, %struct.cpcap_charger_ddata* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %29
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %136

49:                                               ; preds = %29
  %50 = load %struct.cpcap_charger_ddata*, %struct.cpcap_charger_ddata** %4, align 8
  %51 = getelementptr inbounds %struct.cpcap_charger_ddata, %struct.cpcap_charger_ddata* %50, i32 0, i32 6
  %52 = call i32 @INIT_LIST_HEAD(i32* %51)
  %53 = load %struct.cpcap_charger_ddata*, %struct.cpcap_charger_ddata** %4, align 8
  %54 = getelementptr inbounds %struct.cpcap_charger_ddata, %struct.cpcap_charger_ddata* %53, i32 0, i32 0
  %55 = load i32, i32* @cpcap_usb_detect, align 4
  %56 = call i32 @INIT_DELAYED_WORK(i32* %54, i32 %55)
  %57 = load %struct.cpcap_charger_ddata*, %struct.cpcap_charger_ddata** %4, align 8
  %58 = getelementptr inbounds %struct.cpcap_charger_ddata, %struct.cpcap_charger_ddata* %57, i32 0, i32 5
  %59 = load i32, i32* @cpcap_charger_vbus_work, align 4
  %60 = call i32 @INIT_DELAYED_WORK(i32* %58, i32 %59)
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = load %struct.cpcap_charger_ddata*, %struct.cpcap_charger_ddata** %4, align 8
  %63 = call i32 @platform_set_drvdata(%struct.platform_device* %61, %struct.cpcap_charger_ddata* %62)
  %64 = load %struct.cpcap_charger_ddata*, %struct.cpcap_charger_ddata** %4, align 8
  %65 = call i32 @cpcap_charger_init_iio(%struct.cpcap_charger_ddata* %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %49
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %2, align 4
  br label %136

70:                                               ; preds = %49
  %71 = load %struct.cpcap_charger_ddata*, %struct.cpcap_charger_ddata** %4, align 8
  %72 = getelementptr inbounds %struct.cpcap_charger_ddata, %struct.cpcap_charger_ddata* %71, i32 0, i32 4
  %73 = call i32 @atomic_set(i32* %72, i32 1)
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %6, i32 0, i32 1
  store i32 %77, i32* %78, align 8
  %79 = load %struct.cpcap_charger_ddata*, %struct.cpcap_charger_ddata** %4, align 8
  %80 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %6, i32 0, i32 0
  store %struct.cpcap_charger_ddata* %79, %struct.cpcap_charger_ddata** %80, align 8
  %81 = load %struct.cpcap_charger_ddata*, %struct.cpcap_charger_ddata** %4, align 8
  %82 = getelementptr inbounds %struct.cpcap_charger_ddata, %struct.cpcap_charger_ddata* %81, i32 0, i32 1
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = call i32 @devm_power_supply_register(%struct.TYPE_8__* %83, i32* @cpcap_charger_usb_desc, %struct.power_supply_config* %6)
  %85 = load %struct.cpcap_charger_ddata*, %struct.cpcap_charger_ddata** %4, align 8
  %86 = getelementptr inbounds %struct.cpcap_charger_ddata, %struct.cpcap_charger_ddata* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  %87 = load %struct.cpcap_charger_ddata*, %struct.cpcap_charger_ddata** %4, align 8
  %88 = getelementptr inbounds %struct.cpcap_charger_ddata, %struct.cpcap_charger_ddata* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @IS_ERR(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %70
  %93 = load %struct.cpcap_charger_ddata*, %struct.cpcap_charger_ddata** %4, align 8
  %94 = getelementptr inbounds %struct.cpcap_charger_ddata, %struct.cpcap_charger_ddata* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @PTR_ERR(i32 %95)
  store i32 %96, i32* %7, align 4
  %97 = load %struct.cpcap_charger_ddata*, %struct.cpcap_charger_ddata** %4, align 8
  %98 = getelementptr inbounds %struct.cpcap_charger_ddata, %struct.cpcap_charger_ddata* %97, i32 0, i32 1
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @dev_err(%struct.TYPE_8__* %99, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* %7, align 4
  store i32 %102, i32* %2, align 4
  br label %136

103:                                              ; preds = %70
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = load %struct.cpcap_charger_ddata*, %struct.cpcap_charger_ddata** %4, align 8
  %106 = call i32 @cpcap_usb_init_interrupts(%struct.platform_device* %104, %struct.cpcap_charger_ddata* %105)
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %7, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %103
  %110 = load i32, i32* %7, align 4
  store i32 %110, i32* %2, align 4
  br label %136

111:                                              ; preds = %103
  %112 = load i32, i32* @cpcap_charger_set_vbus, align 4
  %113 = load %struct.cpcap_charger_ddata*, %struct.cpcap_charger_ddata** %4, align 8
  %114 = getelementptr inbounds %struct.cpcap_charger_ddata, %struct.cpcap_charger_ddata* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  store i32 %112, i32* %115, align 8
  %116 = load %struct.cpcap_charger_ddata*, %struct.cpcap_charger_ddata** %4, align 8
  %117 = getelementptr inbounds %struct.cpcap_charger_ddata, %struct.cpcap_charger_ddata* %116, i32 0, i32 2
  %118 = call i32 @omap_usb2_set_comparator(%struct.TYPE_7__* %117)
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* @ENODEV, align 4
  %121 = sub nsw i32 0, %120
  %122 = icmp eq i32 %119, %121
  br i1 %122, label %123, label %130

123:                                              ; preds = %111
  %124 = load %struct.cpcap_charger_ddata*, %struct.cpcap_charger_ddata** %4, align 8
  %125 = getelementptr inbounds %struct.cpcap_charger_ddata, %struct.cpcap_charger_ddata* %124, i32 0, i32 1
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %125, align 8
  %127 = call i32 @dev_info(%struct.TYPE_8__* %126, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %128 = load i32, i32* @EPROBE_DEFER, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %2, align 4
  br label %136

130:                                              ; preds = %111
  %131 = load %struct.cpcap_charger_ddata*, %struct.cpcap_charger_ddata** %4, align 8
  %132 = call i32 @cpcap_charger_init_optional_gpios(%struct.cpcap_charger_ddata* %131)
  %133 = load %struct.cpcap_charger_ddata*, %struct.cpcap_charger_ddata** %4, align 8
  %134 = getelementptr inbounds %struct.cpcap_charger_ddata, %struct.cpcap_charger_ddata* %133, i32 0, i32 0
  %135 = call i32 @schedule_delayed_work(i32* %134, i32 0)
  store i32 0, i32* %2, align 4
  br label %136

136:                                              ; preds = %130, %123, %109, %92, %68, %46, %26, %16
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_8__*) #2

declare dso_local i32 @of_match_ptr(i32) #2

declare dso_local %struct.cpcap_charger_ddata* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #2

declare dso_local i32 @dev_get_regmap(i32, i32*) #2

declare dso_local i32 @INIT_LIST_HEAD(i32*) #2

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #2

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.cpcap_charger_ddata*) #2

declare dso_local i32 @cpcap_charger_init_iio(%struct.cpcap_charger_ddata*) #2

declare dso_local i32 @atomic_set(i32*, i32) #2

declare dso_local i32 @devm_power_supply_register(%struct.TYPE_8__*, i32*, %struct.power_supply_config*) #2

declare dso_local i64 @IS_ERR(i32) #2

declare dso_local i32 @PTR_ERR(i32) #2

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*, i32) #2

declare dso_local i32 @cpcap_usb_init_interrupts(%struct.platform_device*, %struct.cpcap_charger_ddata*) #2

declare dso_local i32 @omap_usb2_set_comparator(%struct.TYPE_7__*) #2

declare dso_local i32 @dev_info(%struct.TYPE_8__*, i8*) #2

declare dso_local i32 @cpcap_charger_init_optional_gpios(%struct.cpcap_charger_ddata*) #2

declare dso_local i32 @schedule_delayed_work(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
