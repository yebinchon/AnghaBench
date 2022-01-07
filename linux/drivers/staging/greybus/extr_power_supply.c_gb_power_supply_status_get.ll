; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_power_supply.c_gb_power_supply_status_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_power_supply.c_gb_power_supply_status_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_power_supply = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.gb_connection = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_power_supply*)* @gb_power_supply_status_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_power_supply_status_get(%struct.gb_power_supply* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gb_power_supply*, align 8
  %4 = alloca %struct.gb_connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gb_power_supply* %0, %struct.gb_power_supply** %3, align 8
  %7 = load %struct.gb_power_supply*, %struct.gb_power_supply** %3, align 8
  %8 = call %struct.gb_connection* @get_conn_from_psy(%struct.gb_power_supply* %7)
  store %struct.gb_connection* %8, %struct.gb_connection** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.gb_power_supply*, %struct.gb_power_supply** %3, align 8
  %10 = call i64 @is_cache_valid(%struct.gb_power_supply* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %60

13:                                               ; preds = %1
  %14 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %15 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @gb_pm_runtime_get_sync(i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %60

22:                                               ; preds = %13
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %44, %22
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.gb_power_supply*, %struct.gb_power_supply** %3, align 8
  %26 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %47

29:                                               ; preds = %23
  %30 = load %struct.gb_power_supply*, %struct.gb_power_supply** %3, align 8
  %31 = load %struct.gb_power_supply*, %struct.gb_power_supply** %3, align 8
  %32 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @__gb_power_supply_property_update(%struct.gb_power_supply* %30, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %29
  br label %47

43:                                               ; preds = %29
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %23

47:                                               ; preds = %42, %23
  %48 = load i32, i32* %5, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32, i32* @jiffies, align 4
  %52 = load %struct.gb_power_supply*, %struct.gb_power_supply** %3, align 8
  %53 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %50, %47
  %55 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %56 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @gb_pm_runtime_put_autosuspend(i32 %57)
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %54, %20, %12
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.gb_connection* @get_conn_from_psy(%struct.gb_power_supply*) #1

declare dso_local i64 @is_cache_valid(%struct.gb_power_supply*) #1

declare dso_local i32 @gb_pm_runtime_get_sync(i32) #1

declare dso_local i32 @__gb_power_supply_property_update(%struct.gb_power_supply*, i32) #1

declare dso_local i32 @gb_pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
