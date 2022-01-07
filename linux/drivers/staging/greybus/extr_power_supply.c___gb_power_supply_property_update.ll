; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_power_supply.c___gb_power_supply_property_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_power_supply.c___gb_power_supply_property_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_power_supply = type { i32 }
%struct.gb_connection = type { i32 }
%struct.gb_power_supply_prop = type { i32, i32, i32 }
%struct.gb_power_supply_get_property_request = type { i32, i32 }
%struct.gb_power_supply_get_property_response = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GB_POWER_SUPPLY_TYPE_GET_PROPERTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_power_supply*, i32)* @__gb_power_supply_property_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__gb_power_supply_property_update(%struct.gb_power_supply* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gb_power_supply*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gb_connection*, align 8
  %7 = alloca %struct.gb_power_supply_prop*, align 8
  %8 = alloca %struct.gb_power_supply_get_property_request, align 4
  %9 = alloca %struct.gb_power_supply_get_property_response, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gb_power_supply* %0, %struct.gb_power_supply** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.gb_power_supply*, %struct.gb_power_supply** %4, align 8
  %13 = call %struct.gb_connection* @get_conn_from_psy(%struct.gb_power_supply* %12)
  store %struct.gb_connection* %13, %struct.gb_connection** %6, align 8
  %14 = load %struct.gb_power_supply*, %struct.gb_power_supply** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.gb_power_supply_prop* @get_psy_prop(%struct.gb_power_supply* %14, i32 %15)
  store %struct.gb_power_supply_prop* %16, %struct.gb_power_supply_prop** %7, align 8
  %17 = load %struct.gb_power_supply_prop*, %struct.gb_power_supply_prop** %7, align 8
  %18 = icmp ne %struct.gb_power_supply_prop* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %60

22:                                               ; preds = %2
  %23 = load %struct.gb_power_supply*, %struct.gb_power_supply** %4, align 8
  %24 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.gb_power_supply_get_property_request, %struct.gb_power_supply_get_property_request* %8, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load %struct.gb_power_supply_prop*, %struct.gb_power_supply_prop** %7, align 8
  %28 = getelementptr inbounds %struct.gb_power_supply_prop, %struct.gb_power_supply_prop* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.gb_power_supply_get_property_request, %struct.gb_power_supply_get_property_request* %8, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %32 = load i32, i32* @GB_POWER_SUPPLY_TYPE_GET_PROPERTY, align 4
  %33 = call i32 @gb_operation_sync(%struct.gb_connection* %31, i32 %32, %struct.gb_power_supply_get_property_request* %8, i32 8, %struct.gb_power_supply_get_property_response* %9, i32 4)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %22
  %37 = load i32, i32* %11, align 4
  store i32 %37, i32* %3, align 4
  br label %60

38:                                               ; preds = %22
  %39 = getelementptr inbounds %struct.gb_power_supply_get_property_response, %struct.gb_power_supply_get_property_response* %9, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @le32_to_cpu(i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.gb_power_supply_prop*, %struct.gb_power_supply_prop** %7, align 8
  %44 = getelementptr inbounds %struct.gb_power_supply_prop, %struct.gb_power_supply_prop* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %60

48:                                               ; preds = %38
  %49 = load %struct.gb_power_supply_prop*, %struct.gb_power_supply_prop** %7, align 8
  %50 = getelementptr inbounds %struct.gb_power_supply_prop, %struct.gb_power_supply_prop* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.gb_power_supply_prop*, %struct.gb_power_supply_prop** %7, align 8
  %53 = getelementptr inbounds %struct.gb_power_supply_prop, %struct.gb_power_supply_prop* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.gb_power_supply_prop*, %struct.gb_power_supply_prop** %7, align 8
  %56 = getelementptr inbounds %struct.gb_power_supply_prop, %struct.gb_power_supply_prop* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.gb_power_supply*, %struct.gb_power_supply** %4, align 8
  %58 = load %struct.gb_power_supply_prop*, %struct.gb_power_supply_prop** %7, align 8
  %59 = call i32 @check_changed(%struct.gb_power_supply* %57, %struct.gb_power_supply_prop* %58)
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %48, %47, %36, %19
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.gb_connection* @get_conn_from_psy(%struct.gb_power_supply*) #1

declare dso_local %struct.gb_power_supply_prop* @get_psy_prop(%struct.gb_power_supply*, i32) #1

declare dso_local i32 @gb_operation_sync(%struct.gb_connection*, i32, %struct.gb_power_supply_get_property_request*, i32, %struct.gb_power_supply_get_property_response*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @check_changed(%struct.gb_power_supply*, %struct.gb_power_supply_prop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
