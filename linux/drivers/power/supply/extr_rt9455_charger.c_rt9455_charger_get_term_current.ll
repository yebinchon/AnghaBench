; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_rt9455_charger.c_rt9455_charger_get_term_current.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_rt9455_charger.c_rt9455_charger_get_term_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt9455_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%union.power_supply_propval = type { i32 }

@F_ICHRG = common dso_local global i32 0, align 4
@rt9455_ichrg_values = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to read ICHRG value\0A\00", align 1
@F_IEOC_PERCENTAGE = common dso_local global i32 0, align 4
@rt9455_ieoc_percentage_values = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to read IEOC value\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt9455_info*, %union.power_supply_propval*)* @rt9455_charger_get_term_current to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt9455_charger_get_term_current(%struct.rt9455_info* %0, %union.power_supply_propval* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rt9455_info*, align 8
  %5 = alloca %union.power_supply_propval*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rt9455_info* %0, %struct.rt9455_info** %4, align 8
  store %union.power_supply_propval* %1, %union.power_supply_propval** %5, align 8
  %10 = load %struct.rt9455_info*, %struct.rt9455_info** %4, align 8
  %11 = getelementptr inbounds %struct.rt9455_info, %struct.rt9455_info* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %6, align 8
  %14 = load %struct.rt9455_info*, %struct.rt9455_info** %4, align 8
  %15 = load i32, i32* @F_ICHRG, align 4
  %16 = load i32, i32* @rt9455_ichrg_values, align 4
  %17 = load i32, i32* @rt9455_ichrg_values, align 4
  %18 = call i32 @ARRAY_SIZE(i32 %17)
  %19 = call i32 @rt9455_get_field_val(%struct.rt9455_info* %14, i32 %15, i32 %16, i32 %18, i32* %7)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load %struct.device*, %struct.device** %6, align 8
  %24 = call i32 @dev_err(%struct.device* %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %3, align 4
  br label %46

26:                                               ; preds = %2
  %27 = load %struct.rt9455_info*, %struct.rt9455_info** %4, align 8
  %28 = load i32, i32* @F_IEOC_PERCENTAGE, align 4
  %29 = load i32, i32* @rt9455_ieoc_percentage_values, align 4
  %30 = load i32, i32* @rt9455_ieoc_percentage_values, align 4
  %31 = call i32 @ARRAY_SIZE(i32 %30)
  %32 = call i32 @rt9455_get_field_val(%struct.rt9455_info* %27, i32 %28, i32 %29, i32 %31, i32* %8)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %26
  %36 = load %struct.device*, %struct.device** %6, align 8
  %37 = call i32 @dev_err(%struct.device* %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %3, align 4
  br label %46

39:                                               ; preds = %26
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = mul nsw i32 %40, %41
  %43 = sdiv i32 %42, 100
  %44 = load %union.power_supply_propval*, %union.power_supply_propval** %5, align 8
  %45 = bitcast %union.power_supply_propval* %44 to i32*
  store i32 %43, i32* %45, align 4
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %39, %35, %22
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @rt9455_get_field_val(%struct.rt9455_info*, i32, i32, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
