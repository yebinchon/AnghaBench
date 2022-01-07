; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_cpcap-charger.c_cpcap_charger_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_cpcap-charger.c_cpcap_charger_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.cpcap_charger_ddata = type { i32 }

@POWER_SUPPLY_STATUS_CHARGING = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @cpcap_charger_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpcap_charger_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.cpcap_charger_ddata*, align 8
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %9 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %10 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.cpcap_charger_ddata* @dev_get_drvdata(i32 %12)
  store %struct.cpcap_charger_ddata* %13, %struct.cpcap_charger_ddata** %8, align 8
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %62 [
    i32 129, label %15
    i32 128, label %21
    i32 131, label %37
    i32 130, label %53
  ]

15:                                               ; preds = %3
  %16 = load %struct.cpcap_charger_ddata*, %struct.cpcap_charger_ddata** %8, align 8
  %17 = getelementptr inbounds %struct.cpcap_charger_ddata, %struct.cpcap_charger_ddata* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %20 = bitcast %union.power_supply_propval* %19 to i32*
  store i32 %18, i32* %20, align 4
  br label %65

21:                                               ; preds = %3
  %22 = load %struct.cpcap_charger_ddata*, %struct.cpcap_charger_ddata** %8, align 8
  %23 = getelementptr inbounds %struct.cpcap_charger_ddata, %struct.cpcap_charger_ddata* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @POWER_SUPPLY_STATUS_CHARGING, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load %struct.cpcap_charger_ddata*, %struct.cpcap_charger_ddata** %8, align 8
  %29 = call i32 @cpcap_charger_get_charge_voltage(%struct.cpcap_charger_ddata* %28)
  %30 = mul nsw i32 %29, 1000
  %31 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %32 = bitcast %union.power_supply_propval* %31 to i32*
  store i32 %30, i32* %32, align 4
  br label %36

33:                                               ; preds = %21
  %34 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %35 = bitcast %union.power_supply_propval* %34 to i32*
  store i32 0, i32* %35, align 4
  br label %36

36:                                               ; preds = %33, %27
  br label %65

37:                                               ; preds = %3
  %38 = load %struct.cpcap_charger_ddata*, %struct.cpcap_charger_ddata** %8, align 8
  %39 = getelementptr inbounds %struct.cpcap_charger_ddata, %struct.cpcap_charger_ddata* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @POWER_SUPPLY_STATUS_CHARGING, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load %struct.cpcap_charger_ddata*, %struct.cpcap_charger_ddata** %8, align 8
  %45 = call i32 @cpcap_charger_get_charge_current(%struct.cpcap_charger_ddata* %44)
  %46 = mul nsw i32 %45, 1000
  %47 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %48 = bitcast %union.power_supply_propval* %47 to i32*
  store i32 %46, i32* %48, align 4
  br label %52

49:                                               ; preds = %37
  %50 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %51 = bitcast %union.power_supply_propval* %50 to i32*
  store i32 0, i32* %51, align 4
  br label %52

52:                                               ; preds = %49, %43
  br label %65

53:                                               ; preds = %3
  %54 = load %struct.cpcap_charger_ddata*, %struct.cpcap_charger_ddata** %8, align 8
  %55 = getelementptr inbounds %struct.cpcap_charger_ddata, %struct.cpcap_charger_ddata* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @POWER_SUPPLY_STATUS_CHARGING, align 4
  %58 = icmp eq i32 %56, %57
  %59 = zext i1 %58 to i32
  %60 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %61 = bitcast %union.power_supply_propval* %60 to i32*
  store i32 %59, i32* %61, align 4
  br label %65

62:                                               ; preds = %3
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %66

65:                                               ; preds = %53, %52, %36, %15
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %65, %62
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local %struct.cpcap_charger_ddata* @dev_get_drvdata(i32) #1

declare dso_local i32 @cpcap_charger_get_charge_voltage(%struct.cpcap_charger_ddata*) #1

declare dso_local i32 @cpcap_charger_get_charge_current(%struct.cpcap_charger_ddata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
