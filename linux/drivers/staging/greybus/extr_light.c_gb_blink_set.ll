; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_light.c_gb_blink_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_light.c_gb_blink_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { i32 }
%struct.gb_channel = type { i32, i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.gb_connection = type { %struct.gb_bundle* }
%struct.gb_bundle = type { i32 }
%struct.gb_lights_blink_request = type { i8*, i8*, i32, i32 }

@ESHUTDOWN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GB_LIGHTS_TYPE_SET_BLINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.led_classdev*, i64*, i64*)* @gb_blink_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_blink_set(%struct.led_classdev* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.led_classdev*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.gb_channel*, align 8
  %9 = alloca %struct.gb_connection*, align 8
  %10 = alloca %struct.gb_bundle*, align 8
  %11 = alloca %struct.gb_lights_blink_request, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.led_classdev* %0, %struct.led_classdev** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  %14 = load %struct.led_classdev*, %struct.led_classdev** %5, align 8
  %15 = call %struct.gb_channel* @get_channel_from_cdev(%struct.led_classdev* %14)
  store %struct.gb_channel* %15, %struct.gb_channel** %8, align 8
  %16 = load %struct.gb_channel*, %struct.gb_channel** %8, align 8
  %17 = call %struct.gb_connection* @get_conn_from_channel(%struct.gb_channel* %16)
  store %struct.gb_connection* %17, %struct.gb_connection** %9, align 8
  %18 = load %struct.gb_connection*, %struct.gb_connection** %9, align 8
  %19 = getelementptr inbounds %struct.gb_connection, %struct.gb_connection* %18, i32 0, i32 0
  %20 = load %struct.gb_bundle*, %struct.gb_bundle** %19, align 8
  store %struct.gb_bundle* %20, %struct.gb_bundle** %10, align 8
  %21 = load %struct.gb_channel*, %struct.gb_channel** %8, align 8
  %22 = getelementptr inbounds %struct.gb_channel, %struct.gb_channel* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @ESHUTDOWN, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %113

28:                                               ; preds = %3
  %29 = load i64*, i64** %6, align 8
  %30 = icmp ne i64* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i64*, i64** %7, align 8
  %33 = icmp ne i64* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %31, %28
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %113

37:                                               ; preds = %31
  %38 = load %struct.gb_channel*, %struct.gb_channel** %8, align 8
  %39 = getelementptr inbounds %struct.gb_channel, %struct.gb_channel* %38, i32 0, i32 1
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = load %struct.gb_bundle*, %struct.gb_bundle** %10, align 8
  %42 = call i32 @gb_pm_runtime_get_sync(%struct.gb_bundle* %41)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %108

46:                                               ; preds = %37
  %47 = load %struct.gb_channel*, %struct.gb_channel** %8, align 8
  %48 = getelementptr inbounds %struct.gb_channel, %struct.gb_channel* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %12, align 4
  %50 = load %struct.gb_channel*, %struct.gb_channel** %8, align 8
  %51 = getelementptr inbounds %struct.gb_channel, %struct.gb_channel* %50, i32 0, i32 3
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.gb_lights_blink_request, %struct.gb_lights_blink_request* %11, i32 0, i32 3
  store i32 %54, i32* %55, align 4
  %56 = load %struct.gb_channel*, %struct.gb_channel** %8, align 8
  %57 = getelementptr inbounds %struct.gb_channel, %struct.gb_channel* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = getelementptr inbounds %struct.gb_lights_blink_request, %struct.gb_lights_blink_request* %11, i32 0, i32 2
  store i32 %58, i32* %59, align 8
  %60 = load i64*, i64** %6, align 8
  %61 = load i64, i64* %60, align 8
  %62 = call i8* @cpu_to_le16(i64 %61)
  %63 = getelementptr inbounds %struct.gb_lights_blink_request, %struct.gb_lights_blink_request* %11, i32 0, i32 1
  store i8* %62, i8** %63, align 8
  %64 = load i64*, i64** %7, align 8
  %65 = load i64, i64* %64, align 8
  %66 = call i8* @cpu_to_le16(i64 %65)
  %67 = getelementptr inbounds %struct.gb_lights_blink_request, %struct.gb_lights_blink_request* %11, i32 0, i32 0
  store i8* %66, i8** %67, align 8
  %68 = load %struct.gb_connection*, %struct.gb_connection** %9, align 8
  %69 = load i32, i32* @GB_LIGHTS_TYPE_SET_BLINK, align 4
  %70 = call i32 @gb_operation_sync(%struct.gb_connection* %68, i32 %69, %struct.gb_lights_blink_request* %11, i32 24, i32* null, i32 0)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %46
  br label %105

74:                                               ; preds = %46
  %75 = load i64*, i64** %6, align 8
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load %struct.gb_channel*, %struct.gb_channel** %8, align 8
  %80 = getelementptr inbounds %struct.gb_channel, %struct.gb_channel* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  br label %84

81:                                               ; preds = %74
  %82 = load %struct.gb_channel*, %struct.gb_channel** %8, align 8
  %83 = getelementptr inbounds %struct.gb_channel, %struct.gb_channel* %82, i32 0, i32 0
  store i32 0, i32* %83, align 8
  br label %84

84:                                               ; preds = %81, %78
  %85 = load i32, i32* %12, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %84
  %88 = load %struct.gb_channel*, %struct.gb_channel** %8, align 8
  %89 = getelementptr inbounds %struct.gb_channel, %struct.gb_channel* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  br label %108

93:                                               ; preds = %87, %84
  %94 = load i32, i32* %12, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %93
  %97 = load %struct.gb_channel*, %struct.gb_channel** %8, align 8
  %98 = getelementptr inbounds %struct.gb_channel, %struct.gb_channel* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %96
  %102 = load %struct.gb_bundle*, %struct.gb_bundle** %10, align 8
  %103 = call i32 @gb_pm_runtime_put_autosuspend(%struct.gb_bundle* %102)
  br label %104

104:                                              ; preds = %101, %96, %93
  br label %105

105:                                              ; preds = %104, %73
  %106 = load %struct.gb_bundle*, %struct.gb_bundle** %10, align 8
  %107 = call i32 @gb_pm_runtime_put_autosuspend(%struct.gb_bundle* %106)
  br label %108

108:                                              ; preds = %105, %92, %45
  %109 = load %struct.gb_channel*, %struct.gb_channel** %8, align 8
  %110 = getelementptr inbounds %struct.gb_channel, %struct.gb_channel* %109, i32 0, i32 1
  %111 = call i32 @mutex_unlock(i32* %110)
  %112 = load i32, i32* %13, align 4
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %108, %34, %25
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local %struct.gb_channel* @get_channel_from_cdev(%struct.led_classdev*) #1

declare dso_local %struct.gb_connection* @get_conn_from_channel(%struct.gb_channel*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gb_pm_runtime_get_sync(%struct.gb_bundle*) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i32 @gb_operation_sync(%struct.gb_connection*, i32, %struct.gb_lights_blink_request*, i32, i32*, i32) #1

declare dso_local i32 @gb_pm_runtime_put_autosuspend(%struct.gb_bundle*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
