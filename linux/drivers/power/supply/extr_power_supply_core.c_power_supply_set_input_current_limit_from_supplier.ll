; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_power_supply_core.c_power_supply_set_input_current_limit_from_supplier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_power_supply_core.c_power_supply_set_input_current_limit_from_supplier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* }
%union.power_supply_propval = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@power_supply_class = common dso_local global i32 0, align 4
@__power_supply_get_supplier_max_current = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@POWER_SUPPLY_PROP_INPUT_CURRENT_LIMIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @power_supply_set_input_current_limit_from_supplier(%struct.power_supply* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.power_supply*, align 8
  %4 = alloca %union.power_supply_propval, align 4
  %5 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %3, align 8
  %6 = bitcast %union.power_supply_propval* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 4, i1 false)
  %7 = load %struct.power_supply*, %struct.power_supply** %3, align 8
  %8 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (%struct.power_supply*, i32, %union.power_supply_propval*)*, i32 (%struct.power_supply*, i32, %union.power_supply_propval*)** %10, align 8
  %12 = icmp ne i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %44

16:                                               ; preds = %1
  %17 = load i32, i32* @power_supply_class, align 4
  %18 = load %struct.power_supply*, %struct.power_supply** %3, align 8
  %19 = load i32, i32* @__power_supply_get_supplier_max_current, align 4
  %20 = call i32 @class_for_each_device(i32 %17, i32* null, %struct.power_supply* %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %16
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  br label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %5, align 4
  br label %31

31:                                               ; preds = %29, %26
  %32 = phi i32 [ %28, %26 ], [ %30, %29 ]
  store i32 %32, i32* %2, align 4
  br label %44

33:                                               ; preds = %16
  %34 = load i32, i32* %5, align 4
  %35 = bitcast %union.power_supply_propval* %4 to i32*
  store i32 %34, i32* %35, align 4
  %36 = load %struct.power_supply*, %struct.power_supply** %3, align 8
  %37 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32 (%struct.power_supply*, i32, %union.power_supply_propval*)*, i32 (%struct.power_supply*, i32, %union.power_supply_propval*)** %39, align 8
  %41 = load %struct.power_supply*, %struct.power_supply** %3, align 8
  %42 = load i32, i32* @POWER_SUPPLY_PROP_INPUT_CURRENT_LIMIT, align 4
  %43 = call i32 %40(%struct.power_supply* %41, i32 %42, %union.power_supply_propval* %4)
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %33, %31, %13
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @class_for_each_device(i32, i32*, %struct.power_supply*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
