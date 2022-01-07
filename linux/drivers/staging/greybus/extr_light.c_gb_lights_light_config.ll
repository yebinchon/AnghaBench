; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_light.c_gb_lights_light_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_light.c_gb_lights_light_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_lights = type { i32, %struct.gb_light* }
%struct.gb_light = type { i64, i32, %struct.TYPE_3__*, i32, %struct.gb_lights* }
%struct.TYPE_3__ = type { i32 }
%struct.gb_lights_get_light_config_request = type { i64 }
%struct.gb_lights_get_light_config_response = type { i32, i32 }

@GB_LIGHTS_TYPE_GET_LIGHT_CONFIG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NAMES_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_lights*, i64)* @gb_lights_light_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_lights_light_config(%struct.gb_lights* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gb_lights*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.gb_light*, align 8
  %7 = alloca %struct.gb_lights_get_light_config_request, align 8
  %8 = alloca %struct.gb_lights_get_light_config_response, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gb_lights* %0, %struct.gb_lights** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.gb_lights*, %struct.gb_lights** %4, align 8
  %12 = getelementptr inbounds %struct.gb_lights, %struct.gb_lights* %11, i32 0, i32 1
  %13 = load %struct.gb_light*, %struct.gb_light** %12, align 8
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr inbounds %struct.gb_light, %struct.gb_light* %13, i64 %14
  store %struct.gb_light* %15, %struct.gb_light** %6, align 8
  %16 = load %struct.gb_lights*, %struct.gb_lights** %4, align 8
  %17 = load %struct.gb_light*, %struct.gb_light** %6, align 8
  %18 = getelementptr inbounds %struct.gb_light, %struct.gb_light* %17, i32 0, i32 4
  store %struct.gb_lights* %16, %struct.gb_lights** %18, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.gb_light*, %struct.gb_light** %6, align 8
  %21 = getelementptr inbounds %struct.gb_light, %struct.gb_light* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds %struct.gb_lights_get_light_config_request, %struct.gb_lights_get_light_config_request* %7, i32 0, i32 0
  store i64 %22, i64* %23, align 8
  %24 = load %struct.gb_lights*, %struct.gb_lights** %4, align 8
  %25 = getelementptr inbounds %struct.gb_lights, %struct.gb_lights* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @GB_LIGHTS_TYPE_GET_LIGHT_CONFIG, align 4
  %28 = call i32 @gb_operation_sync(i32 %26, i32 %27, %struct.gb_lights_get_light_config_request* %7, i32 8, %struct.gb_lights_get_light_config_response* %8, i32 8)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %3, align 4
  br label %107

33:                                               ; preds = %2
  %34 = getelementptr inbounds %struct.gb_lights_get_light_config_response, %struct.gb_lights_get_light_config_response* %8, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %107

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.gb_lights_get_light_config_response, %struct.gb_lights_get_light_config_response* %8, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @strlen(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %107

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.gb_lights_get_light_config_response, %struct.gb_lights_get_light_config_response* %8, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.gb_light*, %struct.gb_light** %6, align 8
  %52 = getelementptr inbounds %struct.gb_light, %struct.gb_light* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = getelementptr inbounds %struct.gb_lights_get_light_config_response, %struct.gb_lights_get_light_config_response* %8, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @NAMES_MAX, align 4
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call i32 @kstrndup(i32 %54, i32 %55, i32 %56)
  %58 = load %struct.gb_light*, %struct.gb_light** %6, align 8
  %59 = getelementptr inbounds %struct.gb_light, %struct.gb_light* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 8
  %60 = load %struct.gb_light*, %struct.gb_light** %6, align 8
  %61 = getelementptr inbounds %struct.gb_light, %struct.gb_light* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call %struct.TYPE_3__* @kcalloc(i32 %62, i32 4, i32 %63)
  %65 = load %struct.gb_light*, %struct.gb_light** %6, align 8
  %66 = getelementptr inbounds %struct.gb_light, %struct.gb_light* %65, i32 0, i32 2
  store %struct.TYPE_3__* %64, %struct.TYPE_3__** %66, align 8
  %67 = load %struct.gb_light*, %struct.gb_light** %6, align 8
  %68 = getelementptr inbounds %struct.gb_light, %struct.gb_light* %67, i32 0, i32 2
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = icmp ne %struct.TYPE_3__* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %48
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %107

74:                                               ; preds = %48
  store i32 0, i32* %10, align 4
  br label %75

75:                                               ; preds = %103, %74
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.gb_light*, %struct.gb_light** %6, align 8
  %78 = getelementptr inbounds %struct.gb_light, %struct.gb_light* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %106

81:                                               ; preds = %75
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.gb_light*, %struct.gb_light** %6, align 8
  %84 = getelementptr inbounds %struct.gb_light, %struct.gb_light* %83, i32 0, i32 2
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  store i32 %82, i32* %89, align 4
  %90 = load %struct.gb_light*, %struct.gb_light** %6, align 8
  %91 = load %struct.gb_light*, %struct.gb_light** %6, align 8
  %92 = getelementptr inbounds %struct.gb_light, %struct.gb_light* %91, i32 0, i32 2
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i64 %95
  %97 = call i32 @gb_lights_channel_config(%struct.gb_light* %90, %struct.TYPE_3__* %96)
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %81
  %101 = load i32, i32* %9, align 4
  store i32 %101, i32* %3, align 4
  br label %107

102:                                              ; preds = %81
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %10, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %10, align 4
  br label %75

106:                                              ; preds = %75
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %106, %100, %71, %45, %37, %31
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @gb_operation_sync(i32, i32, %struct.gb_lights_get_light_config_request*, i32, %struct.gb_lights_get_light_config_response*, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @kstrndup(i32, i32, i32) #1

declare dso_local %struct.TYPE_3__* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @gb_lights_channel_config(%struct.gb_light*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
