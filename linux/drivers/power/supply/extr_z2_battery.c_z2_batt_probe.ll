; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_z2_battery.c_z2_batt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_z2_battery.c_z2_batt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.z2_battery_info* }
%struct.z2_battery_info = type { i64 }
%struct.i2c_device_id = type { i32 }
%struct.z2_charger = type { %struct.TYPE_5__, i32, i32, i32, %struct.i2c_client*, %struct.z2_battery_info*, i32 }
%struct.TYPE_5__ = type { %struct.z2_charger* }
%struct.power_supply_config = type { %struct.z2_charger* }

@.str = private unnamed_addr constant [78 x i8] c"Please set platform device platform_data to a valid z2_battery_info pointer!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_UNKNOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"BATT CHRG\00", align 1
@IRQ_TYPE_EDGE_BOTH = common dso_local global i32 0, align 4
@z2_charge_switch_irq = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"AC Detect\00", align 1
@z2_batt_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @z2_batt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @z2_batt_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.z2_charger*, align 8
  %9 = alloca %struct.z2_battery_info*, align 8
  %10 = alloca %struct.power_supply_config, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %7, align 4
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.z2_battery_info*, %struct.z2_battery_info** %13, align 8
  store %struct.z2_battery_info* %14, %struct.z2_battery_info** %9, align 8
  %15 = bitcast %struct.power_supply_config* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 8, i1 false)
  %16 = load %struct.z2_battery_info*, %struct.z2_battery_info** %9, align 8
  %17 = icmp eq %struct.z2_battery_info* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 0
  %21 = call i32 @dev_err(%struct.TYPE_4__* %20, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %173

24:                                               ; preds = %2
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.z2_charger* @kzalloc(i32 48, i32 %25)
  store %struct.z2_charger* %26, %struct.z2_charger** %8, align 8
  %27 = load %struct.z2_charger*, %struct.z2_charger** %8, align 8
  %28 = icmp eq %struct.z2_charger* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %173

32:                                               ; preds = %24
  %33 = load i32, i32* @POWER_SUPPLY_STATUS_UNKNOWN, align 4
  %34 = load %struct.z2_charger*, %struct.z2_charger** %8, align 8
  %35 = getelementptr inbounds %struct.z2_charger, %struct.z2_charger* %34, i32 0, i32 6
  store i32 %33, i32* %35, align 8
  %36 = load %struct.z2_battery_info*, %struct.z2_battery_info** %9, align 8
  %37 = load %struct.z2_charger*, %struct.z2_charger** %8, align 8
  %38 = getelementptr inbounds %struct.z2_charger, %struct.z2_charger* %37, i32 0, i32 5
  store %struct.z2_battery_info* %36, %struct.z2_battery_info** %38, align 8
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = load %struct.z2_charger*, %struct.z2_charger** %8, align 8
  %41 = getelementptr inbounds %struct.z2_charger, %struct.z2_charger* %40, i32 0, i32 4
  store %struct.i2c_client* %39, %struct.i2c_client** %41, align 8
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = load %struct.z2_charger*, %struct.z2_charger** %8, align 8
  %44 = call i32 @i2c_set_clientdata(%struct.i2c_client* %42, %struct.z2_charger* %43)
  %45 = load %struct.z2_charger*, %struct.z2_charger** %8, align 8
  %46 = getelementptr inbounds %struct.power_supply_config, %struct.power_supply_config* %10, i32 0, i32 0
  store %struct.z2_charger* %45, %struct.z2_charger** %46, align 8
  %47 = load %struct.z2_charger*, %struct.z2_charger** %8, align 8
  %48 = getelementptr inbounds %struct.z2_charger, %struct.z2_charger* %47, i32 0, i32 3
  %49 = call i32 @mutex_init(i32* %48)
  %50 = load %struct.z2_battery_info*, %struct.z2_battery_info** %9, align 8
  %51 = getelementptr inbounds %struct.z2_battery_info, %struct.z2_battery_info* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp sge i64 %52, 0
  br i1 %53, label %54, label %94

54:                                               ; preds = %32
  %55 = load %struct.z2_battery_info*, %struct.z2_battery_info** %9, align 8
  %56 = getelementptr inbounds %struct.z2_battery_info, %struct.z2_battery_info* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @gpio_is_valid(i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %94

60:                                               ; preds = %54
  %61 = load %struct.z2_battery_info*, %struct.z2_battery_info** %9, align 8
  %62 = getelementptr inbounds %struct.z2_battery_info, %struct.z2_battery_info* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @gpio_request(i64 %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %169

68:                                               ; preds = %60
  %69 = load %struct.z2_battery_info*, %struct.z2_battery_info** %9, align 8
  %70 = getelementptr inbounds %struct.z2_battery_info, %struct.z2_battery_info* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @gpio_direction_input(i64 %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %152

76:                                               ; preds = %68
  %77 = load %struct.z2_battery_info*, %struct.z2_battery_info** %9, align 8
  %78 = getelementptr inbounds %struct.z2_battery_info, %struct.z2_battery_info* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @gpio_to_irq(i64 %79)
  %81 = load i32, i32* @IRQ_TYPE_EDGE_BOTH, align 4
  %82 = call i32 @irq_set_irq_type(i32 %80, i32 %81)
  %83 = load %struct.z2_battery_info*, %struct.z2_battery_info** %9, align 8
  %84 = getelementptr inbounds %struct.z2_battery_info, %struct.z2_battery_info* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @gpio_to_irq(i64 %85)
  %87 = load i32, i32* @z2_charge_switch_irq, align 4
  %88 = load %struct.z2_charger*, %struct.z2_charger** %8, align 8
  %89 = call i32 @request_irq(i32 %86, i32 %87, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), %struct.z2_charger* %88)
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %76
  br label %133

93:                                               ; preds = %76
  br label %94

94:                                               ; preds = %93, %54, %32
  %95 = load %struct.z2_charger*, %struct.z2_charger** %8, align 8
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @z2_batt_ps_init(%struct.z2_charger* %95, i32 %96)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  br label %133

101:                                              ; preds = %94
  %102 = load %struct.z2_charger*, %struct.z2_charger** %8, align 8
  %103 = getelementptr inbounds %struct.z2_charger, %struct.z2_charger* %102, i32 0, i32 1
  %104 = load i32, i32* @z2_batt_work, align 4
  %105 = call i32 @INIT_WORK(i32* %103, i32 %104)
  %106 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %107 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %106, i32 0, i32 0
  %108 = load %struct.z2_charger*, %struct.z2_charger** %8, align 8
  %109 = getelementptr inbounds %struct.z2_charger, %struct.z2_charger* %108, i32 0, i32 0
  %110 = call i32 @power_supply_register(%struct.TYPE_4__* %107, %struct.TYPE_5__* %109, %struct.power_supply_config* %10)
  %111 = load %struct.z2_charger*, %struct.z2_charger** %8, align 8
  %112 = getelementptr inbounds %struct.z2_charger, %struct.z2_charger* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 4
  %113 = load %struct.z2_charger*, %struct.z2_charger** %8, align 8
  %114 = getelementptr inbounds %struct.z2_charger, %struct.z2_charger* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @IS_ERR(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %101
  %119 = load %struct.z2_charger*, %struct.z2_charger** %8, align 8
  %120 = getelementptr inbounds %struct.z2_charger, %struct.z2_charger* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @PTR_ERR(i32 %121)
  store i32 %122, i32* %6, align 4
  br label %127

123:                                              ; preds = %101
  %124 = load %struct.z2_charger*, %struct.z2_charger** %8, align 8
  %125 = getelementptr inbounds %struct.z2_charger, %struct.z2_charger* %124, i32 0, i32 1
  %126 = call i32 @schedule_work(i32* %125)
  store i32 0, i32* %3, align 4
  br label %173

127:                                              ; preds = %118
  %128 = load %struct.z2_charger*, %struct.z2_charger** %8, align 8
  %129 = getelementptr inbounds %struct.z2_charger, %struct.z2_charger* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load %struct.z2_charger*, %struct.z2_charger** %130, align 8
  %132 = call i32 @kfree(%struct.z2_charger* %131)
  br label %133

133:                                              ; preds = %127, %100, %92
  %134 = load %struct.z2_battery_info*, %struct.z2_battery_info** %9, align 8
  %135 = getelementptr inbounds %struct.z2_battery_info, %struct.z2_battery_info* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp sge i64 %136, 0
  br i1 %137, label %138, label %151

138:                                              ; preds = %133
  %139 = load %struct.z2_battery_info*, %struct.z2_battery_info** %9, align 8
  %140 = getelementptr inbounds %struct.z2_battery_info, %struct.z2_battery_info* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = call i64 @gpio_is_valid(i64 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %138
  %145 = load %struct.z2_battery_info*, %struct.z2_battery_info** %9, align 8
  %146 = getelementptr inbounds %struct.z2_battery_info, %struct.z2_battery_info* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = call i32 @gpio_to_irq(i64 %147)
  %149 = load %struct.z2_charger*, %struct.z2_charger** %8, align 8
  %150 = call i32 @free_irq(i32 %148, %struct.z2_charger* %149)
  br label %151

151:                                              ; preds = %144, %138, %133
  br label %152

152:                                              ; preds = %151, %75
  %153 = load %struct.z2_battery_info*, %struct.z2_battery_info** %9, align 8
  %154 = getelementptr inbounds %struct.z2_battery_info, %struct.z2_battery_info* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = icmp sge i64 %155, 0
  br i1 %156, label %157, label %168

157:                                              ; preds = %152
  %158 = load %struct.z2_battery_info*, %struct.z2_battery_info** %9, align 8
  %159 = getelementptr inbounds %struct.z2_battery_info, %struct.z2_battery_info* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = call i64 @gpio_is_valid(i64 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %157
  %164 = load %struct.z2_battery_info*, %struct.z2_battery_info** %9, align 8
  %165 = getelementptr inbounds %struct.z2_battery_info, %struct.z2_battery_info* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = call i32 @gpio_free(i64 %166)
  br label %168

168:                                              ; preds = %163, %157, %152
  br label %169

169:                                              ; preds = %168, %67
  %170 = load %struct.z2_charger*, %struct.z2_charger** %8, align 8
  %171 = call i32 @kfree(%struct.z2_charger* %170)
  %172 = load i32, i32* %6, align 4
  store i32 %172, i32* %3, align 4
  br label %173

173:                                              ; preds = %169, %123, %29, %18
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*) #2

declare dso_local %struct.z2_charger* @kzalloc(i32, i32) #2

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.z2_charger*) #2

declare dso_local i32 @mutex_init(i32*) #2

declare dso_local i64 @gpio_is_valid(i64) #2

declare dso_local i32 @gpio_request(i64, i8*) #2

declare dso_local i32 @gpio_direction_input(i64) #2

declare dso_local i32 @irq_set_irq_type(i32, i32) #2

declare dso_local i32 @gpio_to_irq(i64) #2

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.z2_charger*) #2

declare dso_local i32 @z2_batt_ps_init(%struct.z2_charger*, i32) #2

declare dso_local i32 @INIT_WORK(i32*, i32) #2

declare dso_local i32 @power_supply_register(%struct.TYPE_4__*, %struct.TYPE_5__*, %struct.power_supply_config*) #2

declare dso_local i64 @IS_ERR(i32) #2

declare dso_local i32 @PTR_ERR(i32) #2

declare dso_local i32 @schedule_work(i32*) #2

declare dso_local i32 @kfree(%struct.z2_charger*) #2

declare dso_local i32 @free_irq(i32, %struct.z2_charger*) #2

declare dso_local i32 @gpio_free(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
