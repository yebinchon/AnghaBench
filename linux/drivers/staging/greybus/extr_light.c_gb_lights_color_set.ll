; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_light.c_gb_lights_color_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_light.c_gb_lights_color_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_channel = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.gb_connection = type { %struct.gb_bundle* }
%struct.gb_bundle = type { i32 }
%struct.gb_lights_set_color_request = type { i32, i32, i32 }

@ESHUTDOWN = common dso_local global i32 0, align 4
@GB_LIGHTS_TYPE_SET_COLOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_channel*, i32)* @gb_lights_color_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_lights_color_set(%struct.gb_channel* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gb_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gb_connection*, align 8
  %7 = alloca %struct.gb_bundle*, align 8
  %8 = alloca %struct.gb_lights_set_color_request, align 4
  %9 = alloca i32, align 4
  store %struct.gb_channel* %0, %struct.gb_channel** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.gb_channel*, %struct.gb_channel** %4, align 8
  %11 = call %struct.gb_connection* @get_conn_from_channel(%struct.gb_channel* %10)
  store %struct.gb_connection* %11, %struct.gb_connection** %6, align 8
  %12 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %13 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %12, i32 0, i32 0
  %14 = load %struct.gb_bundle*, %struct.gb_bundle** %13, align 8
  store %struct.gb_bundle* %14, %struct.gb_bundle** %7, align 8
  %15 = load %struct.gb_channel*, %struct.gb_channel** %4, align 8
  %16 = getelementptr inbounds %struct.gb_channel, %struct.gb_channel* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @ESHUTDOWN, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %49

22:                                               ; preds = %2
  %23 = load %struct.gb_bundle*, %struct.gb_bundle** %7, align 8
  %24 = call i32 @gb_pm_runtime_get_sync(%struct.gb_bundle* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %3, align 4
  br label %49

29:                                               ; preds = %22
  %30 = load %struct.gb_channel*, %struct.gb_channel** %4, align 8
  %31 = getelementptr inbounds %struct.gb_channel, %struct.gb_channel* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.gb_lights_set_color_request, %struct.gb_lights_set_color_request* %8, i32 0, i32 2
  store i32 %34, i32* %35, align 4
  %36 = load %struct.gb_channel*, %struct.gb_channel** %4, align 8
  %37 = getelementptr inbounds %struct.gb_channel, %struct.gb_channel* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds %struct.gb_lights_set_color_request, %struct.gb_lights_set_color_request* %8, i32 0, i32 1
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @cpu_to_le32(i32 %40)
  %42 = getelementptr inbounds %struct.gb_lights_set_color_request, %struct.gb_lights_set_color_request* %8, i32 0, i32 0
  store i32 %41, i32* %42, align 4
  %43 = load %struct.gb_connection*, %struct.gb_connection** %6, align 8
  %44 = load i32, i32* @GB_LIGHTS_TYPE_SET_COLOR, align 4
  %45 = call i32 @gb_operation_sync(%struct.gb_connection* %43, i32 %44, %struct.gb_lights_set_color_request* %8, i32 12, i32* null, i32 0)
  store i32 %45, i32* %9, align 4
  %46 = load %struct.gb_bundle*, %struct.gb_bundle** %7, align 8
  %47 = call i32 @gb_pm_runtime_put_autosuspend(%struct.gb_bundle* %46)
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %29, %27, %19
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.gb_connection* @get_conn_from_channel(%struct.gb_channel*) #1

declare dso_local i32 @gb_pm_runtime_get_sync(%struct.gb_bundle*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @gb_operation_sync(%struct.gb_connection*, i32, %struct.gb_lights_set_color_request*, i32, i32*, i32) #1

declare dso_local i32 @gb_pm_runtime_put_autosuspend(%struct.gb_bundle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
