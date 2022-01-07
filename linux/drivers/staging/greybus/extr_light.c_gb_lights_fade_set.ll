; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_light.c_gb_lights_fade_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_light.c_gb_lights_fade_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_channel = type { i32, i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.gb_connection = type { %struct.gb_bundle* }
%struct.gb_bundle = type { i32 }
%struct.gb_lights_set_fade_request = type { i32, i32, i32, i32 }

@ESHUTDOWN = common dso_local global i32 0, align 4
@GB_LIGHTS_TYPE_SET_FADE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_channel*)* @gb_lights_fade_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_lights_fade_set(%struct.gb_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gb_channel*, align 8
  %4 = alloca %struct.gb_connection*, align 8
  %5 = alloca %struct.gb_bundle*, align 8
  %6 = alloca %struct.gb_lights_set_fade_request, align 4
  %7 = alloca i32, align 4
  store %struct.gb_channel* %0, %struct.gb_channel** %3, align 8
  %8 = load %struct.gb_channel*, %struct.gb_channel** %3, align 8
  %9 = call %struct.gb_connection* @get_conn_from_channel(%struct.gb_channel* %8)
  store %struct.gb_connection* %9, %struct.gb_connection** %4, align 8
  %10 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %11 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %10, i32 0, i32 0
  %12 = load %struct.gb_bundle*, %struct.gb_bundle** %11, align 8
  store %struct.gb_bundle* %12, %struct.gb_bundle** %5, align 8
  %13 = load %struct.gb_channel*, %struct.gb_channel** %3, align 8
  %14 = getelementptr inbounds %struct.gb_channel, %struct.gb_channel* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @ESHUTDOWN, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %52

20:                                               ; preds = %1
  %21 = load %struct.gb_bundle*, %struct.gb_bundle** %5, align 8
  %22 = call i32 @gb_pm_runtime_get_sync(%struct.gb_bundle* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %2, align 4
  br label %52

27:                                               ; preds = %20
  %28 = load %struct.gb_channel*, %struct.gb_channel** %3, align 8
  %29 = getelementptr inbounds %struct.gb_channel, %struct.gb_channel* %28, i32 0, i32 3
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.gb_lights_set_fade_request, %struct.gb_lights_set_fade_request* %6, i32 0, i32 3
  store i32 %32, i32* %33, align 4
  %34 = load %struct.gb_channel*, %struct.gb_channel** %3, align 8
  %35 = getelementptr inbounds %struct.gb_channel, %struct.gb_channel* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = getelementptr inbounds %struct.gb_lights_set_fade_request, %struct.gb_lights_set_fade_request* %6, i32 0, i32 2
  store i32 %36, i32* %37, align 4
  %38 = load %struct.gb_channel*, %struct.gb_channel** %3, align 8
  %39 = getelementptr inbounds %struct.gb_channel, %struct.gb_channel* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.gb_lights_set_fade_request, %struct.gb_lights_set_fade_request* %6, i32 0, i32 1
  store i32 %40, i32* %41, align 4
  %42 = load %struct.gb_channel*, %struct.gb_channel** %3, align 8
  %43 = getelementptr inbounds %struct.gb_channel, %struct.gb_channel* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds %struct.gb_lights_set_fade_request, %struct.gb_lights_set_fade_request* %6, i32 0, i32 0
  store i32 %44, i32* %45, align 4
  %46 = load %struct.gb_connection*, %struct.gb_connection** %4, align 8
  %47 = load i32, i32* @GB_LIGHTS_TYPE_SET_FADE, align 4
  %48 = call i32 @gb_operation_sync(%struct.gb_connection* %46, i32 %47, %struct.gb_lights_set_fade_request* %6, i32 16, i32* null, i32 0)
  store i32 %48, i32* %7, align 4
  %49 = load %struct.gb_bundle*, %struct.gb_bundle** %5, align 8
  %50 = call i32 @gb_pm_runtime_put_autosuspend(%struct.gb_bundle* %49)
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %27, %25, %17
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.gb_connection* @get_conn_from_channel(%struct.gb_channel*) #1

declare dso_local i32 @gb_pm_runtime_get_sync(%struct.gb_bundle*) #1

declare dso_local i32 @gb_operation_sync(%struct.gb_connection*, i32, %struct.gb_lights_set_fade_request*, i32, i32*, i32) #1

declare dso_local i32 @gb_pm_runtime_put_autosuspend(%struct.gb_bundle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
