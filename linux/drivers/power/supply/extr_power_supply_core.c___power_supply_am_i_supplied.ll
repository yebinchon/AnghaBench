; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_power_supply_core.c___power_supply_am_i_supplied.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_power_supply_core.c___power_supply_am_i_supplied.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.power_supply = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* }
%struct.psy_am_i_supplied_data = type { i32, i32 }

@POWER_SUPPLY_PROP_ONLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @__power_supply_am_i_supplied to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__power_supply_am_i_supplied(%struct.device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %union.power_supply_propval, align 4
  %7 = alloca %struct.power_supply*, align 8
  %8 = alloca %struct.psy_am_i_supplied_data*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = bitcast %union.power_supply_propval* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 4, i1 false)
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.power_supply* @dev_get_drvdata(%struct.device* %10)
  store %struct.power_supply* %11, %struct.power_supply** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.psy_am_i_supplied_data*
  store %struct.psy_am_i_supplied_data* %13, %struct.psy_am_i_supplied_data** %8, align 8
  %14 = load %struct.power_supply*, %struct.power_supply** %7, align 8
  %15 = load %struct.psy_am_i_supplied_data*, %struct.psy_am_i_supplied_data** %8, align 8
  %16 = getelementptr inbounds %struct.psy_am_i_supplied_data, %struct.psy_am_i_supplied_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @__power_supply_is_supplied_by(%struct.power_supply* %14, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %2
  %21 = load %struct.psy_am_i_supplied_data*, %struct.psy_am_i_supplied_data** %8, align 8
  %22 = getelementptr inbounds %struct.psy_am_i_supplied_data, %struct.psy_am_i_supplied_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  %25 = load %struct.power_supply*, %struct.power_supply** %7, align 8
  %26 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (%struct.power_supply*, i32, %union.power_supply_propval*)*, i32 (%struct.power_supply*, i32, %union.power_supply_propval*)** %28, align 8
  %30 = load %struct.power_supply*, %struct.power_supply** %7, align 8
  %31 = load i32, i32* @POWER_SUPPLY_PROP_ONLINE, align 4
  %32 = call i32 %29(%struct.power_supply* %30, i32 %31, %union.power_supply_propval* %6)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %20
  %35 = bitcast %union.power_supply_propval* %6 to i32*
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %3, align 4
  br label %39

37:                                               ; preds = %20
  br label %38

38:                                               ; preds = %37, %2
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %34
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.power_supply* @dev_get_drvdata(%struct.device*) #2

declare dso_local i64 @__power_supply_is_supplied_by(%struct.power_supply*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
