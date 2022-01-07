; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9030_battery.c_da9030_battery_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9030_battery.c_da9030_battery_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.da9030_battery_info* }
%struct.da9030_battery_info = type { i32, i32, i32, i32, i32, i64 }
%struct.da9030_charger = type { i32, i32, i32, %struct.TYPE_6__, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.power_supply_config = type { %struct.da9030_charger* }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@da9030_charging_monitor = common dso_local global i32 0, align 4
@da9030_battery_event = common dso_local global i32 0, align 4
@DA9030_EVENT_CHDET = common dso_local global i32 0, align 4
@DA9030_EVENT_VBATMON = common dso_local global i32 0, align 4
@DA9030_EVENT_CHIOVER = common dso_local global i32 0, align 4
@DA9030_EVENT_TBAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @da9030_battery_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9030_battery_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.da9030_charger*, align 8
  %5 = alloca %struct.power_supply_config, align 8
  %6 = alloca %struct.da9030_battery_info*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = bitcast %struct.power_supply_config* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 8, i1 false)
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load %struct.da9030_battery_info*, %struct.da9030_battery_info** %11, align 8
  store %struct.da9030_battery_info* %12, %struct.da9030_battery_info** %6, align 8
  %13 = load %struct.da9030_battery_info*, %struct.da9030_battery_info** %6, align 8
  %14 = icmp eq %struct.da9030_battery_info* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %180

18:                                               ; preds = %1
  %19 = load %struct.da9030_battery_info*, %struct.da9030_battery_info** %6, align 8
  %20 = getelementptr inbounds %struct.da9030_battery_info, %struct.da9030_battery_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sge i32 %21, 1500
  br i1 %22, label %33, label %23

23:                                               ; preds = %18
  %24 = load %struct.da9030_battery_info*, %struct.da9030_battery_info** %6, align 8
  %25 = getelementptr inbounds %struct.da9030_battery_info, %struct.da9030_battery_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %26, 4000
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load %struct.da9030_battery_info*, %struct.da9030_battery_info** %6, align 8
  %30 = getelementptr inbounds %struct.da9030_battery_info, %struct.da9030_battery_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp sgt i32 %31, 4350
  br i1 %32, label %33, label %36

33:                                               ; preds = %28, %23, %18
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %180

36:                                               ; preds = %28
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.da9030_charger* @devm_kzalloc(%struct.TYPE_5__* %38, i32 48, i32 %39)
  store %struct.da9030_charger* %40, %struct.da9030_charger** %4, align 8
  %41 = load %struct.da9030_charger*, %struct.da9030_charger** %4, align 8
  %42 = icmp eq %struct.da9030_charger* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %180

46:                                               ; preds = %36
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.da9030_charger*, %struct.da9030_charger** %4, align 8
  %52 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 4
  %53 = load %struct.da9030_battery_info*, %struct.da9030_battery_info** %6, align 8
  %54 = getelementptr inbounds %struct.da9030_battery_info, %struct.da9030_battery_info* %53, i32 0, i32 5
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %46
  br label %59

58:                                               ; preds = %46
  br label %59

59:                                               ; preds = %58, %57
  %60 = phi i64 [ %55, %57 ], [ 10, %58 ]
  %61 = mul nsw i64 %60, 1000
  %62 = trunc i64 %61 to i32
  %63 = call i32 @msecs_to_jiffies(i32 %62)
  %64 = load %struct.da9030_charger*, %struct.da9030_charger** %4, align 8
  %65 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %64, i32 0, i32 8
  store i32 %63, i32* %65, align 4
  %66 = load %struct.da9030_battery_info*, %struct.da9030_battery_info** %6, align 8
  %67 = getelementptr inbounds %struct.da9030_battery_info, %struct.da9030_battery_info* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.da9030_charger*, %struct.da9030_charger** %4, align 8
  %70 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load %struct.da9030_battery_info*, %struct.da9030_battery_info** %6, align 8
  %72 = getelementptr inbounds %struct.da9030_battery_info, %struct.da9030_battery_info* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.da9030_charger*, %struct.da9030_charger** %4, align 8
  %75 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load %struct.da9030_battery_info*, %struct.da9030_battery_info** %6, align 8
  %77 = getelementptr inbounds %struct.da9030_battery_info, %struct.da9030_battery_info* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.da9030_charger*, %struct.da9030_charger** %4, align 8
  %80 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %79, i32 0, i32 11
  store i32 %78, i32* %80, align 4
  %81 = load %struct.da9030_battery_info*, %struct.da9030_battery_info** %6, align 8
  %82 = getelementptr inbounds %struct.da9030_battery_info, %struct.da9030_battery_info* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.da9030_charger*, %struct.da9030_charger** %4, align 8
  %85 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %84, i32 0, i32 10
  store i32 %83, i32* %85, align 4
  %86 = load %struct.da9030_battery_info*, %struct.da9030_battery_info** %6, align 8
  %87 = getelementptr inbounds %struct.da9030_battery_info, %struct.da9030_battery_info* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.da9030_charger*, %struct.da9030_charger** %4, align 8
  %90 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %89, i32 0, i32 9
  store i32 %88, i32* %90, align 4
  %91 = load %struct.da9030_charger*, %struct.da9030_charger** %4, align 8
  %92 = load %struct.da9030_battery_info*, %struct.da9030_battery_info** %6, align 8
  %93 = call i32 @da9030_battery_convert_thresholds(%struct.da9030_charger* %91, %struct.da9030_battery_info* %92)
  %94 = load %struct.da9030_charger*, %struct.da9030_charger** %4, align 8
  %95 = call i32 @da9030_battery_charger_init(%struct.da9030_charger* %94)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %59
  br label %178

99:                                               ; preds = %59
  %100 = load %struct.da9030_charger*, %struct.da9030_charger** %4, align 8
  %101 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %100, i32 0, i32 2
  %102 = load i32, i32* @da9030_charging_monitor, align 4
  %103 = call i32 @INIT_DELAYED_WORK(i32* %101, i32 %102)
  %104 = load %struct.da9030_charger*, %struct.da9030_charger** %4, align 8
  %105 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %104, i32 0, i32 2
  %106 = load %struct.da9030_charger*, %struct.da9030_charger** %4, align 8
  %107 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %106, i32 0, i32 8
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @schedule_delayed_work(i32* %105, i32 %108)
  %110 = load i32, i32* @da9030_battery_event, align 4
  %111 = load %struct.da9030_charger*, %struct.da9030_charger** %4, align 8
  %112 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  store i32 %110, i32* %113, align 4
  %114 = load %struct.da9030_charger*, %struct.da9030_charger** %4, align 8
  %115 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.da9030_charger*, %struct.da9030_charger** %4, align 8
  %118 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %117, i32 0, i32 3
  %119 = load i32, i32* @DA9030_EVENT_CHDET, align 4
  %120 = load i32, i32* @DA9030_EVENT_VBATMON, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @DA9030_EVENT_CHIOVER, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @DA9030_EVENT_TBAT, align 4
  %125 = or i32 %123, %124
  %126 = call i32 @da903x_register_notifier(i32 %116, %struct.TYPE_6__* %118, i32 %125)
  store i32 %126, i32* %7, align 4
  %127 = load i32, i32* %7, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %99
  br label %174

130:                                              ; preds = %99
  %131 = load %struct.da9030_charger*, %struct.da9030_charger** %4, align 8
  %132 = call i32 @da9030_battery_setup_psy(%struct.da9030_charger* %131)
  %133 = load %struct.da9030_charger*, %struct.da9030_charger** %4, align 8
  %134 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %5, i32 0, i32 0
  store %struct.da9030_charger* %133, %struct.da9030_charger** %134, align 8
  %135 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %136 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %135, i32 0, i32 0
  %137 = load %struct.da9030_charger*, %struct.da9030_charger** %4, align 8
  %138 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %137, i32 0, i32 7
  %139 = call i32 @power_supply_register(%struct.TYPE_5__* %136, i32* %138, %struct.power_supply_config* %5)
  %140 = load %struct.da9030_charger*, %struct.da9030_charger** %4, align 8
  %141 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %140, i32 0, i32 6
  store i32 %139, i32* %141, align 4
  %142 = load %struct.da9030_charger*, %struct.da9030_charger** %4, align 8
  %143 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %142, i32 0, i32 6
  %144 = load i32, i32* %143, align 4
  %145 = call i64 @IS_ERR(i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %130
  %148 = load %struct.da9030_charger*, %struct.da9030_charger** %4, align 8
  %149 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %148, i32 0, i32 6
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @PTR_ERR(i32 %150)
  store i32 %151, i32* %7, align 4
  br label %160

152:                                              ; preds = %130
  %153 = load %struct.da9030_charger*, %struct.da9030_charger** %4, align 8
  %154 = call i32 @da9030_bat_create_debugfs(%struct.da9030_charger* %153)
  %155 = load %struct.da9030_charger*, %struct.da9030_charger** %4, align 8
  %156 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %155, i32 0, i32 5
  store i32 %154, i32* %156, align 4
  %157 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %158 = load %struct.da9030_charger*, %struct.da9030_charger** %4, align 8
  %159 = call i32 @platform_set_drvdata(%struct.platform_device* %157, %struct.da9030_charger* %158)
  store i32 0, i32* %2, align 4
  br label %180

160:                                              ; preds = %147
  %161 = load %struct.da9030_charger*, %struct.da9030_charger** %4, align 8
  %162 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.da9030_charger*, %struct.da9030_charger** %4, align 8
  %165 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %164, i32 0, i32 3
  %166 = load i32, i32* @DA9030_EVENT_CHDET, align 4
  %167 = load i32, i32* @DA9030_EVENT_VBATMON, align 4
  %168 = or i32 %166, %167
  %169 = load i32, i32* @DA9030_EVENT_CHIOVER, align 4
  %170 = or i32 %168, %169
  %171 = load i32, i32* @DA9030_EVENT_TBAT, align 4
  %172 = or i32 %170, %171
  %173 = call i32 @da903x_unregister_notifier(i32 %163, %struct.TYPE_6__* %165, i32 %172)
  br label %174

174:                                              ; preds = %160, %129
  %175 = load %struct.da9030_charger*, %struct.da9030_charger** %4, align 8
  %176 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %175, i32 0, i32 2
  %177 = call i32 @cancel_delayed_work(i32* %176)
  br label %178

178:                                              ; preds = %174, %98
  %179 = load i32, i32* %7, align 4
  store i32 %179, i32* %2, align 4
  br label %180

180:                                              ; preds = %178, %152, %43, %33, %15
  %181 = load i32, i32* %2, align 4
  ret i32 %181
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.da9030_charger* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #2

declare dso_local i32 @msecs_to_jiffies(i32) #2

declare dso_local i32 @da9030_battery_convert_thresholds(%struct.da9030_charger*, %struct.da9030_battery_info*) #2

declare dso_local i32 @da9030_battery_charger_init(%struct.da9030_charger*) #2

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #2

declare dso_local i32 @schedule_delayed_work(i32*, i32) #2

declare dso_local i32 @da903x_register_notifier(i32, %struct.TYPE_6__*, i32) #2

declare dso_local i32 @da9030_battery_setup_psy(%struct.da9030_charger*) #2

declare dso_local i32 @power_supply_register(%struct.TYPE_5__*, i32*, %struct.power_supply_config*) #2

declare dso_local i64 @IS_ERR(i32) #2

declare dso_local i32 @PTR_ERR(i32) #2

declare dso_local i32 @da9030_bat_create_debugfs(%struct.da9030_charger*) #2

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.da9030_charger*) #2

declare dso_local i32 @da903x_unregister_notifier(i32, %struct.TYPE_6__*, i32) #2

declare dso_local i32 @cancel_delayed_work(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
