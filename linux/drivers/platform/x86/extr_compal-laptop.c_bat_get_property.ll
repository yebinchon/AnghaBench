; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_compal-laptop.c_bat_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_compal-laptop.c_bat_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.compal_data = type { i32, i32, i32 }

@BAT_VOLTAGE_DESIGN = common dso_local global i32 0, align 4
@BAT_VOLTAGE_NOW = common dso_local global i32 0, align 4
@BAT_CURRENT_NOW = common dso_local global i32 0, align 4
@BAT_CURRENT_AVG = common dso_local global i32 0, align 4
@BAT_POWER = common dso_local global i32 0, align 4
@BAT_CHARGE_DESIGN = common dso_local global i32 0, align 4
@BAT_CHARGE_NOW = common dso_local global i32 0, align 4
@BAT_CHARGE_LIMIT = common dso_local global i32 0, align 4
@BAT_CHARGE_LIMIT_MAX = common dso_local global i32 0, align 4
@BAT_CAPACITY = common dso_local global i32 0, align 4
@BAT_TEMP = common dso_local global i32 0, align 4
@BAT_TEMP_AVG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @bat_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bat_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca %struct.power_supply*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.power_supply_propval*, align 8
  %7 = alloca %struct.compal_data*, align 8
  store %struct.power_supply* %0, %struct.power_supply** %4, align 8
  store i32 %1, i32* %5, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %6, align 8
  %8 = load %struct.power_supply*, %struct.power_supply** %4, align 8
  %9 = call %struct.compal_data* @power_supply_get_drvdata(%struct.power_supply* %8)
  store %struct.compal_data* %9, %struct.compal_data** %7, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %119 [
    i32 133, label %11
    i32 139, label %15
    i32 135, label %19
    i32 132, label %23
    i32 129, label %27
    i32 128, label %33
    i32 140, label %39
    i32 141, label %45
    i32 136, label %51
    i32 143, label %57
    i32 142, label %63
    i32 145, label %69
    i32 144, label %74
    i32 147, label %78
    i32 146, label %83
    i32 131, label %87
    i32 130, label %95
    i32 137, label %101
    i32 138, label %107
    i32 134, label %113
  ]

11:                                               ; preds = %3
  %12 = call i32 (...) @bat_status()
  %13 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %14 = bitcast %union.power_supply_propval* %13 to i32*
  store i32 %12, i32* %14, align 4
  br label %120

15:                                               ; preds = %3
  %16 = call i32 (...) @bat_health()
  %17 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %18 = bitcast %union.power_supply_propval* %17 to i32*
  store i32 %16, i32* %18, align 4
  br label %120

19:                                               ; preds = %3
  %20 = call i32 (...) @bat_is_present()
  %21 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %22 = bitcast %union.power_supply_propval* %21 to i32*
  store i32 %20, i32* %22, align 4
  br label %120

23:                                               ; preds = %3
  %24 = call i32 (...) @bat_technology()
  %25 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %26 = bitcast %union.power_supply_propval* %25 to i32*
  store i32 %24, i32* %26, align 4
  br label %120

27:                                               ; preds = %3
  %28 = load i32, i32* @BAT_VOLTAGE_DESIGN, align 4
  %29 = call i32 @ec_read_u16(i32 %28)
  %30 = mul nsw i32 %29, 1000
  %31 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %32 = bitcast %union.power_supply_propval* %31 to i32*
  store i32 %30, i32* %32, align 4
  br label %120

33:                                               ; preds = %3
  %34 = load i32, i32* @BAT_VOLTAGE_NOW, align 4
  %35 = call i32 @ec_read_u16(i32 %34)
  %36 = mul nsw i32 %35, 1000
  %37 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %38 = bitcast %union.power_supply_propval* %37 to i32*
  store i32 %36, i32* %38, align 4
  br label %120

39:                                               ; preds = %3
  %40 = load i32, i32* @BAT_CURRENT_NOW, align 4
  %41 = call i32 @ec_read_s16(i32 %40)
  %42 = mul nsw i32 %41, 1000
  %43 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %44 = bitcast %union.power_supply_propval* %43 to i32*
  store i32 %42, i32* %44, align 4
  br label %120

45:                                               ; preds = %3
  %46 = load i32, i32* @BAT_CURRENT_AVG, align 4
  %47 = call i32 @ec_read_s16(i32 %46)
  %48 = mul nsw i32 %47, 1000
  %49 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %50 = bitcast %union.power_supply_propval* %49 to i32*
  store i32 %48, i32* %50, align 4
  br label %120

51:                                               ; preds = %3
  %52 = load i32, i32* @BAT_POWER, align 4
  %53 = call i32 @ec_read_u8(i32 %52)
  %54 = mul nsw i32 %53, 1000000
  %55 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %56 = bitcast %union.power_supply_propval* %55 to i32*
  store i32 %54, i32* %56, align 4
  br label %120

57:                                               ; preds = %3
  %58 = load i32, i32* @BAT_CHARGE_DESIGN, align 4
  %59 = call i32 @ec_read_u16(i32 %58)
  %60 = mul nsw i32 %59, 1000
  %61 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %62 = bitcast %union.power_supply_propval* %61 to i32*
  store i32 %60, i32* %62, align 4
  br label %120

63:                                               ; preds = %3
  %64 = load i32, i32* @BAT_CHARGE_NOW, align 4
  %65 = call i32 @ec_read_u16(i32 %64)
  %66 = mul nsw i32 %65, 1000
  %67 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %68 = bitcast %union.power_supply_propval* %67 to i32*
  store i32 %66, i32* %68, align 4
  br label %120

69:                                               ; preds = %3
  %70 = load i32, i32* @BAT_CHARGE_LIMIT, align 4
  %71 = call i32 @ec_read_u8(i32 %70)
  %72 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %73 = bitcast %union.power_supply_propval* %72 to i32*
  store i32 %71, i32* %73, align 4
  br label %120

74:                                               ; preds = %3
  %75 = load i32, i32* @BAT_CHARGE_LIMIT_MAX, align 4
  %76 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %77 = bitcast %union.power_supply_propval* %76 to i32*
  store i32 %75, i32* %77, align 4
  br label %120

78:                                               ; preds = %3
  %79 = load i32, i32* @BAT_CAPACITY, align 4
  %80 = call i32 @ec_read_u8(i32 %79)
  %81 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %82 = bitcast %union.power_supply_propval* %81 to i32*
  store i32 %80, i32* %82, align 4
  br label %120

83:                                               ; preds = %3
  %84 = call i32 (...) @bat_capacity_level()
  %85 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %86 = bitcast %union.power_supply_propval* %85 to i32*
  store i32 %84, i32* %86, align 4
  br label %120

87:                                               ; preds = %3
  %88 = load i32, i32* @BAT_TEMP, align 4
  %89 = call i32 @ec_read_u8(i32 %88)
  %90 = sub nsw i32 222, %89
  %91 = mul nsw i32 %90, 1000
  %92 = ashr i32 %91, 8
  %93 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %94 = bitcast %union.power_supply_propval* %93 to i32*
  store i32 %92, i32* %94, align 4
  br label %120

95:                                               ; preds = %3
  %96 = load i32, i32* @BAT_TEMP_AVG, align 4
  %97 = call i32 @ec_read_s8(i32 %96)
  %98 = mul nsw i32 %97, 10
  %99 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %100 = bitcast %union.power_supply_propval* %99 to i32*
  store i32 %98, i32* %100, align 4
  br label %120

101:                                              ; preds = %3
  %102 = load %struct.compal_data*, %struct.compal_data** %7, align 8
  %103 = getelementptr inbounds %struct.compal_data, %struct.compal_data* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %106 = bitcast %union.power_supply_propval* %105 to i32*
  store i32 %104, i32* %106, align 4
  br label %120

107:                                              ; preds = %3
  %108 = load %struct.compal_data*, %struct.compal_data** %7, align 8
  %109 = getelementptr inbounds %struct.compal_data, %struct.compal_data* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %112 = bitcast %union.power_supply_propval* %111 to i32*
  store i32 %110, i32* %112, align 4
  br label %120

113:                                              ; preds = %3
  %114 = load %struct.compal_data*, %struct.compal_data** %7, align 8
  %115 = getelementptr inbounds %struct.compal_data, %struct.compal_data* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %118 = bitcast %union.power_supply_propval* %117 to i32*
  store i32 %116, i32* %118, align 4
  br label %120

119:                                              ; preds = %3
  br label %120

120:                                              ; preds = %119, %113, %107, %101, %95, %87, %83, %78, %74, %69, %63, %57, %51, %45, %39, %33, %27, %23, %19, %15, %11
  ret i32 0
}

declare dso_local %struct.compal_data* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @bat_status(...) #1

declare dso_local i32 @bat_health(...) #1

declare dso_local i32 @bat_is_present(...) #1

declare dso_local i32 @bat_technology(...) #1

declare dso_local i32 @ec_read_u16(i32) #1

declare dso_local i32 @ec_read_s16(i32) #1

declare dso_local i32 @ec_read_u8(i32) #1

declare dso_local i32 @bat_capacity_level(...) #1

declare dso_local i32 @ec_read_s8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
