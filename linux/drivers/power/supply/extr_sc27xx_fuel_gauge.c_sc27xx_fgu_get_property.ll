; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_sc27xx_fuel_gauge.c_sc27xx_fgu_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_sc27xx_fuel_gauge.c_sc27xx_fgu_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.sc27xx_fgu_data = type { i32, i32, i32 }

@POWER_SUPPLY_TECHNOLOGY_LION = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @sc27xx_fgu_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sc27xx_fgu_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca %struct.power_supply*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.power_supply_propval*, align 8
  %7 = alloca %struct.sc27xx_fgu_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %4, align 8
  store i32 %1, i32* %5, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %6, align 8
  %10 = load %struct.power_supply*, %struct.power_supply** %4, align 8
  %11 = call %struct.sc27xx_fgu_data* @power_supply_get_drvdata(%struct.power_supply* %10)
  store %struct.sc27xx_fgu_data* %11, %struct.sc27xx_fgu_data** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %7, align 8
  %13 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %12, i32 0, i32 2
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %115 [
    i32 132, label %16
    i32 134, label %26
    i32 133, label %36
    i32 130, label %42
    i32 131, label %52
    i32 139, label %56
    i32 129, label %66
    i32 128, label %77
    i32 138, label %87
    i32 136, label %97
    i32 137, label %97
    i32 135, label %108
  ]

16:                                               ; preds = %3
  %17 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %7, align 8
  %18 = call i32 @sc27xx_fgu_get_status(%struct.sc27xx_fgu_data* %17, i32* %9)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %119

22:                                               ; preds = %16
  %23 = load i32, i32* %9, align 4
  %24 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %25 = bitcast %union.power_supply_propval* %24 to i32*
  store i32 %23, i32* %25, align 4
  br label %118

26:                                               ; preds = %3
  %27 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %7, align 8
  %28 = call i32 @sc27xx_fgu_get_health(%struct.sc27xx_fgu_data* %27, i32* %9)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %119

32:                                               ; preds = %26
  %33 = load i32, i32* %9, align 4
  %34 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %35 = bitcast %union.power_supply_propval* %34 to i32*
  store i32 %33, i32* %35, align 4
  br label %118

36:                                               ; preds = %3
  %37 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %7, align 8
  %38 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %41 = bitcast %union.power_supply_propval* %40 to i32*
  store i32 %39, i32* %41, align 4
  br label %118

42:                                               ; preds = %3
  %43 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %7, align 8
  %44 = call i32 @sc27xx_fgu_get_temp(%struct.sc27xx_fgu_data* %43, i32* %9)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %119

48:                                               ; preds = %42
  %49 = load i32, i32* %9, align 4
  %50 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %51 = bitcast %union.power_supply_propval* %50 to i32*
  store i32 %49, i32* %51, align 4
  br label %118

52:                                               ; preds = %3
  %53 = load i32, i32* @POWER_SUPPLY_TECHNOLOGY_LION, align 4
  %54 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %55 = bitcast %union.power_supply_propval* %54 to i32*
  store i32 %53, i32* %55, align 4
  br label %118

56:                                               ; preds = %3
  %57 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %7, align 8
  %58 = call i32 @sc27xx_fgu_get_capacity(%struct.sc27xx_fgu_data* %57, i32* %9)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %119

62:                                               ; preds = %56
  %63 = load i32, i32* %9, align 4
  %64 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %65 = bitcast %union.power_supply_propval* %64 to i32*
  store i32 %63, i32* %65, align 4
  br label %118

66:                                               ; preds = %3
  %67 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %7, align 8
  %68 = call i32 @sc27xx_fgu_get_vbat_vol(%struct.sc27xx_fgu_data* %67, i32* %9)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %119

72:                                               ; preds = %66
  %73 = load i32, i32* %9, align 4
  %74 = mul nsw i32 %73, 1000
  %75 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %76 = bitcast %union.power_supply_propval* %75 to i32*
  store i32 %74, i32* %76, align 4
  br label %118

77:                                               ; preds = %3
  %78 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %7, align 8
  %79 = call i32 @sc27xx_fgu_get_vbat_ocv(%struct.sc27xx_fgu_data* %78, i32* %9)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %119

83:                                               ; preds = %77
  %84 = load i32, i32* %9, align 4
  %85 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %86 = bitcast %union.power_supply_propval* %85 to i32*
  store i32 %84, i32* %86, align 4
  br label %118

87:                                               ; preds = %3
  %88 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %7, align 8
  %89 = call i32 @sc27xx_fgu_get_charge_vol(%struct.sc27xx_fgu_data* %88, i32* %9)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  br label %119

93:                                               ; preds = %87
  %94 = load i32, i32* %9, align 4
  %95 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %96 = bitcast %union.power_supply_propval* %95 to i32*
  store i32 %94, i32* %96, align 4
  br label %118

97:                                               ; preds = %3, %3
  %98 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %7, align 8
  %99 = call i32 @sc27xx_fgu_get_current(%struct.sc27xx_fgu_data* %98, i32* %9)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  br label %119

103:                                              ; preds = %97
  %104 = load i32, i32* %9, align 4
  %105 = mul nsw i32 %104, 1000
  %106 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %107 = bitcast %union.power_supply_propval* %106 to i32*
  store i32 %105, i32* %107, align 4
  br label %118

108:                                              ; preds = %3
  %109 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %7, align 8
  %110 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = mul nsw i32 %111, 1000
  %113 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %114 = bitcast %union.power_supply_propval* %113 to i32*
  store i32 %112, i32* %114, align 4
  br label %118

115:                                              ; preds = %3
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %8, align 4
  br label %118

118:                                              ; preds = %115, %108, %103, %93, %83, %72, %62, %52, %48, %36, %32, %22
  br label %119

119:                                              ; preds = %118, %102, %92, %82, %71, %61, %47, %31, %21
  %120 = load %struct.sc27xx_fgu_data*, %struct.sc27xx_fgu_data** %7, align 8
  %121 = getelementptr inbounds %struct.sc27xx_fgu_data, %struct.sc27xx_fgu_data* %120, i32 0, i32 2
  %122 = call i32 @mutex_unlock(i32* %121)
  %123 = load i32, i32* %8, align 4
  ret i32 %123
}

declare dso_local %struct.sc27xx_fgu_data* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sc27xx_fgu_get_status(%struct.sc27xx_fgu_data*, i32*) #1

declare dso_local i32 @sc27xx_fgu_get_health(%struct.sc27xx_fgu_data*, i32*) #1

declare dso_local i32 @sc27xx_fgu_get_temp(%struct.sc27xx_fgu_data*, i32*) #1

declare dso_local i32 @sc27xx_fgu_get_capacity(%struct.sc27xx_fgu_data*, i32*) #1

declare dso_local i32 @sc27xx_fgu_get_vbat_vol(%struct.sc27xx_fgu_data*, i32*) #1

declare dso_local i32 @sc27xx_fgu_get_vbat_ocv(%struct.sc27xx_fgu_data*, i32*) #1

declare dso_local i32 @sc27xx_fgu_get_charge_vol(%struct.sc27xx_fgu_data*, i32*) #1

declare dso_local i32 @sc27xx_fgu_get_current(%struct.sc27xx_fgu_data*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
