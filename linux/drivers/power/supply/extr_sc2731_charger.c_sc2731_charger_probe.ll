; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_sc2731_charger.c_sc2731_charger_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_sc2731_charger.c_sc2731_charger_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.device_node* }
%struct.device_node = type { i32 }
%struct.sc2731_charger_info = type { %struct.TYPE_6__, i32, i32, i32, i32, i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.power_supply_config = type { %struct.device_node*, %struct.sc2731_charger_info* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sc2731_charger_work = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to get charger regmap\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"failed to get register address\0A\00", align 1
@sc2731_charger_desc = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"failed to register power supply\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"phys\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"failed to find USB phy\0A\00", align 1
@sc2731_charger_usb_change = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"failed to register notifier: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sc2731_charger_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sc2731_charger_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.sc2731_charger_info*, align 8
  %6 = alloca %struct.power_supply_config, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %4, align 8
  %12 = bitcast %struct.power_supply_config* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 16, i1 false)
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.sc2731_charger_info* @devm_kzalloc(%struct.TYPE_7__* %14, i32 40, i32 %15)
  store %struct.sc2731_charger_info* %16, %struct.sc2731_charger_info** %5, align 8
  %17 = load %struct.sc2731_charger_info*, %struct.sc2731_charger_info** %5, align 8
  %18 = icmp ne %struct.sc2731_charger_info* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %135

22:                                               ; preds = %1
  %23 = load %struct.sc2731_charger_info*, %struct.sc2731_charger_info** %5, align 8
  %24 = getelementptr inbounds %struct.sc2731_charger_info, %struct.sc2731_charger_info* %23, i32 0, i32 7
  %25 = call i32 @mutex_init(i32* %24)
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = load %struct.sc2731_charger_info*, %struct.sc2731_charger_info** %5, align 8
  %29 = getelementptr inbounds %struct.sc2731_charger_info, %struct.sc2731_charger_info* %28, i32 0, i32 6
  store %struct.TYPE_7__* %27, %struct.TYPE_7__** %29, align 8
  %30 = load %struct.sc2731_charger_info*, %struct.sc2731_charger_info** %5, align 8
  %31 = getelementptr inbounds %struct.sc2731_charger_info, %struct.sc2731_charger_info* %30, i32 0, i32 5
  %32 = load i32, i32* @sc2731_charger_work, align 4
  %33 = call i32 @INIT_WORK(i32* %31, i32 %32)
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @dev_get_regmap(i32 %37, i32* null)
  %39 = load %struct.sc2731_charger_info*, %struct.sc2731_charger_info** %5, align 8
  %40 = getelementptr inbounds %struct.sc2731_charger_info, %struct.sc2731_charger_info* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 8
  %41 = load %struct.sc2731_charger_info*, %struct.sc2731_charger_info** %5, align 8
  %42 = getelementptr inbounds %struct.sc2731_charger_info, %struct.sc2731_charger_info* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %22
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %47, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @ENODEV, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %135

51:                                               ; preds = %22
  %52 = load %struct.device_node*, %struct.device_node** %4, align 8
  %53 = load %struct.sc2731_charger_info*, %struct.sc2731_charger_info** %5, align 8
  %54 = getelementptr inbounds %struct.sc2731_charger_info, %struct.sc2731_charger_info* %53, i32 0, i32 3
  %55 = call i32 @of_property_read_u32(%struct.device_node* %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %51
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %60, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %62 = load i32, i32* @ENODEV, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %135

64:                                               ; preds = %51
  %65 = load %struct.sc2731_charger_info*, %struct.sc2731_charger_info** %5, align 8
  %66 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %6, i32 0, i32 1
  store %struct.sc2731_charger_info* %65, %struct.sc2731_charger_info** %66, align 8
  %67 = load %struct.device_node*, %struct.device_node** %4, align 8
  %68 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %6, i32 0, i32 0
  store %struct.device_node* %67, %struct.device_node** %68, align 8
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = call i32 @devm_power_supply_register(%struct.TYPE_7__* %70, i32* @sc2731_charger_desc, %struct.power_supply_config* %6)
  %72 = load %struct.sc2731_charger_info*, %struct.sc2731_charger_info** %5, align 8
  %73 = getelementptr inbounds %struct.sc2731_charger_info, %struct.sc2731_charger_info* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  %74 = load %struct.sc2731_charger_info*, %struct.sc2731_charger_info** %5, align 8
  %75 = getelementptr inbounds %struct.sc2731_charger_info, %struct.sc2731_charger_info* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @IS_ERR(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %64
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 0
  %82 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %81, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %83 = load %struct.sc2731_charger_info*, %struct.sc2731_charger_info** %5, align 8
  %84 = getelementptr inbounds %struct.sc2731_charger_info, %struct.sc2731_charger_info* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @PTR_ERR(i32 %85)
  store i32 %86, i32* %2, align 4
  br label %135

87:                                               ; preds = %64
  %88 = load %struct.sc2731_charger_info*, %struct.sc2731_charger_info** %5, align 8
  %89 = call i32 @sc2731_charger_hw_init(%struct.sc2731_charger_info* %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = load i32, i32* %7, align 4
  store i32 %93, i32* %2, align 4
  br label %135

94:                                               ; preds = %87
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %95, i32 0, i32 0
  %97 = call i32 @devm_usb_get_phy_by_phandle(%struct.TYPE_7__* %96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %98 = load %struct.sc2731_charger_info*, %struct.sc2731_charger_info** %5, align 8
  %99 = getelementptr inbounds %struct.sc2731_charger_info, %struct.sc2731_charger_info* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load %struct.sc2731_charger_info*, %struct.sc2731_charger_info** %5, align 8
  %101 = getelementptr inbounds %struct.sc2731_charger_info, %struct.sc2731_charger_info* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @IS_ERR(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %94
  %106 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %107 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %106, i32 0, i32 0
  %108 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %107, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %109 = load %struct.sc2731_charger_info*, %struct.sc2731_charger_info** %5, align 8
  %110 = getelementptr inbounds %struct.sc2731_charger_info, %struct.sc2731_charger_info* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @PTR_ERR(i32 %111)
  store i32 %112, i32* %2, align 4
  br label %135

113:                                              ; preds = %94
  %114 = load i32, i32* @sc2731_charger_usb_change, align 4
  %115 = load %struct.sc2731_charger_info*, %struct.sc2731_charger_info** %5, align 8
  %116 = getelementptr inbounds %struct.sc2731_charger_info, %struct.sc2731_charger_info* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  store i32 %114, i32* %117, align 8
  %118 = load %struct.sc2731_charger_info*, %struct.sc2731_charger_info** %5, align 8
  %119 = getelementptr inbounds %struct.sc2731_charger_info, %struct.sc2731_charger_info* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.sc2731_charger_info*, %struct.sc2731_charger_info** %5, align 8
  %122 = getelementptr inbounds %struct.sc2731_charger_info, %struct.sc2731_charger_info* %121, i32 0, i32 0
  %123 = call i32 @usb_register_notifier(i32 %120, %struct.TYPE_6__* %122)
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* %7, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %113
  %127 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %128 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %127, i32 0, i32 0
  %129 = load i32, i32* %7, align 4
  %130 = call i32 (%struct.TYPE_7__*, i8*, ...) @dev_err(%struct.TYPE_7__* %128, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %129)
  %131 = load i32, i32* %7, align 4
  store i32 %131, i32* %2, align 4
  br label %135

132:                                              ; preds = %113
  %133 = load %struct.sc2731_charger_info*, %struct.sc2731_charger_info** %5, align 8
  %134 = call i32 @sc2731_charger_detect_status(%struct.sc2731_charger_info* %133)
  store i32 0, i32* %2, align 4
  br label %135

135:                                              ; preds = %132, %126, %105, %92, %79, %58, %45, %19
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.sc2731_charger_info* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #2

declare dso_local i32 @mutex_init(i32*) #2

declare dso_local i32 @INIT_WORK(i32*, i32) #2

declare dso_local i32 @dev_get_regmap(i32, i32*) #2

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, ...) #2

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #2

declare dso_local i32 @devm_power_supply_register(%struct.TYPE_7__*, i32*, %struct.power_supply_config*) #2

declare dso_local i64 @IS_ERR(i32) #2

declare dso_local i32 @PTR_ERR(i32) #2

declare dso_local i32 @sc2731_charger_hw_init(%struct.sc2731_charger_info*) #2

declare dso_local i32 @devm_usb_get_phy_by_phandle(%struct.TYPE_7__*, i8*, i32) #2

declare dso_local i32 @usb_register_notifier(i32, %struct.TYPE_6__*) #2

declare dso_local i32 @sc2731_charger_detect_status(%struct.sc2731_charger_info*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
