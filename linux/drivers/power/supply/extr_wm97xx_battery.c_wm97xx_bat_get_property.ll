; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_wm97xx_battery.c_wm97xx_bat_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_wm97xx_battery.c_wm97xx_bat_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.wm97xx_batt_pdata = type { i32, i32, i32, i32, i32 }

@bat_status = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @wm97xx_bat_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm97xx_bat_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.wm97xx_batt_pdata*, align 8
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %9 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %10 = call %struct.wm97xx_batt_pdata* @power_supply_get_drvdata(%struct.power_supply* %9)
  store %struct.wm97xx_batt_pdata* %10, %struct.wm97xx_batt_pdata** %8, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %83 [
    i32 133, label %12
    i32 132, label %16
    i32 128, label %22
    i32 131, label %36
    i32 130, label %50
    i32 129, label %65
    i32 134, label %80
  ]

12:                                               ; preds = %3
  %13 = load i32, i32* @bat_status, align 4
  %14 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %15 = bitcast %union.power_supply_propval* %14 to i32*
  store i32 %13, i32* %15, align 4
  br label %86

16:                                               ; preds = %3
  %17 = load %struct.wm97xx_batt_pdata*, %struct.wm97xx_batt_pdata** %8, align 8
  %18 = getelementptr inbounds %struct.wm97xx_batt_pdata, %struct.wm97xx_batt_pdata* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %21 = bitcast %union.power_supply_propval* %20 to i32*
  store i32 %19, i32* %21, align 4
  br label %86

22:                                               ; preds = %3
  %23 = load %struct.wm97xx_batt_pdata*, %struct.wm97xx_batt_pdata** %8, align 8
  %24 = getelementptr inbounds %struct.wm97xx_batt_pdata, %struct.wm97xx_batt_pdata* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %29 = call i32 @wm97xx_read_bat(%struct.power_supply* %28)
  %30 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %31 = bitcast %union.power_supply_propval* %30 to i32*
  store i32 %29, i32* %31, align 4
  br label %35

32:                                               ; preds = %22
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %87

35:                                               ; preds = %27
  br label %86

36:                                               ; preds = %3
  %37 = load %struct.wm97xx_batt_pdata*, %struct.wm97xx_batt_pdata** %8, align 8
  %38 = getelementptr inbounds %struct.wm97xx_batt_pdata, %struct.wm97xx_batt_pdata* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %43 = call i32 @wm97xx_read_temp(%struct.power_supply* %42)
  %44 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %45 = bitcast %union.power_supply_propval* %44 to i32*
  store i32 %43, i32* %45, align 4
  br label %49

46:                                               ; preds = %36
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %87

49:                                               ; preds = %41
  br label %86

50:                                               ; preds = %3
  %51 = load %struct.wm97xx_batt_pdata*, %struct.wm97xx_batt_pdata** %8, align 8
  %52 = getelementptr inbounds %struct.wm97xx_batt_pdata, %struct.wm97xx_batt_pdata* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp sge i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load %struct.wm97xx_batt_pdata*, %struct.wm97xx_batt_pdata** %8, align 8
  %57 = getelementptr inbounds %struct.wm97xx_batt_pdata, %struct.wm97xx_batt_pdata* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %60 = bitcast %union.power_supply_propval* %59 to i32*
  store i32 %58, i32* %60, align 4
  br label %64

61:                                               ; preds = %50
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %87

64:                                               ; preds = %55
  br label %86

65:                                               ; preds = %3
  %66 = load %struct.wm97xx_batt_pdata*, %struct.wm97xx_batt_pdata** %8, align 8
  %67 = getelementptr inbounds %struct.wm97xx_batt_pdata, %struct.wm97xx_batt_pdata* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = icmp sge i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load %struct.wm97xx_batt_pdata*, %struct.wm97xx_batt_pdata** %8, align 8
  %72 = getelementptr inbounds %struct.wm97xx_batt_pdata, %struct.wm97xx_batt_pdata* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %75 = bitcast %union.power_supply_propval* %74 to i32*
  store i32 %73, i32* %75, align 4
  br label %79

76:                                               ; preds = %65
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %87

79:                                               ; preds = %70
  br label %86

80:                                               ; preds = %3
  %81 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %82 = bitcast %union.power_supply_propval* %81 to i32*
  store i32 1, i32* %82, align 4
  br label %86

83:                                               ; preds = %3
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %4, align 4
  br label %87

86:                                               ; preds = %80, %79, %64, %49, %35, %16, %12
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %86, %83, %76, %61, %46, %32
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local %struct.wm97xx_batt_pdata* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @wm97xx_read_bat(%struct.power_supply*) #1

declare dso_local i32 @wm97xx_read_temp(%struct.power_supply*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
