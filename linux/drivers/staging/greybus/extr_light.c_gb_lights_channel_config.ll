; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_light.c_gb_lights_channel_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_light.c_gb_lights_channel_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_light = type { i32, i32, i32 }
%struct.gb_channel = type { i8*, i8*, %struct.led_classdev*, i8*, i8*, i8*, %struct.gb_light*, i32 }
%struct.led_classdev = type { i8*, i32 }
%struct.gb_lights_get_channel_config_response = type { i32, i32, i32, i32, i32, i32 }
%struct.gb_lights_get_channel_config_request = type { i32, i32 }
%struct.gb_connection = type { i32 }

@GB_LIGHTS_TYPE_GET_CHANNEL_CONFIG = common dso_local global i32 0, align 4
@NAMES_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s:%s:%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_light*, %struct.gb_channel*)* @gb_lights_channel_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_lights_channel_config(%struct.gb_light* %0, %struct.gb_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gb_light*, align 8
  %5 = alloca %struct.gb_channel*, align 8
  %6 = alloca %struct.gb_lights_get_channel_config_response, align 4
  %7 = alloca %struct.gb_lights_get_channel_config_request, align 4
  %8 = alloca %struct.gb_connection*, align 8
  %9 = alloca %struct.led_classdev*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.gb_light* %0, %struct.gb_light** %4, align 8
  store %struct.gb_channel* %1, %struct.gb_channel** %5, align 8
  %12 = load %struct.gb_light*, %struct.gb_light** %4, align 8
  %13 = call %struct.gb_connection* @get_conn_from_light(%struct.gb_light* %12)
  store %struct.gb_connection* %13, %struct.gb_connection** %8, align 8
  %14 = load %struct.gb_channel*, %struct.gb_channel** %5, align 8
  %15 = call %struct.led_classdev* @get_channel_cdev(%struct.gb_channel* %14)
  store %struct.led_classdev* %15, %struct.led_classdev** %9, align 8
  %16 = load %struct.gb_light*, %struct.gb_light** %4, align 8
  %17 = getelementptr inbounds %struct.gb_light, %struct.gb_light* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.gb_lights_get_channel_config_request, %struct.gb_lights_get_channel_config_request* %7, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = load %struct.gb_channel*, %struct.gb_channel** %5, align 8
  %21 = getelementptr inbounds %struct.gb_channel, %struct.gb_channel* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds %struct.gb_lights_get_channel_config_request, %struct.gb_lights_get_channel_config_request* %7, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = load %struct.gb_connection*, %struct.gb_connection** %8, align 8
  %25 = load i32, i32* @GB_LIGHTS_TYPE_GET_CHANNEL_CONFIG, align 4
  %26 = call i32 @gb_operation_sync(%struct.gb_connection* %24, i32 %25, %struct.gb_lights_get_channel_config_request* %7, i32 8, %struct.gb_lights_get_channel_config_response* %6, i32 24)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* %11, align 4
  store i32 %30, i32* %3, align 4
  br label %128

31:                                               ; preds = %2
  %32 = load %struct.gb_light*, %struct.gb_light** %4, align 8
  %33 = load %struct.gb_channel*, %struct.gb_channel** %5, align 8
  %34 = getelementptr inbounds %struct.gb_channel, %struct.gb_channel* %33, i32 0, i32 6
  store %struct.gb_light* %32, %struct.gb_light** %34, align 8
  %35 = getelementptr inbounds %struct.gb_lights_get_channel_config_response, %struct.gb_lights_get_channel_config_response* %6, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @le32_to_cpu(i32 %36)
  %38 = load %struct.gb_channel*, %struct.gb_channel** %5, align 8
  %39 = getelementptr inbounds %struct.gb_channel, %struct.gb_channel* %38, i32 0, i32 5
  store i8* %37, i8** %39, align 8
  %40 = getelementptr inbounds %struct.gb_lights_get_channel_config_response, %struct.gb_lights_get_channel_config_response* %6, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @le32_to_cpu(i32 %41)
  %43 = load %struct.gb_channel*, %struct.gb_channel** %5, align 8
  %44 = getelementptr inbounds %struct.gb_channel, %struct.gb_channel* %43, i32 0, i32 4
  store i8* %42, i8** %44, align 8
  %45 = getelementptr inbounds %struct.gb_lights_get_channel_config_response, %struct.gb_lights_get_channel_config_response* %6, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @le32_to_cpu(i32 %46)
  %48 = load %struct.gb_channel*, %struct.gb_channel** %5, align 8
  %49 = getelementptr inbounds %struct.gb_channel, %struct.gb_channel* %48, i32 0, i32 3
  store i8* %47, i8** %49, align 8
  %50 = getelementptr inbounds %struct.gb_lights_get_channel_config_response, %struct.gb_lights_get_channel_config_response* %6, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @NAMES_MAX, align 4
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call i8* @kstrndup(i32 %51, i32 %52, i32 %53)
  %55 = load %struct.gb_channel*, %struct.gb_channel** %5, align 8
  %56 = getelementptr inbounds %struct.gb_channel, %struct.gb_channel* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  %57 = load %struct.gb_channel*, %struct.gb_channel** %5, align 8
  %58 = getelementptr inbounds %struct.gb_channel, %struct.gb_channel* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %31
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %128

64:                                               ; preds = %31
  %65 = getelementptr inbounds %struct.gb_lights_get_channel_config_response, %struct.gb_lights_get_channel_config_response* %6, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @NAMES_MAX, align 4
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = call i8* @kstrndup(i32 %66, i32 %67, i32 %68)
  %70 = load %struct.gb_channel*, %struct.gb_channel** %5, align 8
  %71 = getelementptr inbounds %struct.gb_channel, %struct.gb_channel* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  %72 = load %struct.gb_channel*, %struct.gb_channel** %5, align 8
  %73 = getelementptr inbounds %struct.gb_channel, %struct.gb_channel* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %64
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %128

79:                                               ; preds = %64
  %80 = load %struct.led_classdev*, %struct.led_classdev** %9, align 8
  %81 = load %struct.gb_channel*, %struct.gb_channel** %5, align 8
  %82 = getelementptr inbounds %struct.gb_channel, %struct.gb_channel* %81, i32 0, i32 2
  store %struct.led_classdev* %80, %struct.led_classdev** %82, align 8
  %83 = load i32, i32* @GFP_KERNEL, align 4
  %84 = load %struct.gb_light*, %struct.gb_light** %4, align 8
  %85 = getelementptr inbounds %struct.gb_light, %struct.gb_light* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.gb_channel*, %struct.gb_channel** %5, align 8
  %88 = getelementptr inbounds %struct.gb_channel, %struct.gb_channel* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = load %struct.gb_channel*, %struct.gb_channel** %5, align 8
  %91 = getelementptr inbounds %struct.gb_channel, %struct.gb_channel* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = call i8* @kasprintf(i32 %83, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %86, i8* %89, i8* %92)
  store i8* %93, i8** %10, align 8
  %94 = load i8*, i8** %10, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %79
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %3, align 4
  br label %128

99:                                               ; preds = %79
  %100 = load i8*, i8** %10, align 8
  %101 = load %struct.led_classdev*, %struct.led_classdev** %9, align 8
  %102 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %101, i32 0, i32 0
  store i8* %100, i8** %102, align 8
  %103 = getelementptr inbounds %struct.gb_lights_get_channel_config_response, %struct.gb_lights_get_channel_config_response* %6, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.led_classdev*, %struct.led_classdev** %9, align 8
  %106 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 8
  %107 = load %struct.gb_channel*, %struct.gb_channel** %5, align 8
  %108 = load %struct.led_classdev*, %struct.led_classdev** %9, align 8
  %109 = call i32 @channel_attr_groups_set(%struct.gb_channel* %107, %struct.led_classdev* %108)
  store i32 %109, i32* %11, align 4
  %110 = load i32, i32* %11, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %99
  %113 = load i32, i32* %11, align 4
  store i32 %113, i32* %3, align 4
  br label %128

114:                                              ; preds = %99
  %115 = load %struct.gb_channel*, %struct.gb_channel** %5, align 8
  %116 = load %struct.led_classdev*, %struct.led_classdev** %9, align 8
  %117 = call i32 @gb_lights_led_operations_set(%struct.gb_channel* %115, %struct.led_classdev* %116)
  %118 = load %struct.gb_channel*, %struct.gb_channel** %5, align 8
  %119 = call i32 @is_channel_flash(%struct.gb_channel* %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %114
  %122 = load i32, i32* %11, align 4
  store i32 %122, i32* %3, align 4
  br label %128

123:                                              ; preds = %114
  %124 = load %struct.gb_light*, %struct.gb_light** %4, align 8
  %125 = getelementptr inbounds %struct.gb_light, %struct.gb_light* %124, i32 0, i32 0
  store i32 1, i32* %125, align 4
  %126 = load %struct.gb_channel*, %struct.gb_channel** %5, align 8
  %127 = call i32 @gb_lights_channel_flash_config(%struct.gb_channel* %126)
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %123, %121, %112, %96, %76, %61, %29
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local %struct.gb_connection* @get_conn_from_light(%struct.gb_light*) #1

declare dso_local %struct.led_classdev* @get_channel_cdev(%struct.gb_channel*) #1

declare dso_local i32 @gb_operation_sync(%struct.gb_connection*, i32, %struct.gb_lights_get_channel_config_request*, i32, %struct.gb_lights_get_channel_config_response*, i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i8* @kstrndup(i32, i32, i32) #1

declare dso_local i8* @kasprintf(i32, i8*, i32, i8*, i8*) #1

declare dso_local i32 @channel_attr_groups_set(%struct.gb_channel*, %struct.led_classdev*) #1

declare dso_local i32 @gb_lights_led_operations_set(%struct.gb_channel*, %struct.led_classdev*) #1

declare dso_local i32 @is_channel_flash(%struct.gb_channel*) #1

declare dso_local i32 @gb_lights_channel_flash_config(%struct.gb_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
