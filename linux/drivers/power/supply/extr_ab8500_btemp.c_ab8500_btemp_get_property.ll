; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_btemp.c_ab8500_btemp_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ab8500_btemp.c_ab8500_btemp_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.ab8500_btemp = type { %struct.TYPE_4__*, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @ab8500_btemp_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_btemp_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.ab8500_btemp*, align 8
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %9 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %10 = call %struct.ab8500_btemp* @power_supply_get_drvdata(%struct.power_supply* %9)
  store %struct.ab8500_btemp* %10, %struct.ab8500_btemp** %8, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %46 [
    i32 130, label %12
    i32 131, label %12
    i32 129, label %25
    i32 128, label %41
  ]

12:                                               ; preds = %3, %3
  %13 = load %struct.ab8500_btemp*, %struct.ab8500_btemp** %8, align 8
  %14 = getelementptr inbounds %struct.ab8500_btemp, %struct.ab8500_btemp* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %20 = bitcast %union.power_supply_propval* %19 to i32*
  store i32 0, i32* %20, align 4
  br label %24

21:                                               ; preds = %12
  %22 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %23 = bitcast %union.power_supply_propval* %22 to i32*
  store i32 1, i32* %23, align 4
  br label %24

24:                                               ; preds = %21, %18
  br label %49

25:                                               ; preds = %3
  %26 = load %struct.ab8500_btemp*, %struct.ab8500_btemp** %8, align 8
  %27 = getelementptr inbounds %struct.ab8500_btemp, %struct.ab8500_btemp* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = load %struct.ab8500_btemp*, %struct.ab8500_btemp** %8, align 8
  %32 = getelementptr inbounds %struct.ab8500_btemp, %struct.ab8500_btemp* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %40 = bitcast %union.power_supply_propval* %39 to i32*
  store i32 %38, i32* %40, align 4
  br label %49

41:                                               ; preds = %3
  %42 = load %struct.ab8500_btemp*, %struct.ab8500_btemp** %8, align 8
  %43 = call i32 @ab8500_btemp_get_temp(%struct.ab8500_btemp* %42)
  %44 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %45 = bitcast %union.power_supply_propval* %44 to i32*
  store i32 %43, i32* %45, align 4
  br label %49

46:                                               ; preds = %3
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %50

49:                                               ; preds = %41, %25, %24
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %46
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.ab8500_btemp* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @ab8500_btemp_get_temp(%struct.ab8500_btemp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
