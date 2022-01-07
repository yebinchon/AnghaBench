; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_charger.c_ab8500_charger_get_ext_psy_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_charger.c_ab8500_charger_get_ext_psy_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.power_supply = type { %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32, i32*, i32, i32 }
%struct.ab8500_charger = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.ux500_charger = type { %struct.power_supply* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @ab8500_charger_get_ext_psy_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_charger_get_ext_psy_data(%struct.device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.power_supply*, align 8
  %7 = alloca %struct.power_supply*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.ab8500_charger*, align 8
  %10 = alloca %union.power_supply_propval, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ux500_charger*, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = call %struct.power_supply* @dev_get_drvdata(%struct.device* %14)
  store %struct.power_supply* %15, %struct.power_supply** %7, align 8
  %16 = load %struct.power_supply*, %struct.power_supply** %7, align 8
  %17 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i8**
  store i8** %19, i8*** %8, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = bitcast i8* %20 to %struct.ux500_charger*
  store %struct.ux500_charger* %21, %struct.ux500_charger** %12, align 8
  %22 = load %struct.ux500_charger*, %struct.ux500_charger** %12, align 8
  %23 = getelementptr inbounds %struct.ux500_charger, %struct.ux500_charger* %22, i32 0, i32 0
  %24 = load %struct.power_supply*, %struct.power_supply** %23, align 8
  store %struct.power_supply* %24, %struct.power_supply** %6, align 8
  %25 = load %struct.ux500_charger*, %struct.ux500_charger** %12, align 8
  %26 = call %struct.ab8500_charger* @to_ab8500_charger_usb_device_info(%struct.ux500_charger* %25)
  store %struct.ab8500_charger* %26, %struct.ab8500_charger** %9, align 8
  %27 = load i8**, i8*** %8, align 8
  %28 = load %struct.power_supply*, %struct.power_supply** %7, align 8
  %29 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.power_supply*, %struct.power_supply** %6, align 8
  %32 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @match_string(i8** %27, i32 %30, i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %86

40:                                               ; preds = %2
  store i32 0, i32* %11, align 4
  br label %41

41:                                               ; preds = %82, %40
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.power_supply*, %struct.power_supply** %7, align 8
  %44 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %42, %47
  br i1 %48, label %49, label %85

49:                                               ; preds = %41
  %50 = load %struct.power_supply*, %struct.power_supply** %7, align 8
  %51 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %13, align 4
  %59 = load %struct.power_supply*, %struct.power_supply** %7, align 8
  %60 = load i32, i32* %13, align 4
  %61 = call i64 @power_supply_get_property(%struct.power_supply* %59, i32 %60, %union.power_supply_propval* %10)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %49
  br label %82

64:                                               ; preds = %49
  %65 = load i32, i32* %13, align 4
  switch i32 %65, label %80 [
    i32 129, label %66
  ]

66:                                               ; preds = %64
  %67 = load %struct.power_supply*, %struct.power_supply** %7, align 8
  %68 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  switch i32 %71, label %78 [
    i32 128, label %72
  ]

72:                                               ; preds = %66
  %73 = bitcast %union.power_supply_propval* %10 to i32*
  %74 = load i32, i32* %73, align 4
  %75 = sdiv i32 %74, 1000
  %76 = load %struct.ab8500_charger*, %struct.ab8500_charger** %9, align 8
  %77 = getelementptr inbounds %struct.ab8500_charger, %struct.ab8500_charger* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  br label %79

78:                                               ; preds = %66
  br label %79

79:                                               ; preds = %78, %72
  br label %81

80:                                               ; preds = %64
  br label %81

81:                                               ; preds = %80, %79
  br label %82

82:                                               ; preds = %81, %63
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %11, align 4
  br label %41

85:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %39
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local %struct.power_supply* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.ab8500_charger* @to_ab8500_charger_usb_device_info(%struct.ux500_charger*) #1

declare dso_local i32 @match_string(i8**, i32, i32) #1

declare dso_local i64 @power_supply_get_property(%struct.power_supply*, i32, %union.power_supply_propval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
