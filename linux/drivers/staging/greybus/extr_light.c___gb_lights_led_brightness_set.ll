; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_light.c___gb_lights_led_brightness_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_light.c___gb_lights_led_brightness_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_channel = type { i32, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.gb_lights_set_brightness_request = type { i64, i32, i32 }
%struct.gb_connection = type { %struct.gb_bundle* }
%struct.gb_bundle = type { i32 }

@GB_LIGHTS_TYPE_SET_BRIGHTNESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_channel*)* @__gb_lights_led_brightness_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__gb_lights_led_brightness_set(%struct.gb_channel* %0) #0 {
  %2 = alloca %struct.gb_channel*, align 8
  %3 = alloca %struct.gb_lights_set_brightness_request, align 8
  %4 = alloca %struct.gb_connection*, align 8
  %5 = alloca %struct.gb_bundle*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gb_channel* %0, %struct.gb_channel** %2, align 8
  %8 = load %struct.gb_channel*, %struct.gb_channel** %2, align 8
  %9 = call %struct.gb_connection* @get_conn_from_channel(%struct.gb_channel* %8)
  store %struct.gb_connection* %9, %struct.gb_connection** %4, align 8
  %10 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %11 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %10, i32 0, i32 0
  %12 = load %struct.gb_bundle*, %struct.gb_bundle** %11, align 8
  store %struct.gb_bundle* %12, %struct.gb_bundle** %5, align 8
  %13 = load %struct.gb_channel*, %struct.gb_channel** %2, align 8
  %14 = getelementptr inbounds %struct.gb_channel, %struct.gb_channel* %13, i32 0, i32 1
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.gb_bundle*, %struct.gb_bundle** %5, align 8
  %17 = call i32 @gb_pm_runtime_get_sync(%struct.gb_bundle* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %84

21:                                               ; preds = %1
  %22 = load %struct.gb_channel*, %struct.gb_channel** %2, align 8
  %23 = getelementptr inbounds %struct.gb_channel, %struct.gb_channel* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %6, align 4
  %25 = load %struct.gb_channel*, %struct.gb_channel** %2, align 8
  %26 = getelementptr inbounds %struct.gb_channel, %struct.gb_channel* %25, i32 0, i32 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.gb_lights_set_brightness_request, %struct.gb_lights_set_brightness_request* %3, i32 0, i32 2
  store i32 %29, i32* %30, align 4
  %31 = load %struct.gb_channel*, %struct.gb_channel** %2, align 8
  %32 = getelementptr inbounds %struct.gb_channel, %struct.gb_channel* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = getelementptr inbounds %struct.gb_lights_set_brightness_request, %struct.gb_lights_set_brightness_request* %3, i32 0, i32 1
  store i32 %33, i32* %34, align 8
  %35 = load %struct.gb_channel*, %struct.gb_channel** %2, align 8
  %36 = getelementptr inbounds %struct.gb_channel, %struct.gb_channel* %35, i32 0, i32 2
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.gb_lights_set_brightness_request, %struct.gb_lights_set_brightness_request* %3, i32 0, i32 0
  store i64 %39, i64* %40, align 8
  %41 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %42 = load i32, i32* @GB_LIGHTS_TYPE_SET_BRIGHTNESS, align 4
  %43 = call i32 @gb_operation_sync(%struct.gb_connection* %41, i32 %42, %struct.gb_lights_set_brightness_request* %3, i32 16, i32* null, i32 0)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %21
  br label %81

47:                                               ; preds = %21
  %48 = load %struct.gb_channel*, %struct.gb_channel** %2, align 8
  %49 = getelementptr inbounds %struct.gb_channel, %struct.gb_channel* %48, i32 0, i32 2
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load %struct.gb_channel*, %struct.gb_channel** %2, align 8
  %56 = getelementptr inbounds %struct.gb_channel, %struct.gb_channel* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  br label %60

57:                                               ; preds = %47
  %58 = load %struct.gb_channel*, %struct.gb_channel** %2, align 8
  %59 = getelementptr inbounds %struct.gb_channel, %struct.gb_channel* %58, i32 0, i32 0
  store i32 0, i32* %59, align 8
  br label %60

60:                                               ; preds = %57, %54
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %60
  %64 = load %struct.gb_channel*, %struct.gb_channel** %2, align 8
  %65 = getelementptr inbounds %struct.gb_channel, %struct.gb_channel* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %84

69:                                               ; preds = %63, %60
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %69
  %73 = load %struct.gb_channel*, %struct.gb_channel** %2, align 8
  %74 = getelementptr inbounds %struct.gb_channel, %struct.gb_channel* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %72
  %78 = load %struct.gb_bundle*, %struct.gb_bundle** %5, align 8
  %79 = call i32 @gb_pm_runtime_put_autosuspend(%struct.gb_bundle* %78)
  br label %80

80:                                               ; preds = %77, %72, %69
  br label %81

81:                                               ; preds = %80, %46
  %82 = load %struct.gb_bundle*, %struct.gb_bundle** %5, align 8
  %83 = call i32 @gb_pm_runtime_put_autosuspend(%struct.gb_bundle* %82)
  br label %84

84:                                               ; preds = %81, %68, %20
  %85 = load %struct.gb_channel*, %struct.gb_channel** %2, align 8
  %86 = getelementptr inbounds %struct.gb_channel, %struct.gb_channel* %85, i32 0, i32 1
  %87 = call i32 @mutex_unlock(i32* %86)
  %88 = load i32, i32* %7, align 4
  ret i32 %88
}

declare dso_local %struct.gb_connection* @get_conn_from_channel(%struct.gb_channel*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gb_pm_runtime_get_sync(%struct.gb_bundle*) #1

declare dso_local i32 @gb_operation_sync(%struct.gb_connection*, i32, %struct.gb_lights_set_brightness_request*, i32, i32*, i32) #1

declare dso_local i32 @gb_pm_runtime_put_autosuspend(%struct.gb_bundle*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
