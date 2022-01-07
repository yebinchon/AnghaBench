; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_generic-adc-battery.c_gab_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_generic-adc-battery.c_gab_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.gab = type { %struct.gab_platform_data* }
%struct.gab_platform_data = type { i32 (i32)*, %struct.power_supply_info }
%struct.power_supply_info = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"no battery infos ?!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @gab_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gab_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.gab*, align 8
  %9 = alloca %struct.gab_platform_data*, align 8
  %10 = alloca %struct.power_supply_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %14 = call %struct.gab* @to_generic_bat(%struct.power_supply* %13)
  store %struct.gab* %14, %struct.gab** %8, align 8
  %15 = load %struct.gab*, %struct.gab** %8, align 8
  %16 = icmp ne %struct.gab* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %3
  %18 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %19 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %18, i32 0, i32 0
  %20 = call i32 @dev_err(i32* %19, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %93

23:                                               ; preds = %3
  %24 = load %struct.gab*, %struct.gab** %8, align 8
  %25 = getelementptr inbounds %struct.gab, %struct.gab* %24, i32 0, i32 0
  %26 = load %struct.gab_platform_data*, %struct.gab_platform_data** %25, align 8
  store %struct.gab_platform_data* %26, %struct.gab_platform_data** %9, align 8
  %27 = load %struct.gab_platform_data*, %struct.gab_platform_data** %9, align 8
  %28 = getelementptr inbounds %struct.gab_platform_data, %struct.gab_platform_data* %27, i32 0, i32 1
  store %struct.power_supply_info* %28, %struct.power_supply_info** %10, align 8
  %29 = load i32, i32* %6, align 4
  switch i32 %29, label %87 [
    i32 132, label %30
    i32 138, label %35
    i32 136, label %38
    i32 128, label %46
    i32 135, label %46
    i32 133, label %46
    i32 131, label %57
    i32 129, label %63
    i32 130, label %69
    i32 137, label %75
    i32 134, label %81
  ]

30:                                               ; preds = %23
  %31 = load %struct.gab*, %struct.gab** %8, align 8
  %32 = call i32 @gab_get_status(%struct.gab* %31)
  %33 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %34 = bitcast %union.power_supply_propval* %33 to i32*
  store i32 %32, i32* %34, align 4
  br label %90

35:                                               ; preds = %23
  %36 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %37 = bitcast %union.power_supply_propval* %36 to i32*
  store i32 0, i32* %37, align 4
  br label %90

38:                                               ; preds = %23
  %39 = load %struct.gab_platform_data*, %struct.gab_platform_data** %9, align 8
  %40 = getelementptr inbounds %struct.gab_platform_data, %struct.gab_platform_data* %39, i32 0, i32 0
  %41 = load i32 (i32)*, i32 (i32)** %40, align 8
  %42 = load i32, i32* %11, align 4
  %43 = call i32 %41(i32 %42)
  %44 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %45 = bitcast %union.power_supply_propval* %44 to i32*
  store i32 %43, i32* %45, align 4
  br label %90

46:                                               ; preds = %23, %23, %23
  %47 = load %struct.gab*, %struct.gab** %8, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @read_channel(%struct.gab* %47, i32 %48, i32* %11)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %91

53:                                               ; preds = %46
  %54 = load i32, i32* %11, align 4
  %55 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %56 = bitcast %union.power_supply_propval* %55 to i32*
  store i32 %54, i32* %56, align 4
  br label %90

57:                                               ; preds = %23
  %58 = load %struct.power_supply_info*, %struct.power_supply_info** %10, align 8
  %59 = getelementptr inbounds %struct.power_supply_info, %struct.power_supply_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %62 = bitcast %union.power_supply_propval* %61 to i32*
  store i32 %60, i32* %62, align 4
  br label %90

63:                                               ; preds = %23
  %64 = load %struct.power_supply_info*, %struct.power_supply_info** %10, align 8
  %65 = getelementptr inbounds %struct.power_supply_info, %struct.power_supply_info* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %68 = bitcast %union.power_supply_propval* %67 to i32*
  store i32 %66, i32* %68, align 4
  br label %90

69:                                               ; preds = %23
  %70 = load %struct.power_supply_info*, %struct.power_supply_info** %10, align 8
  %71 = getelementptr inbounds %struct.power_supply_info, %struct.power_supply_info* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %74 = bitcast %union.power_supply_propval* %73 to i32*
  store i32 %72, i32* %74, align 4
  br label %90

75:                                               ; preds = %23
  %76 = load %struct.power_supply_info*, %struct.power_supply_info** %10, align 8
  %77 = getelementptr inbounds %struct.power_supply_info, %struct.power_supply_info* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %80 = bitcast %union.power_supply_propval* %79 to i32*
  store i32 %78, i32* %80, align 4
  br label %90

81:                                               ; preds = %23
  %82 = load %struct.power_supply_info*, %struct.power_supply_info** %10, align 8
  %83 = getelementptr inbounds %struct.power_supply_info, %struct.power_supply_info* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %86 = bitcast %union.power_supply_propval* %85 to i32*
  store i32 %84, i32* %86, align 4
  br label %90

87:                                               ; preds = %23
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %93

90:                                               ; preds = %81, %75, %69, %63, %57, %53, %38, %35, %30
  br label %91

91:                                               ; preds = %90, %52
  %92 = load i32, i32* %12, align 4
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %91, %87, %17
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local %struct.gab* @to_generic_bat(%struct.power_supply*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @gab_get_status(%struct.gab*) #1

declare dso_local i32 @read_channel(%struct.gab*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
