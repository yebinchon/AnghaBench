; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_charger.c_ab8500_charger_usb_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_charger.c_ab8500_charger_usb_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.ab8500_charger = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@POWER_SUPPLY_HEALTH_UNSPEC_FAILURE = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_DEAD = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_OVERHEAT = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_OVERVOLTAGE = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_GOOD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @ab8500_charger_usb_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_charger_usb_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.ab8500_charger*, align 8
  %9 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %10 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %11 = call i32 @psy_to_ux500_charger(%struct.power_supply* %10)
  %12 = call %struct.ab8500_charger* @to_ab8500_charger_usb_device_info(i32 %11)
  store %struct.ab8500_charger* %12, %struct.ab8500_charger** %8, align 8
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %143 [
    i32 132, label %14
    i32 131, label %68
    i32 130, label %75
    i32 128, label %82
    i32 129, label %100
    i32 133, label %112
    i32 134, label %130
  ]

14:                                               ; preds = %3
  %15 = load %struct.ab8500_charger*, %struct.ab8500_charger** %8, align 8
  %16 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load i32, i32* @POWER_SUPPLY_HEALTH_UNSPEC_FAILURE, align 4
  %22 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %23 = bitcast %union.power_supply_propval* %22 to i32*
  store i32 %21, i32* %23, align 4
  br label %67

24:                                               ; preds = %14
  %25 = load %struct.ab8500_charger*, %struct.ab8500_charger** %8, align 8
  %26 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load %struct.ab8500_charger*, %struct.ab8500_charger** %8, align 8
  %32 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30, %24
  %37 = load i32, i32* @POWER_SUPPLY_HEALTH_DEAD, align 4
  %38 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %39 = bitcast %union.power_supply_propval* %38 to i32*
  store i32 %37, i32* %39, align 4
  br label %66

40:                                               ; preds = %30
  %41 = load %struct.ab8500_charger*, %struct.ab8500_charger** %8, align 8
  %42 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load i32, i32* @POWER_SUPPLY_HEALTH_OVERHEAT, align 4
  %48 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %49 = bitcast %union.power_supply_propval* %48 to i32*
  store i32 %47, i32* %49, align 4
  br label %65

50:                                               ; preds = %40
  %51 = load %struct.ab8500_charger*, %struct.ab8500_charger** %8, align 8
  %52 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load i32, i32* @POWER_SUPPLY_HEALTH_OVERVOLTAGE, align 4
  %58 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %59 = bitcast %union.power_supply_propval* %58 to i32*
  store i32 %57, i32* %59, align 4
  br label %64

60:                                               ; preds = %50
  %61 = load i32, i32* @POWER_SUPPLY_HEALTH_GOOD, align 4
  %62 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %63 = bitcast %union.power_supply_propval* %62 to i32*
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %60, %56
  br label %65

65:                                               ; preds = %64, %46
  br label %66

66:                                               ; preds = %65, %36
  br label %67

67:                                               ; preds = %66, %20
  br label %146

68:                                               ; preds = %3
  %69 = load %struct.ab8500_charger*, %struct.ab8500_charger** %8, align 8
  %70 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %74 = bitcast %union.power_supply_propval* %73 to i32*
  store i32 %72, i32* %74, align 4
  br label %146

75:                                               ; preds = %3
  %76 = load %struct.ab8500_charger*, %struct.ab8500_charger** %8, align 8
  %77 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %81 = bitcast %union.power_supply_propval* %80 to i32*
  store i32 %79, i32* %81, align 4
  br label %146

82:                                               ; preds = %3
  %83 = load %struct.ab8500_charger*, %struct.ab8500_charger** %8, align 8
  %84 = call i32 @ab8500_charger_get_vbus_voltage(%struct.ab8500_charger* %83)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp sge i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load i32, i32* %9, align 4
  %89 = load %struct.ab8500_charger*, %struct.ab8500_charger** %8, align 8
  %90 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 2
  store i32 %88, i32* %91, align 4
  br label %92

92:                                               ; preds = %87, %82
  %93 = load %struct.ab8500_charger*, %struct.ab8500_charger** %8, align 8
  %94 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = mul nsw i32 %96, 1000
  %98 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %99 = bitcast %union.power_supply_propval* %98 to i32*
  store i32 %97, i32* %99, align 4
  br label %146

100:                                              ; preds = %3
  %101 = load %struct.ab8500_charger*, %struct.ab8500_charger** %8, align 8
  %102 = call i32 @ab8500_charger_usb_cv(%struct.ab8500_charger* %101)
  %103 = load %struct.ab8500_charger*, %struct.ab8500_charger** %8, align 8
  %104 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 3
  store i32 %102, i32* %105, align 4
  %106 = load %struct.ab8500_charger*, %struct.ab8500_charger** %8, align 8
  %107 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %111 = bitcast %union.power_supply_propval* %110 to i32*
  store i32 %109, i32* %111, align 4
  br label %146

112:                                              ; preds = %3
  %113 = load %struct.ab8500_charger*, %struct.ab8500_charger** %8, align 8
  %114 = call i32 @ab8500_charger_get_usb_current(%struct.ab8500_charger* %113)
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp sge i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %112
  %118 = load i32, i32* %9, align 4
  %119 = load %struct.ab8500_charger*, %struct.ab8500_charger** %8, align 8
  %120 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 4
  store i32 %118, i32* %121, align 4
  br label %122

122:                                              ; preds = %117, %112
  %123 = load %struct.ab8500_charger*, %struct.ab8500_charger** %8, align 8
  %124 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = mul nsw i32 %126, 1000
  %128 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %129 = bitcast %union.power_supply_propval* %128 to i32*
  store i32 %127, i32* %129, align 4
  br label %146

130:                                              ; preds = %3
  %131 = load %struct.ab8500_charger*, %struct.ab8500_charger** %8, align 8
  %132 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %130
  %137 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %138 = bitcast %union.power_supply_propval* %137 to i32*
  store i32 1, i32* %138, align 4
  br label %142

139:                                              ; preds = %130
  %140 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %141 = bitcast %union.power_supply_propval* %140 to i32*
  store i32 0, i32* %141, align 4
  br label %142

142:                                              ; preds = %139, %136
  br label %146

143:                                              ; preds = %3
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %4, align 4
  br label %147

146:                                              ; preds = %142, %122, %100, %92, %75, %68, %67
  store i32 0, i32* %4, align 4
  br label %147

147:                                              ; preds = %146, %143
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local %struct.ab8500_charger* @to_ab8500_charger_usb_device_info(i32) #1

declare dso_local i32 @psy_to_ux500_charger(%struct.power_supply*) #1

declare dso_local i32 @ab8500_charger_get_vbus_voltage(%struct.ab8500_charger*) #1

declare dso_local i32 @ab8500_charger_usb_cv(%struct.ab8500_charger*) #1

declare dso_local i32 @ab8500_charger_get_usb_current(%struct.ab8500_charger*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
