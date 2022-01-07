; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_light.c_gb_lights_request_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_light.c_gb_lights_request_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_operation = type { i64, %struct.gb_message*, %struct.gb_connection* }
%struct.gb_message = type { i32, %struct.gb_lights_event_request* }
%struct.gb_lights_event_request = type { i64, i64 }
%struct.gb_connection = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.gb_lights = type { i64, i32, %struct.gb_light* }
%struct.gb_light = type { i32 }

@GB_LIGHTS_TYPE_EVENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Unsupported unsolicited event: %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Wrong event size received (%zu < %zu)\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Event received for unconfigured light id: %d\0A\00", align 1
@GB_LIGHTS_LIGHT_CONFIG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_operation*)* @gb_lights_request_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_lights_request_handler(%struct.gb_operation* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gb_operation*, align 8
  %4 = alloca %struct.gb_connection*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.gb_lights*, align 8
  %7 = alloca %struct.gb_light*, align 8
  %8 = alloca %struct.gb_message*, align 8
  %9 = alloca %struct.gb_lights_event_request*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.gb_operation* %0, %struct.gb_operation** %3, align 8
  %13 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %14 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %13, i32 0, i32 2
  %15 = load %struct.gb_connection*, %struct.gb_connection** %14, align 8
  store %struct.gb_connection* %15, %struct.gb_connection** %4, align 8
  %16 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %17 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.device* %19, %struct.device** %5, align 8
  %20 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %21 = call %struct.gb_lights* @gb_connection_get_data(%struct.gb_connection* %20)
  store %struct.gb_lights* %21, %struct.gb_lights** %6, align 8
  store i32 0, i32* %10, align 4
  %22 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %23 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @GB_LIGHTS_TYPE_EVENT, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %1
  %28 = load %struct.device*, %struct.device** %5, align 8
  %29 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %30 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 (%struct.device*, i8*, i64, ...) @dev_err(%struct.device* %28, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %31)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %119

35:                                               ; preds = %1
  %36 = load %struct.gb_operation*, %struct.gb_operation** %3, align 8
  %37 = getelementptr inbounds %struct.gb_operation, %struct.gb_operation* %36, i32 0, i32 1
  %38 = load %struct.gb_message*, %struct.gb_message** %37, align 8
  store %struct.gb_message* %38, %struct.gb_message** %8, align 8
  %39 = load %struct.gb_message*, %struct.gb_message** %8, align 8
  %40 = getelementptr inbounds %struct.gb_message, %struct.gb_message* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = icmp ult i64 %42, 16
  br i1 %43, label %44, label %53

44:                                               ; preds = %35
  %45 = load %struct.device*, %struct.device** %5, align 8
  %46 = load %struct.gb_message*, %struct.gb_message** %8, align 8
  %47 = getelementptr inbounds %struct.gb_message, %struct.gb_message* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = call i32 (%struct.device*, i8*, i64, ...) @dev_err(%struct.device* %45, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %49, i64 16)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %119

53:                                               ; preds = %35
  %54 = load %struct.gb_message*, %struct.gb_message** %8, align 8
  %55 = getelementptr inbounds %struct.gb_message, %struct.gb_message* %54, i32 0, i32 1
  %56 = load %struct.gb_lights_event_request*, %struct.gb_lights_event_request** %55, align 8
  store %struct.gb_lights_event_request* %56, %struct.gb_lights_event_request** %9, align 8
  %57 = load %struct.gb_lights_event_request*, %struct.gb_lights_event_request** %9, align 8
  %58 = getelementptr inbounds %struct.gb_lights_event_request, %struct.gb_lights_event_request* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %11, align 8
  %60 = load i64, i64* %11, align 8
  %61 = load %struct.gb_lights*, %struct.gb_lights** %6, align 8
  %62 = getelementptr inbounds %struct.gb_lights, %struct.gb_lights* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp uge i64 %60, %63
  br i1 %64, label %74, label %65

65:                                               ; preds = %53
  %66 = load %struct.gb_lights*, %struct.gb_lights** %6, align 8
  %67 = getelementptr inbounds %struct.gb_lights, %struct.gb_lights* %66, i32 0, i32 2
  %68 = load %struct.gb_light*, %struct.gb_light** %67, align 8
  %69 = load i64, i64* %11, align 8
  %70 = getelementptr inbounds %struct.gb_light, %struct.gb_light* %68, i64 %69
  %71 = getelementptr inbounds %struct.gb_light, %struct.gb_light* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %65, %53
  %75 = load %struct.device*, %struct.device** %5, align 8
  %76 = load i64, i64* %11, align 8
  %77 = call i32 (%struct.device*, i8*, i64, ...) @dev_err(%struct.device* %75, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i64 %76)
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %2, align 4
  br label %119

80:                                               ; preds = %65
  %81 = load %struct.gb_lights_event_request*, %struct.gb_lights_event_request** %9, align 8
  %82 = getelementptr inbounds %struct.gb_lights_event_request, %struct.gb_lights_event_request* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %12, align 8
  %84 = load i64, i64* %12, align 8
  %85 = load i64, i64* @GB_LIGHTS_LIGHT_CONFIG, align 8
  %86 = and i64 %84, %85
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %117

88:                                               ; preds = %80
  %89 = load %struct.gb_lights*, %struct.gb_lights** %6, align 8
  %90 = getelementptr inbounds %struct.gb_lights, %struct.gb_lights* %89, i32 0, i32 2
  %91 = load %struct.gb_light*, %struct.gb_light** %90, align 8
  %92 = load i64, i64* %11, align 8
  %93 = getelementptr inbounds %struct.gb_light, %struct.gb_light* %91, i64 %92
  store %struct.gb_light* %93, %struct.gb_light** %7, align 8
  %94 = load %struct.gb_lights*, %struct.gb_lights** %6, align 8
  %95 = getelementptr inbounds %struct.gb_lights, %struct.gb_lights* %94, i32 0, i32 1
  %96 = call i32 @mutex_lock(i32* %95)
  %97 = load %struct.gb_light*, %struct.gb_light** %7, align 8
  %98 = call i32 @gb_lights_light_release(%struct.gb_light* %97)
  %99 = load %struct.gb_lights*, %struct.gb_lights** %6, align 8
  %100 = load i64, i64* %11, align 8
  %101 = call i32 @gb_lights_light_config(%struct.gb_lights* %99, i64 %100)
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %88
  %105 = load %struct.gb_light*, %struct.gb_light** %7, align 8
  %106 = call i32 @gb_lights_light_register(%struct.gb_light* %105)
  store i32 %106, i32* %10, align 4
  br label %107

107:                                              ; preds = %104, %88
  %108 = load i32, i32* %10, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load %struct.gb_light*, %struct.gb_light** %7, align 8
  %112 = call i32 @gb_lights_light_release(%struct.gb_light* %111)
  br label %113

113:                                              ; preds = %110, %107
  %114 = load %struct.gb_lights*, %struct.gb_lights** %6, align 8
  %115 = getelementptr inbounds %struct.gb_lights, %struct.gb_lights* %114, i32 0, i32 1
  %116 = call i32 @mutex_unlock(i32* %115)
  br label %117

117:                                              ; preds = %113, %80
  %118 = load i32, i32* %10, align 4
  store i32 %118, i32* %2, align 4
  br label %119

119:                                              ; preds = %117, %74, %44, %27
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local %struct.gb_lights* @gb_connection_get_data(%struct.gb_connection*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gb_lights_light_release(%struct.gb_light*) #1

declare dso_local i32 @gb_lights_light_config(%struct.gb_lights*, i64) #1

declare dso_local i32 @gb_lights_light_register(%struct.gb_light*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
