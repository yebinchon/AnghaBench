; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ds2782_battery.c_ds278x_battery_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ds2782_battery.c_ds278x_battery_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.ds278x_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ds278x_info*, i32*)*, i32 (%struct.ds278x_info*, i32*)*, i32 (%struct.ds278x_info*, i32*)* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @ds278x_battery_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds278x_battery_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca %struct.power_supply*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.power_supply_propval*, align 8
  %7 = alloca %struct.ds278x_info*, align 8
  %8 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %4, align 8
  store i32 %1, i32* %5, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %6, align 8
  %9 = load %struct.power_supply*, %struct.power_supply** %4, align 8
  %10 = call %struct.ds278x_info* @to_ds278x_info(%struct.power_supply* %9)
  store %struct.ds278x_info* %10, %struct.ds278x_info** %7, align 8
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %52 [
    i32 130, label %12
    i32 132, label %17
    i32 128, label %27
    i32 131, label %37
    i32 129, label %47
  ]

12:                                               ; preds = %3
  %13 = load %struct.ds278x_info*, %struct.ds278x_info** %7, align 8
  %14 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %15 = bitcast %union.power_supply_propval* %14 to i32*
  %16 = call i32 @ds278x_get_status(%struct.ds278x_info* %13, i32* %15)
  store i32 %16, i32* %8, align 4
  br label %55

17:                                               ; preds = %3
  %18 = load %struct.ds278x_info*, %struct.ds278x_info** %7, align 8
  %19 = getelementptr inbounds %struct.ds278x_info, %struct.ds278x_info* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.ds278x_info*, i32*)*, i32 (%struct.ds278x_info*, i32*)** %21, align 8
  %23 = load %struct.ds278x_info*, %struct.ds278x_info** %7, align 8
  %24 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %25 = bitcast %union.power_supply_propval* %24 to i32*
  %26 = call i32 %22(%struct.ds278x_info* %23, i32* %25)
  store i32 %26, i32* %8, align 4
  br label %55

27:                                               ; preds = %3
  %28 = load %struct.ds278x_info*, %struct.ds278x_info** %7, align 8
  %29 = getelementptr inbounds %struct.ds278x_info, %struct.ds278x_info* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32 (%struct.ds278x_info*, i32*)*, i32 (%struct.ds278x_info*, i32*)** %31, align 8
  %33 = load %struct.ds278x_info*, %struct.ds278x_info** %7, align 8
  %34 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %35 = bitcast %union.power_supply_propval* %34 to i32*
  %36 = call i32 %32(%struct.ds278x_info* %33, i32* %35)
  store i32 %36, i32* %8, align 4
  br label %55

37:                                               ; preds = %3
  %38 = load %struct.ds278x_info*, %struct.ds278x_info** %7, align 8
  %39 = getelementptr inbounds %struct.ds278x_info, %struct.ds278x_info* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i32 (%struct.ds278x_info*, i32*)*, i32 (%struct.ds278x_info*, i32*)** %41, align 8
  %43 = load %struct.ds278x_info*, %struct.ds278x_info** %7, align 8
  %44 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %45 = bitcast %union.power_supply_propval* %44 to i32*
  %46 = call i32 %42(%struct.ds278x_info* %43, i32* %45)
  store i32 %46, i32* %8, align 4
  br label %55

47:                                               ; preds = %3
  %48 = load %struct.ds278x_info*, %struct.ds278x_info** %7, align 8
  %49 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %50 = bitcast %union.power_supply_propval* %49 to i32*
  %51 = call i32 @ds278x_get_temp(%struct.ds278x_info* %48, i32* %50)
  store i32 %51, i32* %8, align 4
  br label %55

52:                                               ; preds = %3
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %52, %47, %37, %27, %17, %12
  %56 = load i32, i32* %8, align 4
  ret i32 %56
}

declare dso_local %struct.ds278x_info* @to_ds278x_info(%struct.power_supply*) #1

declare dso_local i32 @ds278x_get_status(%struct.ds278x_info*, i32*) #1

declare dso_local i32 @ds278x_get_temp(%struct.ds278x_info*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
