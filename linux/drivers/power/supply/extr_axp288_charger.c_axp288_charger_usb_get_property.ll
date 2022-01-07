; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_axp288_charger.c_axp288_charger_usb_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_axp288_charger.c_axp288_charger_usb_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.axp288_chrg_info = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @axp288_charger_usb_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp288_charger_usb_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.axp288_chrg_info*, align 8
  %9 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %10 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %11 = call %struct.axp288_chrg_info* @power_supply_get_drvdata(%struct.power_supply* %10)
  store %struct.axp288_chrg_info* %11, %struct.axp288_chrg_info** %8, align 8
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %97 [
    i32 128, label %13
    i32 129, label %33
    i32 131, label %53
    i32 135, label %58
    i32 134, label %65
    i32 133, label %72
    i32 132, label %79
    i32 130, label %86
  ]

13:                                               ; preds = %3
  %14 = load %struct.axp288_chrg_info*, %struct.axp288_chrg_info** %8, align 8
  %15 = getelementptr inbounds %struct.axp288_chrg_info, %struct.axp288_chrg_info* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %21 = bitcast %union.power_supply_propval* %20 to i32*
  store i32 0, i32* %21, align 4
  br label %100

22:                                               ; preds = %13
  %23 = load %struct.axp288_chrg_info*, %struct.axp288_chrg_info** %8, align 8
  %24 = call i32 @axp288_charger_is_present(%struct.axp288_chrg_info* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %4, align 4
  br label %101

29:                                               ; preds = %22
  %30 = load i32, i32* %9, align 4
  %31 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %32 = bitcast %union.power_supply_propval* %31 to i32*
  store i32 %30, i32* %32, align 4
  br label %100

33:                                               ; preds = %3
  %34 = load %struct.axp288_chrg_info*, %struct.axp288_chrg_info** %8, align 8
  %35 = getelementptr inbounds %struct.axp288_chrg_info, %struct.axp288_chrg_info* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %41 = bitcast %union.power_supply_propval* %40 to i32*
  store i32 0, i32* %41, align 4
  br label %100

42:                                               ; preds = %33
  %43 = load %struct.axp288_chrg_info*, %struct.axp288_chrg_info** %8, align 8
  %44 = call i32 @axp288_charger_is_online(%struct.axp288_chrg_info* %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %4, align 4
  br label %101

49:                                               ; preds = %42
  %50 = load i32, i32* %9, align 4
  %51 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %52 = bitcast %union.power_supply_propval* %51 to i32*
  store i32 %50, i32* %52, align 4
  br label %100

53:                                               ; preds = %3
  %54 = load %struct.axp288_chrg_info*, %struct.axp288_chrg_info** %8, align 8
  %55 = call i32 @axp288_get_charger_health(%struct.axp288_chrg_info* %54)
  %56 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %57 = bitcast %union.power_supply_propval* %56 to i32*
  store i32 %55, i32* %57, align 4
  br label %100

58:                                               ; preds = %3
  %59 = load %struct.axp288_chrg_info*, %struct.axp288_chrg_info** %8, align 8
  %60 = getelementptr inbounds %struct.axp288_chrg_info, %struct.axp288_chrg_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = mul nsw i32 %61, 1000
  %63 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %64 = bitcast %union.power_supply_propval* %63 to i32*
  store i32 %62, i32* %64, align 4
  br label %100

65:                                               ; preds = %3
  %66 = load %struct.axp288_chrg_info*, %struct.axp288_chrg_info** %8, align 8
  %67 = getelementptr inbounds %struct.axp288_chrg_info, %struct.axp288_chrg_info* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 %68, 1000
  %70 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %71 = bitcast %union.power_supply_propval* %70 to i32*
  store i32 %69, i32* %71, align 4
  br label %100

72:                                               ; preds = %3
  %73 = load %struct.axp288_chrg_info*, %struct.axp288_chrg_info** %8, align 8
  %74 = getelementptr inbounds %struct.axp288_chrg_info, %struct.axp288_chrg_info* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = mul nsw i32 %75, 1000
  %77 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %78 = bitcast %union.power_supply_propval* %77 to i32*
  store i32 %76, i32* %78, align 4
  br label %100

79:                                               ; preds = %3
  %80 = load %struct.axp288_chrg_info*, %struct.axp288_chrg_info** %8, align 8
  %81 = getelementptr inbounds %struct.axp288_chrg_info, %struct.axp288_chrg_info* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = mul nsw i32 %82, 1000
  %84 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %85 = bitcast %union.power_supply_propval* %84 to i32*
  store i32 %83, i32* %85, align 4
  br label %100

86:                                               ; preds = %3
  %87 = load %struct.axp288_chrg_info*, %struct.axp288_chrg_info** %8, align 8
  %88 = call i32 @axp288_charger_get_vbus_inlmt(%struct.axp288_chrg_info* %87)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = load i32, i32* %9, align 4
  store i32 %92, i32* %4, align 4
  br label %101

93:                                               ; preds = %86
  %94 = load i32, i32* %9, align 4
  %95 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %96 = bitcast %union.power_supply_propval* %95 to i32*
  store i32 %94, i32* %96, align 4
  br label %100

97:                                               ; preds = %3
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %4, align 4
  br label %101

100:                                              ; preds = %93, %79, %72, %65, %58, %53, %49, %39, %29, %19
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %100, %97, %91, %47, %27
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local %struct.axp288_chrg_info* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @axp288_charger_is_present(%struct.axp288_chrg_info*) #1

declare dso_local i32 @axp288_charger_is_online(%struct.axp288_chrg_info*) #1

declare dso_local i32 @axp288_get_charger_health(%struct.axp288_chrg_info*) #1

declare dso_local i32 @axp288_charger_get_vbus_inlmt(%struct.axp288_chrg_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
