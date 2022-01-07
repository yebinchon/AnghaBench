; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_tosa_battery.c_tosa_bat_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_tosa_battery.c_tosa_bat_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.tosa_bat = type { i32 (%struct.tosa_bat*)*, i32, i32, i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @tosa_bat_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tosa_bat_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tosa_bat*, align 8
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %11 = call %struct.tosa_bat* @power_supply_get_drvdata(%struct.power_supply* %10)
  store %struct.tosa_bat* %11, %struct.tosa_bat** %9, align 8
  %12 = load %struct.tosa_bat*, %struct.tosa_bat** %9, align 8
  %13 = getelementptr inbounds %struct.tosa_bat, %struct.tosa_bat* %12, i32 0, i32 0
  %14 = load i32 (%struct.tosa_bat*)*, i32 (%struct.tosa_bat*)** %13, align 8
  %15 = icmp ne i32 (%struct.tosa_bat*)* %14, null
  br i1 %15, label %16, label %29

16:                                               ; preds = %3
  %17 = load %struct.tosa_bat*, %struct.tosa_bat** %9, align 8
  %18 = getelementptr inbounds %struct.tosa_bat, %struct.tosa_bat* %17, i32 0, i32 0
  %19 = load i32 (%struct.tosa_bat*)*, i32 (%struct.tosa_bat*)** %18, align 8
  %20 = load %struct.tosa_bat*, %struct.tosa_bat** %9, align 8
  %21 = call i32 %19(%struct.tosa_bat* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %16
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 135
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %104

29:                                               ; preds = %23, %16, %3
  %30 = load i32, i32* %6, align 4
  switch i32 %30, label %99 [
    i32 134, label %31
    i32 133, label %37
    i32 128, label %43
    i32 131, label %48
    i32 130, label %66
    i32 129, label %72
    i32 132, label %78
    i32 135, label %83
  ]

31:                                               ; preds = %29
  %32 = load %struct.tosa_bat*, %struct.tosa_bat** %9, align 8
  %33 = getelementptr inbounds %struct.tosa_bat, %struct.tosa_bat* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %36 = bitcast %union.power_supply_propval* %35 to i32*
  store i32 %34, i32* %36, align 4
  br label %102

37:                                               ; preds = %29
  %38 = load %struct.tosa_bat*, %struct.tosa_bat** %9, align 8
  %39 = getelementptr inbounds %struct.tosa_bat, %struct.tosa_bat* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %42 = bitcast %union.power_supply_propval* %41 to i32*
  store i32 %40, i32* %42, align 4
  br label %102

43:                                               ; preds = %29
  %44 = load %struct.tosa_bat*, %struct.tosa_bat** %9, align 8
  %45 = call i32 @tosa_read_bat(%struct.tosa_bat* %44)
  %46 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %47 = bitcast %union.power_supply_propval* %46 to i32*
  store i32 %45, i32* %47, align 4
  br label %102

48:                                               ; preds = %29
  %49 = load %struct.tosa_bat*, %struct.tosa_bat** %9, align 8
  %50 = getelementptr inbounds %struct.tosa_bat, %struct.tosa_bat* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load %struct.tosa_bat*, %struct.tosa_bat** %9, align 8
  %55 = getelementptr inbounds %struct.tosa_bat, %struct.tosa_bat* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %58 = bitcast %union.power_supply_propval* %57 to i32*
  store i32 %56, i32* %58, align 4
  br label %65

59:                                               ; preds = %48
  %60 = load %struct.tosa_bat*, %struct.tosa_bat** %9, align 8
  %61 = getelementptr inbounds %struct.tosa_bat, %struct.tosa_bat* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %64 = bitcast %union.power_supply_propval* %63 to i32*
  store i32 %62, i32* %64, align 4
  br label %65

65:                                               ; preds = %59, %53
  br label %102

66:                                               ; preds = %29
  %67 = load %struct.tosa_bat*, %struct.tosa_bat** %9, align 8
  %68 = getelementptr inbounds %struct.tosa_bat, %struct.tosa_bat* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %71 = bitcast %union.power_supply_propval* %70 to i32*
  store i32 %69, i32* %71, align 4
  br label %102

72:                                               ; preds = %29
  %73 = load %struct.tosa_bat*, %struct.tosa_bat** %9, align 8
  %74 = getelementptr inbounds %struct.tosa_bat, %struct.tosa_bat* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %77 = bitcast %union.power_supply_propval* %76 to i32*
  store i32 %75, i32* %77, align 4
  br label %102

78:                                               ; preds = %29
  %79 = load %struct.tosa_bat*, %struct.tosa_bat** %9, align 8
  %80 = call i32 @tosa_read_temp(%struct.tosa_bat* %79)
  %81 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %82 = bitcast %union.power_supply_propval* %81 to i32*
  store i32 %80, i32* %82, align 4
  br label %102

83:                                               ; preds = %29
  %84 = load %struct.tosa_bat*, %struct.tosa_bat** %9, align 8
  %85 = getelementptr inbounds %struct.tosa_bat, %struct.tosa_bat* %84, i32 0, i32 0
  %86 = load i32 (%struct.tosa_bat*)*, i32 (%struct.tosa_bat*)** %85, align 8
  %87 = icmp ne i32 (%struct.tosa_bat*)* %86, null
  br i1 %87, label %88, label %94

88:                                               ; preds = %83
  %89 = load %struct.tosa_bat*, %struct.tosa_bat** %9, align 8
  %90 = getelementptr inbounds %struct.tosa_bat, %struct.tosa_bat* %89, i32 0, i32 0
  %91 = load i32 (%struct.tosa_bat*)*, i32 (%struct.tosa_bat*)** %90, align 8
  %92 = load %struct.tosa_bat*, %struct.tosa_bat** %9, align 8
  %93 = call i32 %91(%struct.tosa_bat* %92)
  br label %95

94:                                               ; preds = %83
  br label %95

95:                                               ; preds = %94, %88
  %96 = phi i32 [ %93, %88 ], [ 1, %94 ]
  %97 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %98 = bitcast %union.power_supply_propval* %97 to i32*
  store i32 %96, i32* %98, align 4
  br label %102

99:                                               ; preds = %29
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %8, align 4
  br label %102

102:                                              ; preds = %99, %95, %78, %72, %66, %65, %43, %37, %31
  %103 = load i32, i32* %8, align 4
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %102, %26
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local %struct.tosa_bat* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @tosa_read_bat(%struct.tosa_bat*) #1

declare dso_local i32 @tosa_read_temp(%struct.tosa_bat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
