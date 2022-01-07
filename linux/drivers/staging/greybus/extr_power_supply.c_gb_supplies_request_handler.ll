; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_power_supply.c_gb_supplies_request_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_power_supply.c_gb_supplies_request_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_operation = type { i64, %struct.gb_message*, %struct.gb_connection* }
%struct.gb_message = type { i32, %struct.gb_power_supply_event_request* }
%struct.gb_power_supply_event_request = type { i64, i64 }
%struct.gb_connection = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.gb_power_supplies = type { i64, i32, %struct.gb_power_supply* }
%struct.gb_power_supply = type { i32, i32, i32 }

@GB_POWER_SUPPLY_TYPE_EVENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Unsupported unsolicited event: %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Wrong event size received (%zu < %zu)\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"Event received for unconfigured power_supply id: %d\0A\00", align 1
@ESHUTDOWN = common dso_local global i32 0, align 4
@GB_POWER_SUPPLY_UPDATE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_operation*)* @gb_supplies_request_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_supplies_request_handler(%struct.gb_operation* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gb_operation*, align 8
  %4 = alloca %struct.gb_connection*, align 8
  %5 = alloca %struct.gb_power_supplies*, align 8
  %6 = alloca %struct.gb_power_supply*, align 8
  %7 = alloca %struct.gb_message*, align 8
  %8 = alloca %struct.gb_power_supply_event_request*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.gb_operation* %0, %struct.gb_operation** %3, align 8
  %12 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %13 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %12, i32 0, i32 2
  %14 = load %struct.gb_connection*, %struct.gb_connection** %13, align 8
  store %struct.gb_connection* %14, %struct.gb_connection** %4, align 8
  %15 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %16 = call %struct.gb_power_supplies* @gb_connection_get_data(%struct.gb_connection* %15)
  store %struct.gb_power_supplies* %16, %struct.gb_power_supplies** %5, align 8
  store i32 0, i32* %11, align 4
  %17 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %18 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @GB_POWER_SUPPLY_TYPE_EVENT, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %1
  %23 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %24 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %28 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 (i32*, i8*, i64, ...) @dev_err(i32* %26, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %119

33:                                               ; preds = %1
  %34 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %35 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %34, i32 0, i32 1
  %36 = load %struct.gb_message*, %struct.gb_message** %35, align 8
  store %struct.gb_message* %36, %struct.gb_message** %7, align 8
  %37 = load %struct.gb_message*, %struct.gb_message** %7, align 8
  %38 = getelementptr inbounds %struct.gb_message, %struct.gb_message* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = icmp ult i64 %40, 16
  br i1 %41, label %42, label %54

42:                                               ; preds = %33
  %43 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %44 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load %struct.gb_message*, %struct.gb_message** %7, align 8
  %48 = getelementptr inbounds %struct.gb_message, %struct.gb_message* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = call i32 (i32*, i8*, i64, ...) @dev_err(i32* %46, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %50, i64 16)
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %119

54:                                               ; preds = %33
  %55 = load %struct.gb_message*, %struct.gb_message** %7, align 8
  %56 = getelementptr inbounds %struct.gb_message, %struct.gb_message* %55, i32 0, i32 1
  %57 = load %struct.gb_power_supply_event_request*, %struct.gb_power_supply_event_request** %56, align 8
  store %struct.gb_power_supply_event_request* %57, %struct.gb_power_supply_event_request** %8, align 8
  %58 = load %struct.gb_power_supply_event_request*, %struct.gb_power_supply_event_request** %8, align 8
  %59 = getelementptr inbounds %struct.gb_power_supply_event_request, %struct.gb_power_supply_event_request* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %9, align 8
  %61 = load %struct.gb_power_supplies*, %struct.gb_power_supplies** %5, align 8
  %62 = getelementptr inbounds %struct.gb_power_supplies, %struct.gb_power_supplies* %61, i32 0, i32 1
  %63 = call i32 @mutex_lock(i32* %62)
  %64 = load i64, i64* %9, align 8
  %65 = load %struct.gb_power_supplies*, %struct.gb_power_supplies** %5, align 8
  %66 = getelementptr inbounds %struct.gb_power_supplies, %struct.gb_power_supplies* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp uge i64 %64, %67
  br i1 %68, label %78, label %69

69:                                               ; preds = %54
  %70 = load %struct.gb_power_supplies*, %struct.gb_power_supplies** %5, align 8
  %71 = getelementptr inbounds %struct.gb_power_supplies, %struct.gb_power_supplies* %70, i32 0, i32 2
  %72 = load %struct.gb_power_supply*, %struct.gb_power_supply** %71, align 8
  %73 = load i64, i64* %9, align 8
  %74 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %72, i64 %73
  %75 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %87, label %78

78:                                               ; preds = %69, %54
  %79 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %80 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i64, i64* %9, align 8
  %84 = call i32 (i32*, i8*, i64, ...) @dev_err(i32* %82, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i64 %83)
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %11, align 4
  br label %114

87:                                               ; preds = %69
  %88 = load %struct.gb_power_supply_event_request*, %struct.gb_power_supply_event_request** %8, align 8
  %89 = getelementptr inbounds %struct.gb_power_supply_event_request, %struct.gb_power_supply_event_request* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %10, align 8
  %91 = load %struct.gb_power_supplies*, %struct.gb_power_supplies** %5, align 8
  %92 = getelementptr inbounds %struct.gb_power_supplies, %struct.gb_power_supplies* %91, i32 0, i32 2
  %93 = load %struct.gb_power_supply*, %struct.gb_power_supply** %92, align 8
  %94 = load i64, i64* %9, align 8
  %95 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %93, i64 %94
  store %struct.gb_power_supply* %95, %struct.gb_power_supply** %6, align 8
  %96 = load %struct.gb_power_supply*, %struct.gb_power_supply** %6, align 8
  %97 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %87
  %101 = load i32, i32* @ESHUTDOWN, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %11, align 4
  br label %114

103:                                              ; preds = %87
  %104 = load i64, i64* %10, align 8
  %105 = load i64, i64* @GB_POWER_SUPPLY_UPDATE, align 8
  %106 = and i64 %104, %105
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %103
  %109 = load %struct.gb_power_supply*, %struct.gb_power_supply** %6, align 8
  %110 = getelementptr inbounds %struct.gb_power_supply, %struct.gb_power_supply* %109, i32 0, i32 0
  store i32 1, i32* %110, align 4
  %111 = load %struct.gb_power_supply*, %struct.gb_power_supply** %6, align 8
  %112 = call i32 @gb_power_supply_status_update(%struct.gb_power_supply* %111)
  br label %113

113:                                              ; preds = %108, %103
  br label %114

114:                                              ; preds = %113, %100, %78
  %115 = load %struct.gb_power_supplies*, %struct.gb_power_supplies** %5, align 8
  %116 = getelementptr inbounds %struct.gb_power_supplies, %struct.gb_power_supplies* %115, i32 0, i32 1
  %117 = call i32 @mutex_unlock(i32* %116)
  %118 = load i32, i32* %11, align 4
  store i32 %118, i32* %2, align 4
  br label %119

119:                                              ; preds = %114, %42, %22
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local %struct.gb_power_supplies* @gb_connection_get_data(%struct.gb_connection*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gb_power_supply_status_update(%struct.gb_power_supply*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
