; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_qcom_smbb.c_smbb_battery_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_qcom_smbb.c_smbb_battery_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.smbb_charger = type { i64, i32*, i32 }

@STATUS_CHG_GONE = common dso_local global i64 0, align 8
@POWER_SUPPLY_STATUS_DISCHARGING = common dso_local global i8* null, align 8
@STATUS_DCIN_VALID = common dso_local global i64 0, align 8
@STATUS_USBIN_VALID = common dso_local global i64 0, align 8
@STATUS_CHG_DONE = common dso_local global i64 0, align 8
@POWER_SUPPLY_STATUS_FULL = common dso_local global i32 0, align 4
@STATUS_BAT_OK = common dso_local global i64 0, align 8
@STATUS_CHG_FAST = common dso_local global i64 0, align 8
@STATUS_CHG_TRKL = common dso_local global i64 0, align 8
@POWER_SUPPLY_STATUS_CHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_GOOD = common dso_local global i32 0, align 4
@STATUS_BAT_HOT = common dso_local global i64 0, align 8
@POWER_SUPPLY_HEALTH_OVERHEAT = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_COLD = common dso_local global i32 0, align 4
@POWER_SUPPLY_CHARGE_TYPE_FAST = common dso_local global i32 0, align 4
@POWER_SUPPLY_CHARGE_TYPE_TRICKLE = common dso_local global i32 0, align 4
@POWER_SUPPLY_CHARGE_TYPE_NONE = common dso_local global i32 0, align 4
@STATUS_BAT_PRESENT = common dso_local global i64 0, align 8
@ATTR_BAT_IMAX = common dso_local global i64 0, align 8
@ATTR_BAT_VMAX = common dso_local global i64 0, align 8
@POWER_SUPPLY_TECHNOLOGY_LION = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @smbb_battery_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smbb_battery_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca %struct.power_supply*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.power_supply_propval*, align 8
  %7 = alloca %struct.smbb_charger*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %4, align 8
  store i32 %1, i32* %5, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %6, align 8
  %10 = load %struct.power_supply*, %struct.power_supply** %4, align 8
  %11 = call %struct.smbb_charger* @power_supply_get_drvdata(%struct.power_supply* %10)
  store %struct.smbb_charger* %11, %struct.smbb_charger** %7, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.smbb_charger*, %struct.smbb_charger** %7, align 8
  %13 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %12, i32 0, i32 2
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.smbb_charger*, %struct.smbb_charger** %7, align 8
  %16 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %8, align 8
  %18 = load %struct.smbb_charger*, %struct.smbb_charger** %7, align 8
  %19 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %18, i32 0, i32 2
  %20 = call i32 @mutex_unlock(i32* %19)
  %21 = load i32, i32* %5, align 4
  switch i32 %21, label %167 [
    i32 131, label %22
    i32 133, label %84
    i32 135, label %108
    i32 132, label %132
    i32 134, label %142
    i32 129, label %151
    i32 130, label %160
    i32 128, label %164
  ]

22:                                               ; preds = %3
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* @STATUS_CHG_GONE, align 8
  %25 = and i64 %23, %24
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i8*, i8** @POWER_SUPPLY_STATUS_DISCHARGING, align 8
  %29 = ptrtoint i8* %28 to i32
  %30 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %31 = bitcast %union.power_supply_propval* %30 to i32*
  store i32 %29, i32* %31, align 4
  br label %83

32:                                               ; preds = %22
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* @STATUS_DCIN_VALID, align 8
  %35 = load i64, i64* @STATUS_USBIN_VALID, align 8
  %36 = or i64 %34, %35
  %37 = and i64 %33, %36
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %32
  %40 = load i8*, i8** @POWER_SUPPLY_STATUS_DISCHARGING, align 8
  %41 = ptrtoint i8* %40 to i32
  %42 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %43 = bitcast %union.power_supply_propval* %42 to i32*
  store i32 %41, i32* %43, align 4
  br label %82

44:                                               ; preds = %32
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* @STATUS_CHG_DONE, align 8
  %47 = and i64 %45, %46
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i32, i32* @POWER_SUPPLY_STATUS_FULL, align 4
  %51 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %52 = bitcast %union.power_supply_propval* %51 to i32*
  store i32 %50, i32* %52, align 4
  br label %81

53:                                               ; preds = %44
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* @STATUS_BAT_OK, align 8
  %56 = and i64 %54, %55
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %53
  %59 = load i8*, i8** @POWER_SUPPLY_STATUS_DISCHARGING, align 8
  %60 = ptrtoint i8* %59 to i32
  %61 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %62 = bitcast %union.power_supply_propval* %61 to i32*
  store i32 %60, i32* %62, align 4
  br label %80

63:                                               ; preds = %53
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* @STATUS_CHG_FAST, align 8
  %66 = load i64, i64* @STATUS_CHG_TRKL, align 8
  %67 = or i64 %65, %66
  %68 = and i64 %64, %67
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load i32, i32* @POWER_SUPPLY_STATUS_CHARGING, align 4
  %72 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %73 = bitcast %union.power_supply_propval* %72 to i32*
  store i32 %71, i32* %73, align 4
  br label %79

74:                                               ; preds = %63
  %75 = load i8*, i8** @POWER_SUPPLY_STATUS_DISCHARGING, align 8
  %76 = ptrtoint i8* %75 to i32
  %77 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %78 = bitcast %union.power_supply_propval* %77 to i32*
  store i32 %76, i32* %78, align 4
  br label %79

79:                                               ; preds = %74, %70
  br label %80

80:                                               ; preds = %79, %58
  br label %81

81:                                               ; preds = %80, %49
  br label %82

82:                                               ; preds = %81, %39
  br label %83

83:                                               ; preds = %82, %27
  br label %170

84:                                               ; preds = %3
  %85 = load i64, i64* %8, align 8
  %86 = load i64, i64* @STATUS_BAT_OK, align 8
  %87 = and i64 %85, %86
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load i32, i32* @POWER_SUPPLY_HEALTH_GOOD, align 4
  %91 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %92 = bitcast %union.power_supply_propval* %91 to i32*
  store i32 %90, i32* %92, align 4
  br label %107

93:                                               ; preds = %84
  %94 = load i64, i64* %8, align 8
  %95 = load i64, i64* @STATUS_BAT_HOT, align 8
  %96 = and i64 %94, %95
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load i32, i32* @POWER_SUPPLY_HEALTH_OVERHEAT, align 4
  %100 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %101 = bitcast %union.power_supply_propval* %100 to i32*
  store i32 %99, i32* %101, align 4
  br label %106

102:                                              ; preds = %93
  %103 = load i32, i32* @POWER_SUPPLY_HEALTH_COLD, align 4
  %104 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %105 = bitcast %union.power_supply_propval* %104 to i32*
  store i32 %103, i32* %105, align 4
  br label %106

106:                                              ; preds = %102, %98
  br label %107

107:                                              ; preds = %106, %89
  br label %170

108:                                              ; preds = %3
  %109 = load i64, i64* %8, align 8
  %110 = load i64, i64* @STATUS_CHG_FAST, align 8
  %111 = and i64 %109, %110
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = load i32, i32* @POWER_SUPPLY_CHARGE_TYPE_FAST, align 4
  %115 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %116 = bitcast %union.power_supply_propval* %115 to i32*
  store i32 %114, i32* %116, align 4
  br label %131

117:                                              ; preds = %108
  %118 = load i64, i64* %8, align 8
  %119 = load i64, i64* @STATUS_CHG_TRKL, align 8
  %120 = and i64 %118, %119
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %117
  %123 = load i32, i32* @POWER_SUPPLY_CHARGE_TYPE_TRICKLE, align 4
  %124 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %125 = bitcast %union.power_supply_propval* %124 to i32*
  store i32 %123, i32* %125, align 4
  br label %130

126:                                              ; preds = %117
  %127 = load i32, i32* @POWER_SUPPLY_CHARGE_TYPE_NONE, align 4
  %128 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %129 = bitcast %union.power_supply_propval* %128 to i32*
  store i32 %127, i32* %129, align 4
  br label %130

130:                                              ; preds = %126, %122
  br label %131

131:                                              ; preds = %130, %113
  br label %170

132:                                              ; preds = %3
  %133 = load i64, i64* %8, align 8
  %134 = load i64, i64* @STATUS_BAT_PRESENT, align 8
  %135 = and i64 %133, %134
  %136 = icmp ne i64 %135, 0
  %137 = xor i1 %136, true
  %138 = xor i1 %137, true
  %139 = zext i1 %138 to i32
  %140 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %141 = bitcast %union.power_supply_propval* %140 to i32*
  store i32 %139, i32* %141, align 4
  br label %170

142:                                              ; preds = %3
  %143 = load %struct.smbb_charger*, %struct.smbb_charger** %7, align 8
  %144 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = load i64, i64* @ATTR_BAT_IMAX, align 8
  %147 = getelementptr inbounds i32, i32* %145, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %150 = bitcast %union.power_supply_propval* %149 to i32*
  store i32 %148, i32* %150, align 4
  br label %170

151:                                              ; preds = %3
  %152 = load %struct.smbb_charger*, %struct.smbb_charger** %7, align 8
  %153 = getelementptr inbounds %struct.smbb_charger, %struct.smbb_charger* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = load i64, i64* @ATTR_BAT_VMAX, align 8
  %156 = getelementptr inbounds i32, i32* %154, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %159 = bitcast %union.power_supply_propval* %158 to i32*
  store i32 %157, i32* %159, align 4
  br label %170

160:                                              ; preds = %3
  %161 = load i32, i32* @POWER_SUPPLY_TECHNOLOGY_LION, align 4
  %162 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %163 = bitcast %union.power_supply_propval* %162 to i32*
  store i32 %161, i32* %163, align 4
  br label %170

164:                                              ; preds = %3
  %165 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %166 = bitcast %union.power_supply_propval* %165 to i32*
  store i32 3000000, i32* %166, align 4
  br label %170

167:                                              ; preds = %3
  %168 = load i32, i32* @EINVAL, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %9, align 4
  br label %170

170:                                              ; preds = %167, %164, %160, %151, %142, %132, %131, %107, %83
  %171 = load i32, i32* %9, align 4
  ret i32 %171
}

declare dso_local %struct.smbb_charger* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
