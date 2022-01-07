; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_sbs-battery.c_sbs_get_ti_battery_presence_and_health.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_sbs-battery.c_sbs_get_ti_battery_presence_and_health.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.i2c_client = type { i32 }
%union.power_supply_propval = type { i32 }

@sbs_data = common dso_local global %struct.TYPE_2__* null, align 8
@REG_MANUFACTURER_DATA = common dso_local global i64 0, align 8
@MANUFACTURER_ACCESS_STATUS = common dso_local global i32 0, align 4
@POWER_SUPPLY_PROP_PRESENT = common dso_local global i32 0, align 4
@POWER_SUPPLY_PROP_HEALTH = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_UNSPEC_FAILURE = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_OVERHEAT = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_DEAD = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, %union.power_supply_propval*)* @sbs_get_ti_battery_presence_and_health to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbs_get_ti_battery_presence_and_health(%struct.i2c_client* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sbs_data, align 8
  %11 = load i64, i64* @REG_MANUFACTURER_DATA, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @MANUFACTURER_ACCESS_STATUS, align 4
  %16 = call i32 @sbs_write_word_data(%struct.i2c_client* %9, i32 %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @POWER_SUPPLY_PROP_PRESENT, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %25 = bitcast %union.power_supply_propval* %24 to i32*
  store i32 0, i32* %25, align 4
  br label %26

26:                                               ; preds = %23, %19
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %4, align 4
  br label %118

28:                                               ; preds = %3
  %29 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sbs_data, align 8
  %31 = load i64, i64* @REG_MANUFACTURER_DATA, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @sbs_read_word_data(%struct.i2c_client* %29, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %28
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @POWER_SUPPLY_PROP_PRESENT, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %44 = bitcast %union.power_supply_propval* %43 to i32*
  store i32 0, i32* %44, align 4
  br label %45

45:                                               ; preds = %42, %38
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %4, align 4
  br label %118

47:                                               ; preds = %28
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sbs_data, align 8
  %50 = load i64, i64* @REG_MANUFACTURER_DATA, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %48, %53
  br i1 %54, label %63, label %55

55:                                               ; preds = %47
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sbs_data, align 8
  %58 = load i64, i64* @REG_MANUFACTURER_DATA, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp sgt i32 %56, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %55, %47
  %64 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %65 = bitcast %union.power_supply_propval* %64 to i32*
  store i32 0, i32* %65, align 4
  store i32 0, i32* %4, align 4
  br label %118

66:                                               ; preds = %55
  %67 = load i32, i32* %8, align 4
  %68 = and i32 %67, 3840
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = ashr i32 %69, 8
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @POWER_SUPPLY_PROP_PRESENT, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %66
  %75 = load i32, i32* %8, align 4
  %76 = icmp eq i32 %75, 15
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %79 = bitcast %union.power_supply_propval* %78 to i32*
  store i32 0, i32* %79, align 4
  br label %83

80:                                               ; preds = %74
  %81 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %82 = bitcast %union.power_supply_propval* %81 to i32*
  store i32 1, i32* %82, align 4
  br label %83

83:                                               ; preds = %80, %77
  br label %117

84:                                               ; preds = %66
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @POWER_SUPPLY_PROP_HEALTH, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %116

88:                                               ; preds = %84
  %89 = load i32, i32* %8, align 4
  %90 = icmp eq i32 %89, 9
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load i32, i32* @POWER_SUPPLY_HEALTH_UNSPEC_FAILURE, align 4
  %93 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %94 = bitcast %union.power_supply_propval* %93 to i32*
  store i32 %92, i32* %94, align 4
  br label %115

95:                                               ; preds = %88
  %96 = load i32, i32* %8, align 4
  %97 = icmp eq i32 %96, 11
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load i32, i32* @POWER_SUPPLY_HEALTH_OVERHEAT, align 4
  %100 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %101 = bitcast %union.power_supply_propval* %100 to i32*
  store i32 %99, i32* %101, align 4
  br label %114

102:                                              ; preds = %95
  %103 = load i32, i32* %8, align 4
  %104 = icmp eq i32 %103, 12
  br i1 %104, label %105, label %109

105:                                              ; preds = %102
  %106 = load i32, i32* @POWER_SUPPLY_HEALTH_DEAD, align 4
  %107 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %108 = bitcast %union.power_supply_propval* %107 to i32*
  store i32 %106, i32* %108, align 4
  br label %113

109:                                              ; preds = %102
  %110 = load i32, i32* @POWER_SUPPLY_HEALTH_GOOD, align 4
  %111 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %112 = bitcast %union.power_supply_propval* %111 to i32*
  store i32 %110, i32* %112, align 4
  br label %113

113:                                              ; preds = %109, %105
  br label %114

114:                                              ; preds = %113, %98
  br label %115

115:                                              ; preds = %114, %91
  br label %116

116:                                              ; preds = %115, %84
  br label %117

117:                                              ; preds = %116, %83
  store i32 0, i32* %4, align 4
  br label %118

118:                                              ; preds = %117, %63, %45, %26
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i32 @sbs_write_word_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @sbs_read_word_data(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
