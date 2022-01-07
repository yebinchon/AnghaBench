; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/wilco_ec/extr_event.c_event_device_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/wilco_ec/extr_event.c_event_device_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32, i32 }
%struct.acpi_buffer = type { i64, i32*, i32 }
%union.acpi_object = type { i64 }
%struct.TYPE_2__ = type { i32, i32 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@EC_ACPI_NOTIFY_EVENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Invalid event: 0x%08x\0A\00", align 1
@EC_ACPI_GET_EVENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Error executing ACPI method %s()\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Nothing returned from %s()\0A\00", align 1
@ACPI_TYPE_BUFFER = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"Invalid object returned from %s()\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Invalid buffer length %d from %s()\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_device*, i64)* @event_device_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @event_device_notify(%struct.acpi_device* %0, i64 %1) #0 {
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.acpi_buffer, align 8
  %6 = alloca %union.acpi_object*, align 8
  %7 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 0
  %9 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %8, align 8
  %11 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 1
  store i32* null, i32** %11, align 8
  %12 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 2
  store i32 0, i32* %12, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @EC_ACPI_NOTIFY_EVENT, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %18 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %17, i32 0, i32 0
  %19 = load i64, i64* %4, align 8
  %20 = trunc i64 %19 to i32
  %21 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %91

22:                                               ; preds = %2
  %23 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %24 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @EC_ACPI_GET_EVENT, align 4
  %27 = call i32 @acpi_evaluate_object(i32 %25, i32 %26, i32* null, %struct.acpi_buffer* %5)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i64 @ACPI_FAILURE(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %22
  %32 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %33 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %32, i32 0, i32 0
  %34 = load i32, i32* @EC_ACPI_GET_EVENT, align 4
  %35 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %91

36:                                               ; preds = %22
  %37 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %union.acpi_object*
  store %union.acpi_object* %39, %union.acpi_object** %6, align 8
  %40 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %41 = icmp ne %union.acpi_object* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %36
  %43 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %44 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %43, i32 0, i32 0
  %45 = load i32, i32* @EC_ACPI_GET_EVENT, align 4
  %46 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %44, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  br label %91

47:                                               ; preds = %36
  %48 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %49 = bitcast %union.acpi_object* %48 to i64*
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %55 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %54, i32 0, i32 0
  %56 = load i32, i32* @EC_ACPI_GET_EVENT, align 4
  %57 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %55, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  %58 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %59 = call i32 @kfree(%union.acpi_object* %58)
  br label %91

60:                                               ; preds = %47
  %61 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %62 = bitcast %union.acpi_object* %61 to %struct.TYPE_2__*
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = icmp ult i64 %65, 4
  br i1 %66, label %67, label %78

67:                                               ; preds = %60
  %68 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %69 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %68, i32 0, i32 0
  %70 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %71 = bitcast %union.acpi_object* %70 to %struct.TYPE_2__*
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @EC_ACPI_GET_EVENT, align 4
  %75 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %69, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %73, i32 %74)
  %76 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %77 = call i32 @kfree(%union.acpi_object* %76)
  br label %91

78:                                               ; preds = %60
  %79 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %80 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %81 = bitcast %union.acpi_object* %80 to %struct.TYPE_2__*
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %85 = bitcast %union.acpi_object* %84 to %struct.TYPE_2__*
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @enqueue_events(%struct.acpi_device* %79, i32 %83, i32 %87)
  %89 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %90 = call i32 @kfree(%union.acpi_object* %89)
  br label %91

91:                                               ; preds = %78, %67, %53, %42, %31, %16
  ret void
}

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @acpi_evaluate_object(i32, i32, i32*, %struct.acpi_buffer*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @kfree(%union.acpi_object*) #1

declare dso_local i32 @enqueue_events(%struct.acpi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
