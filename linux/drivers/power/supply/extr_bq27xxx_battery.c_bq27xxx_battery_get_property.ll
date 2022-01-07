; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq27xxx_battery.c_bq27xxx_battery_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq27xxx_battery.c_bq27xxx_battery_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.bq27xxx_device_info = type { %struct.TYPE_3__, i32, i32, %struct.TYPE_4__, i64 }
%struct.TYPE_3__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@HZ = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@POWER_SUPPLY_TECHNOLOGY_LION = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@BQ27XXX_MANUFACTURER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @bq27xxx_battery_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq27xxx_battery_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bq27xxx_device_info*, align 8
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %11 = call %struct.bq27xxx_device_info* @power_supply_get_drvdata(%struct.power_supply* %10)
  store %struct.bq27xxx_device_info* %11, %struct.bq27xxx_device_info** %9, align 8
  %12 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %9, align 8
  %13 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %12, i32 0, i32 2
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %9, align 8
  %16 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* @HZ, align 4
  %19 = mul nsw i32 5, %18
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %17, %20
  %22 = call i64 @time_is_before_jiffies(i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %3
  %25 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %9, align 8
  %26 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %25, i32 0, i32 3
  %27 = call i32 @cancel_delayed_work_sync(%struct.TYPE_4__* %26)
  %28 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %9, align 8
  %29 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = call i32 @bq27xxx_battery_poll(i32* %30)
  br label %32

32:                                               ; preds = %24, %3
  %33 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %9, align 8
  %34 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %33, i32 0, i32 2
  %35 = call i32 @mutex_unlock(i32* %34)
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 136
  br i1 %37, label %38, label %47

38:                                               ; preds = %32
  %39 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %9, align 8
  %40 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %180

47:                                               ; preds = %38, %32
  %48 = load i32, i32* %6, align 4
  switch i32 %48, label %175 [
    i32 135, label %49
    i32 128, label %53
    i32 136, label %57
    i32 143, label %67
    i32 148, label %71
    i32 147, label %78
    i32 133, label %82
    i32 131, label %97
    i32 132, label %104
    i32 130, label %111
    i32 134, label %118
    i32 144, label %122
    i32 146, label %127
    i32 145, label %134
    i32 141, label %140
    i32 129, label %140
    i32 142, label %143
    i32 140, label %150
    i32 137, label %157
    i32 139, label %164
    i32 138, label %171
  ]

49:                                               ; preds = %47
  %50 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %9, align 8
  %51 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %52 = call i32 @bq27xxx_battery_status(%struct.bq27xxx_device_info* %50, %union.power_supply_propval* %51)
  store i32 %52, i32* %8, align 4
  br label %178

53:                                               ; preds = %47
  %54 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %9, align 8
  %55 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %56 = call i32 @bq27xxx_battery_voltage(%struct.bq27xxx_device_info* %54, %union.power_supply_propval* %55)
  store i32 %56, i32* %8, align 4
  br label %178

57:                                               ; preds = %47
  %58 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %9, align 8
  %59 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp slt i64 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 0, i32 1
  %65 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %66 = bitcast %union.power_supply_propval* %65 to i32*
  store i32 %64, i32* %66, align 4
  br label %178

67:                                               ; preds = %47
  %68 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %9, align 8
  %69 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %70 = call i32 @bq27xxx_battery_current(%struct.bq27xxx_device_info* %68, %union.power_supply_propval* %69)
  store i32 %70, i32* %8, align 4
  br label %178

71:                                               ; preds = %47
  %72 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %9, align 8
  %73 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 10
  %75 = load i32, i32* %74, align 4
  %76 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %77 = call i32 @bq27xxx_simple_value(i32 %75, %union.power_supply_propval* %76)
  store i32 %77, i32* %8, align 4
  br label %178

78:                                               ; preds = %47
  %79 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %9, align 8
  %80 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %81 = call i32 @bq27xxx_battery_capacity_level(%struct.bq27xxx_device_info* %79, %union.power_supply_propval* %80)
  store i32 %81, i32* %8, align 4
  br label %178

82:                                               ; preds = %47
  %83 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %9, align 8
  %84 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 9
  %86 = load i32, i32* %85, align 8
  %87 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %88 = call i32 @bq27xxx_simple_value(i32 %86, %union.power_supply_propval* %87)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %82
  %92 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %93 = bitcast %union.power_supply_propval* %92 to i32*
  %94 = load i32, i32* %93, align 4
  %95 = sub nsw i32 %94, 2731
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %91, %82
  br label %178

97:                                               ; preds = %47
  %98 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %9, align 8
  %99 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 8
  %101 = load i32, i32* %100, align 4
  %102 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %103 = call i32 @bq27xxx_simple_value(i32 %101, %union.power_supply_propval* %102)
  store i32 %103, i32* %8, align 4
  br label %178

104:                                              ; preds = %47
  %105 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %9, align 8
  %106 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 7
  %108 = load i32, i32* %107, align 8
  %109 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %110 = call i32 @bq27xxx_simple_value(i32 %108, %union.power_supply_propval* %109)
  store i32 %110, i32* %8, align 4
  br label %178

111:                                              ; preds = %47
  %112 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %9, align 8
  %113 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 4
  %116 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %117 = call i32 @bq27xxx_simple_value(i32 %115, %union.power_supply_propval* %116)
  store i32 %117, i32* %8, align 4
  br label %178

118:                                              ; preds = %47
  %119 = load i32, i32* @POWER_SUPPLY_TECHNOLOGY_LION, align 4
  %120 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %121 = bitcast %union.power_supply_propval* %120 to i32*
  store i32 %119, i32* %121, align 4
  br label %178

122:                                              ; preds = %47
  %123 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %9, align 8
  %124 = call i32 @bq27xxx_battery_read_nac(%struct.bq27xxx_device_info* %123)
  %125 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %126 = call i32 @bq27xxx_simple_value(i32 %124, %union.power_supply_propval* %125)
  store i32 %126, i32* %8, align 4
  br label %178

127:                                              ; preds = %47
  %128 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %9, align 8
  %129 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 8
  %132 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %133 = call i32 @bq27xxx_simple_value(i32 %131, %union.power_supply_propval* %132)
  store i32 %133, i32* %8, align 4
  br label %178

134:                                              ; preds = %47
  %135 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %9, align 8
  %136 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %139 = call i32 @bq27xxx_simple_value(i32 %137, %union.power_supply_propval* %138)
  store i32 %139, i32* %8, align 4
  br label %178

140:                                              ; preds = %47, %47
  %141 = load i32, i32* @EINVAL, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %4, align 4
  br label %180

143:                                              ; preds = %47
  %144 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %9, align 8
  %145 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 4
  %148 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %149 = call i32 @bq27xxx_simple_value(i32 %147, %union.power_supply_propval* %148)
  store i32 %149, i32* %8, align 4
  br label %178

150:                                              ; preds = %47
  %151 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %9, align 8
  %152 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %156 = call i32 @bq27xxx_simple_value(i32 %154, %union.power_supply_propval* %155)
  store i32 %156, i32* %8, align 4
  br label %178

157:                                              ; preds = %47
  %158 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %9, align 8
  %159 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %163 = call i32 @bq27xxx_simple_value(i32 %161, %union.power_supply_propval* %162)
  store i32 %163, i32* %8, align 4
  br label %178

164:                                              ; preds = %47
  %165 = load %struct.bq27xxx_device_info*, %struct.bq27xxx_device_info** %9, align 8
  %166 = getelementptr inbounds %struct.bq27xxx_device_info, %struct.bq27xxx_device_info* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %170 = call i32 @bq27xxx_simple_value(i32 %168, %union.power_supply_propval* %169)
  store i32 %170, i32* %8, align 4
  br label %178

171:                                              ; preds = %47
  %172 = load i32, i32* @BQ27XXX_MANUFACTURER, align 4
  %173 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %174 = bitcast %union.power_supply_propval* %173 to i32*
  store i32 %172, i32* %174, align 4
  br label %178

175:                                              ; preds = %47
  %176 = load i32, i32* @EINVAL, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %4, align 4
  br label %180

178:                                              ; preds = %171, %164, %157, %150, %143, %134, %127, %122, %118, %111, %104, %97, %96, %78, %71, %67, %57, %53, %49
  %179 = load i32, i32* %8, align 4
  store i32 %179, i32* %4, align 4
  br label %180

180:                                              ; preds = %178, %175, %140, %44
  %181 = load i32, i32* %4, align 4
  ret i32 %181
}

declare dso_local %struct.bq27xxx_device_info* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_is_before_jiffies(i64) #1

declare dso_local i32 @cancel_delayed_work_sync(%struct.TYPE_4__*) #1

declare dso_local i32 @bq27xxx_battery_poll(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @bq27xxx_battery_status(%struct.bq27xxx_device_info*, %union.power_supply_propval*) #1

declare dso_local i32 @bq27xxx_battery_voltage(%struct.bq27xxx_device_info*, %union.power_supply_propval*) #1

declare dso_local i32 @bq27xxx_battery_current(%struct.bq27xxx_device_info*, %union.power_supply_propval*) #1

declare dso_local i32 @bq27xxx_simple_value(i32, %union.power_supply_propval*) #1

declare dso_local i32 @bq27xxx_battery_capacity_level(%struct.bq27xxx_device_info*, %union.power_supply_propval*) #1

declare dso_local i32 @bq27xxx_battery_read_nac(%struct.bq27xxx_device_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
