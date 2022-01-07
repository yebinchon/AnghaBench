; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_power_supply.c_gb_power_supply_property_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_power_supply.c_gb_power_supply_property_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_power_supply = type { i32 }
%struct.gb_connection = type { i32 }
%struct.gb_power_supply_prop = type { i32, i32 }
%struct.gb_power_supply_set_property_request = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GB_POWER_SUPPLY_TYPE_SET_PROPERTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_power_supply*, i32, i32)* @gb_power_supply_property_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_power_supply_property_set(%struct.gb_power_supply* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gb_power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.gb_connection*, align 8
  %9 = alloca %struct.gb_power_supply_prop*, align 8
  %10 = alloca %struct.gb_power_supply_set_property_request, align 4
  %11 = alloca i32, align 4
  store %struct.gb_power_supply* %0, %struct.gb_power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.gb_power_supply*, %struct.gb_power_supply** %5, align 8
  %13 = call %struct.gb_connection* @get_conn_from_psy(%struct.gb_power_supply* %12)
  store %struct.gb_connection* %13, %struct.gb_connection** %8, align 8
  %14 = load %struct.gb_connection*, %struct.gb_connection** %8, align 8
  %15 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @gb_pm_runtime_get_sync(i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %11, align 4
  store i32 %21, i32* %4, align 4
  br label %59

22:                                               ; preds = %3
  %23 = load %struct.gb_power_supply*, %struct.gb_power_supply** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call %struct.gb_power_supply_prop* @get_psy_prop(%struct.gb_power_supply* %23, i32 %24)
  store %struct.gb_power_supply_prop* %25, %struct.gb_power_supply_prop** %9, align 8
  %26 = load %struct.gb_power_supply_prop*, %struct.gb_power_supply_prop** %9, align 8
  %27 = icmp ne %struct.gb_power_supply_prop* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %11, align 4
  br label %53

31:                                               ; preds = %22
  %32 = load %struct.gb_power_supply*, %struct.gb_power_supply** %5, align 8
  %33 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.gb_power_supply_set_property_request, %struct.gb_power_supply_set_property_request* %10, i32 0, i32 2
  store i32 %34, i32* %35, align 4
  %36 = load %struct.gb_power_supply_prop*, %struct.gb_power_supply_prop** %9, align 8
  %37 = getelementptr inbounds %struct.gb_power_supply_prop, %struct.gb_power_supply_prop* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.gb_power_supply_set_property_request, %struct.gb_power_supply_set_property_request* %10, i32 0, i32 1
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @cpu_to_le32(i32 %40)
  %42 = getelementptr inbounds %struct.gb_power_supply_set_property_request, %struct.gb_power_supply_set_property_request* %10, i32 0, i32 0
  store i32 %41, i32* %42, align 4
  %43 = load %struct.gb_connection*, %struct.gb_connection** %8, align 8
  %44 = load i32, i32* @GB_POWER_SUPPLY_TYPE_SET_PROPERTY, align 4
  %45 = call i32 @gb_operation_sync(%struct.gb_connection* %43, i32 %44, %struct.gb_power_supply_set_property_request* %10, i32 12, i32* null, i32 0)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %31
  br label %53

49:                                               ; preds = %31
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.gb_power_supply_prop*, %struct.gb_power_supply_prop** %9, align 8
  %52 = getelementptr inbounds %struct.gb_power_supply_prop, %struct.gb_power_supply_prop* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %49, %48, %28
  %54 = load %struct.gb_connection*, %struct.gb_connection** %8, align 8
  %55 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @gb_pm_runtime_put_autosuspend(i32 %56)
  %58 = load i32, i32* %11, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %53, %20
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.gb_connection* @get_conn_from_psy(%struct.gb_power_supply*) #1

declare dso_local i32 @gb_pm_runtime_get_sync(i32) #1

declare dso_local %struct.gb_power_supply_prop* @get_psy_prop(%struct.gb_power_supply*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @gb_operation_sync(%struct.gb_connection*, i32, %struct.gb_power_supply_set_property_request*, i32, i32*, i32) #1

declare dso_local i32 @gb_pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
