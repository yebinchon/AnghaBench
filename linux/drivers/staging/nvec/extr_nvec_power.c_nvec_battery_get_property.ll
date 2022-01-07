; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/nvec/extr_nvec_power.c_nvec_battery_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/nvec/extr_nvec_power.c_nvec_battery_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.nvec_power = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @nvec_battery_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvec_battery_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.nvec_power*, align 8
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %9 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %10 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.nvec_power* @dev_get_drvdata(i32 %12)
  store %struct.nvec_power* %13, %struct.nvec_power** %8, align 8
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %105 [
    i32 132, label %15
    i32 142, label %21
    i32 133, label %27
    i32 128, label %33
    i32 136, label %39
    i32 137, label %45
    i32 129, label %51
    i32 139, label %57
    i32 140, label %63
    i32 141, label %69
    i32 138, label %75
    i32 130, label %81
    i32 135, label %87
    i32 134, label %93
    i32 131, label %99
  ]

15:                                               ; preds = %3
  %16 = load %struct.nvec_power*, %struct.nvec_power** %8, align 8
  %17 = getelementptr inbounds %struct.nvec_power, %struct.nvec_power* %16, i32 0, i32 14
  %18 = load i32, i32* %17, align 4
  %19 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %20 = bitcast %union.power_supply_propval* %19 to i32*
  store i32 %18, i32* %20, align 4
  br label %108

21:                                               ; preds = %3
  %22 = load %struct.nvec_power*, %struct.nvec_power** %8, align 8
  %23 = getelementptr inbounds %struct.nvec_power, %struct.nvec_power* %22, i32 0, i32 13
  %24 = load i32, i32* %23, align 4
  %25 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %26 = bitcast %union.power_supply_propval* %25 to i32*
  store i32 %24, i32* %26, align 4
  br label %108

27:                                               ; preds = %3
  %28 = load %struct.nvec_power*, %struct.nvec_power** %8, align 8
  %29 = getelementptr inbounds %struct.nvec_power, %struct.nvec_power* %28, i32 0, i32 12
  %30 = load i32, i32* %29, align 4
  %31 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %32 = bitcast %union.power_supply_propval* %31 to i32*
  store i32 %30, i32* %32, align 4
  br label %108

33:                                               ; preds = %3
  %34 = load %struct.nvec_power*, %struct.nvec_power** %8, align 8
  %35 = getelementptr inbounds %struct.nvec_power, %struct.nvec_power* %34, i32 0, i32 11
  %36 = load i32, i32* %35, align 4
  %37 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %38 = bitcast %union.power_supply_propval* %37 to i32*
  store i32 %36, i32* %38, align 4
  br label %108

39:                                               ; preds = %3
  %40 = load %struct.nvec_power*, %struct.nvec_power** %8, align 8
  %41 = getelementptr inbounds %struct.nvec_power, %struct.nvec_power* %40, i32 0, i32 10
  %42 = load i32, i32* %41, align 4
  %43 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %44 = bitcast %union.power_supply_propval* %43 to i32*
  store i32 %42, i32* %44, align 4
  br label %108

45:                                               ; preds = %3
  %46 = load %struct.nvec_power*, %struct.nvec_power** %8, align 8
  %47 = getelementptr inbounds %struct.nvec_power, %struct.nvec_power* %46, i32 0, i32 9
  %48 = load i32, i32* %47, align 4
  %49 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %50 = bitcast %union.power_supply_propval* %49 to i32*
  store i32 %48, i32* %50, align 4
  br label %108

51:                                               ; preds = %3
  %52 = load %struct.nvec_power*, %struct.nvec_power** %8, align 8
  %53 = getelementptr inbounds %struct.nvec_power, %struct.nvec_power* %52, i32 0, i32 8
  %54 = load i32, i32* %53, align 4
  %55 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %56 = bitcast %union.power_supply_propval* %55 to i32*
  store i32 %54, i32* %56, align 4
  br label %108

57:                                               ; preds = %3
  %58 = load %struct.nvec_power*, %struct.nvec_power** %8, align 8
  %59 = getelementptr inbounds %struct.nvec_power, %struct.nvec_power* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 4
  %61 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %62 = bitcast %union.power_supply_propval* %61 to i32*
  store i32 %60, i32* %62, align 4
  br label %108

63:                                               ; preds = %3
  %64 = load %struct.nvec_power*, %struct.nvec_power** %8, align 8
  %65 = getelementptr inbounds %struct.nvec_power, %struct.nvec_power* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 4
  %67 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %68 = bitcast %union.power_supply_propval* %67 to i32*
  store i32 %66, i32* %68, align 4
  br label %108

69:                                               ; preds = %3
  %70 = load %struct.nvec_power*, %struct.nvec_power** %8, align 8
  %71 = getelementptr inbounds %struct.nvec_power, %struct.nvec_power* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %74 = bitcast %union.power_supply_propval* %73 to i32*
  store i32 %72, i32* %74, align 4
  br label %108

75:                                               ; preds = %3
  %76 = load %struct.nvec_power*, %struct.nvec_power** %8, align 8
  %77 = getelementptr inbounds %struct.nvec_power, %struct.nvec_power* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %80 = bitcast %union.power_supply_propval* %79 to i32*
  store i32 %78, i32* %80, align 4
  br label %108

81:                                               ; preds = %3
  %82 = load %struct.nvec_power*, %struct.nvec_power** %8, align 8
  %83 = getelementptr inbounds %struct.nvec_power, %struct.nvec_power* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %86 = bitcast %union.power_supply_propval* %85 to i32*
  store i32 %84, i32* %86, align 4
  br label %108

87:                                               ; preds = %3
  %88 = load %struct.nvec_power*, %struct.nvec_power** %8, align 8
  %89 = getelementptr inbounds %struct.nvec_power, %struct.nvec_power* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %92 = bitcast %union.power_supply_propval* %91 to i32*
  store i32 %90, i32* %92, align 4
  br label %108

93:                                               ; preds = %3
  %94 = load %struct.nvec_power*, %struct.nvec_power** %8, align 8
  %95 = getelementptr inbounds %struct.nvec_power, %struct.nvec_power* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %98 = bitcast %union.power_supply_propval* %97 to i32*
  store i32 %96, i32* %98, align 4
  br label %108

99:                                               ; preds = %3
  %100 = load %struct.nvec_power*, %struct.nvec_power** %8, align 8
  %101 = getelementptr inbounds %struct.nvec_power, %struct.nvec_power* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %104 = bitcast %union.power_supply_propval* %103 to i32*
  store i32 %102, i32* %104, align 4
  br label %108

105:                                              ; preds = %3
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %4, align 4
  br label %109

108:                                              ; preds = %99, %93, %87, %81, %75, %69, %63, %57, %51, %45, %39, %33, %27, %21, %15
  store i32 0, i32* %4, align 4
  br label %109

109:                                              ; preds = %108, %105
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local %struct.nvec_power* @dev_get_drvdata(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
