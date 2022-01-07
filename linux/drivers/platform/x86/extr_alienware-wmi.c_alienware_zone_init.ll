; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_alienware-wmi.c_alienware_zone_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_alienware-wmi.c_alienware_zone_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_15__, i32, i32 }
%struct.TYPE_15__ = type { i8*, i32 }
%struct.TYPE_14__ = type { i64, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { %struct.TYPE_15__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__** }
%struct.platform_device = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }

@interface = common dso_local global i64 0, align 8
@WMAX = common dso_local global i64 0, align 8
@WMAX_RUNNING = common dso_local global i32 0, align 4
@lighting_control_state = common dso_local global i32 0, align 4
@LEGACY = common dso_local global i64 0, align 8
@LEGACY_RUNNING = common dso_local global i32 0, align 4
@global_led = common dso_local global %struct.TYPE_19__ zeroinitializer, align 4
@global_brightness = common dso_local global i32 0, align 4
@quirks = common dso_local global %struct.TYPE_17__* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@zone_dev_attrs = common dso_local global %struct.TYPE_13__* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@zone_attrs = common dso_local global %struct.TYPE_15__** null, align 8
@zone_data = common dso_local global %struct.TYPE_14__* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"zone%02hhX\00", align 1
@zone_show = common dso_local global i32 0, align 4
@zone_set = common dso_local global i32 0, align 4
@dev_attr_lighting_control_state = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@zone_attribute_group = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @alienware_zone_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alienware_zone_init(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [10 x i8], align 1
  %6 = alloca i8*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load i64, i64* @interface, align 8
  %8 = load i64, i64* @WMAX, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @WMAX_RUNNING, align 4
  store i32 %11, i32* @lighting_control_state, align 4
  br label %19

12:                                               ; preds = %1
  %13 = load i64, i64* @interface, align 8
  %14 = load i64, i64* @LEGACY, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i32, i32* @LEGACY_RUNNING, align 4
  store i32 %17, i32* @lighting_control_state, align 4
  br label %18

18:                                               ; preds = %16, %12
  br label %19

19:                                               ; preds = %18, %10
  store i32 15, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @global_led, i32 0, i32 0), align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @global_led, i32 0, i32 0), align 4
  store i32 %20, i32* @global_brightness, align 4
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** @quirks, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i8* @kcalloc(i32 %24, i32 4, i32 %25)
  %27 = bitcast i8* %26 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %27, %struct.TYPE_13__** @zone_dev_attrs, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** @zone_dev_attrs, align 8
  %29 = icmp ne %struct.TYPE_13__* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %19
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %140

33:                                               ; preds = %19
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** @quirks, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 2
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call i8* @kcalloc(i32 %37, i32 8, i32 %38)
  %40 = bitcast i8* %39 to %struct.TYPE_15__**
  store %struct.TYPE_15__** %40, %struct.TYPE_15__*** @zone_attrs, align 8
  %41 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @zone_attrs, align 8
  %42 = icmp ne %struct.TYPE_15__** %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %33
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %140

46:                                               ; preds = %33
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** @quirks, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call i8* @kcalloc(i32 %49, i32 4, i32 %50)
  %52 = bitcast i8* %51 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %52, %struct.TYPE_14__** @zone_data, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** @zone_data, align 8
  %54 = icmp ne %struct.TYPE_14__* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %46
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %140

58:                                               ; preds = %46
  store i64 0, i64* %4, align 8
  br label %59

59:                                               ; preds = %122, %58
  %60 = load i64, i64* %4, align 8
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** @quirks, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = icmp ult i64 %60, %64
  br i1 %65, label %66, label %125

66:                                               ; preds = %59
  %67 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %68 = load i64, i64* %4, align 8
  %69 = call i32 @sprintf(i8* %67, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %68)
  %70 = getelementptr inbounds [10 x i8], [10 x i8]* %5, i64 0, i64 0
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = call i8* @kstrdup(i8* %70, i32 %71)
  store i8* %72, i8** %6, align 8
  %73 = load i8*, i8** %6, align 8
  %74 = icmp eq i8* %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %66
  store i32 1, i32* %2, align 4
  br label %140

76:                                               ; preds = %66
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** @zone_dev_attrs, align 8
  %78 = load i64, i64* %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = call i32 @sysfs_attr_init(%struct.TYPE_15__* %80)
  %82 = load i8*, i8** %6, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** @zone_dev_attrs, align 8
  %84 = load i64, i64* %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  store i8* %82, i8** %87, align 8
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** @zone_dev_attrs, align 8
  %89 = load i64, i64* %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 1
  store i32 420, i32* %92, align 8
  %93 = load i32, i32* @zone_show, align 4
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** @zone_dev_attrs, align 8
  %95 = load i64, i64* %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 2
  store i32 %93, i32* %97, align 4
  %98 = load i32, i32* @zone_set, align 4
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** @zone_dev_attrs, align 8
  %100 = load i64, i64* %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 1
  store i32 %98, i32* %102, align 8
  %103 = load i64, i64* %4, align 8
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** @zone_data, align 8
  %105 = load i64, i64* %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 0
  store i64 %103, i64* %107, align 8
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** @zone_dev_attrs, align 8
  %109 = load i64, i64* %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @zone_attrs, align 8
  %113 = load i64, i64* %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %112, i64 %113
  store %struct.TYPE_15__* %111, %struct.TYPE_15__** %114, align 8
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** @zone_dev_attrs, align 8
  %116 = load i64, i64* %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i64 %116
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** @zone_data, align 8
  %119 = load i64, i64* %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 1
  store %struct.TYPE_13__* %117, %struct.TYPE_13__** %121, align 8
  br label %122

122:                                              ; preds = %76
  %123 = load i64, i64* %4, align 8
  %124 = add i64 %123, 1
  store i64 %124, i64* %4, align 8
  br label %59

125:                                              ; preds = %59
  %126 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @zone_attrs, align 8
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** @quirks, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %126, i64 %130
  store %struct.TYPE_15__* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @dev_attr_lighting_control_state, i32 0, i32 0), %struct.TYPE_15__** %131, align 8
  %132 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @zone_attrs, align 8
  store %struct.TYPE_15__** %132, %struct.TYPE_15__*** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @zone_attribute_group, i32 0, i32 0), align 8
  %133 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %134 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %133, i32 0, i32 0
  %135 = call i32 @led_classdev_register(%struct.TYPE_18__* %134, %struct.TYPE_19__* @global_led)
  %136 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %137 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 0
  %139 = call i32 @sysfs_create_group(i32* %138, %struct.TYPE_16__* @zone_attribute_group)
  store i32 %139, i32* %2, align 4
  br label %140

140:                                              ; preds = %125, %75, %55, %43, %30
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i32 @sysfs_attr_init(%struct.TYPE_15__*) #1

declare dso_local i32 @led_classdev_register(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i32 @sysfs_create_group(i32*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
