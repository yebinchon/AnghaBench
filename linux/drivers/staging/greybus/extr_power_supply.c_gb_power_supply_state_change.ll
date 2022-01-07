; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_power_supply.c_gb_power_supply_state_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_power_supply.c_gb_power_supply_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_power_supply = type { i32, i32 }
%struct.gb_power_supply_prop = type { i64 }
%struct.gb_connection = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@GB_POWER_SUPPLY_STATUS_CHARGING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"Fail to set wake lock for charging state\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Fail to set wake unlock for none charging\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gb_power_supply*, %struct.gb_power_supply_prop*)* @gb_power_supply_state_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gb_power_supply_state_change(%struct.gb_power_supply* %0, %struct.gb_power_supply_prop* %1) #0 {
  %3 = alloca %struct.gb_power_supply*, align 8
  %4 = alloca %struct.gb_power_supply_prop*, align 8
  %5 = alloca %struct.gb_connection*, align 8
  %6 = alloca i32, align 4
  store %struct.gb_power_supply* %0, %struct.gb_power_supply** %3, align 8
  store %struct.gb_power_supply_prop* %1, %struct.gb_power_supply_prop** %4, align 8
  %7 = load %struct.gb_power_supply*, %struct.gb_power_supply** %3, align 8
  %8 = call %struct.gb_connection* @get_conn_from_psy(%struct.gb_power_supply* %7)
  store %struct.gb_connection* %8, %struct.gb_connection** %5, align 8
  %9 = load %struct.gb_power_supply*, %struct.gb_power_supply** %3, align 8
  %10 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %9, i32 0, i32 1
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.gb_power_supply_prop*, %struct.gb_power_supply_prop** %4, align 8
  %13 = getelementptr inbounds %struct.gb_power_supply_prop, %struct.gb_power_supply_prop* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @GB_POWER_SUPPLY_STATUS_CHARGING, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %39

17:                                               ; preds = %2
  %18 = load %struct.gb_power_supply*, %struct.gb_power_supply** %3, align 8
  %19 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %39, label %22

22:                                               ; preds = %17
  %23 = load %struct.gb_connection*, %struct.gb_connection** %5, align 8
  %24 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = call i32 @gb_pm_runtime_get_sync(%struct.TYPE_3__* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load %struct.gb_connection*, %struct.gb_connection** %5, align 8
  %31 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = call i32 @dev_err(i32* %33, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %38

35:                                               ; preds = %22
  %36 = load %struct.gb_power_supply*, %struct.gb_power_supply** %3, align 8
  %37 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  br label %38

38:                                               ; preds = %35, %29
  br label %62

39:                                               ; preds = %17, %2
  %40 = load %struct.gb_power_supply*, %struct.gb_power_supply** %3, align 8
  %41 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %39
  %45 = load %struct.gb_connection*, %struct.gb_connection** %5, align 8
  %46 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = call i32 @gb_pm_runtime_put_autosuspend(%struct.TYPE_3__* %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %44
  %52 = load %struct.gb_connection*, %struct.gb_connection** %5, align 8
  %53 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = call i32 @dev_err(i32* %55, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %60

57:                                               ; preds = %44
  %58 = load %struct.gb_power_supply*, %struct.gb_power_supply** %3, align 8
  %59 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %58, i32 0, i32 0
  store i32 0, i32* %59, align 4
  br label %60

60:                                               ; preds = %57, %51
  br label %61

61:                                               ; preds = %60, %39
  br label %62

62:                                               ; preds = %61, %38
  %63 = load %struct.gb_power_supply*, %struct.gb_power_supply** %3, align 8
  %64 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %63, i32 0, i32 1
  %65 = call i32 @mutex_unlock(i32* %64)
  ret void
}

declare dso_local %struct.gb_connection* @get_conn_from_psy(%struct.gb_power_supply*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gb_pm_runtime_get_sync(%struct.TYPE_3__*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @gb_pm_runtime_put_autosuspend(%struct.TYPE_3__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
