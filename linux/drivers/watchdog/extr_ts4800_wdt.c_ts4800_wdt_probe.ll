; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_ts4800_wdt.c_ts4800_wdt_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_ts4800_wdt.c_ts4800_wdt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.watchdog_device = type { i64, i64, i64, i32*, i32*, %struct.device* }
%struct.ts4800_wdt = type { %struct.watchdog_device, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"syscon\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"no syscon property\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"no offset in syscon\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"cannot get parent's regmap\0A\00", align 1
@ts4800_wdt_info = common dso_local global i32 0, align 4
@ts4800_wdt_ops = common dso_local global i32 0, align 4
@ts4800_wdt_map = common dso_local global %struct.TYPE_2__* null, align 8
@MAX_TIMEOUT_INDEX = common dso_local global i64 0, align 8
@nowayout = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"initialized (timeout = %d sec, nowayout = %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ts4800_wdt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ts4800_wdt_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.watchdog_device*, align 8
  %8 = alloca %struct.ts4800_wdt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %5, align 8
  %16 = load %struct.device_node*, %struct.device_node** %5, align 8
  %17 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.device_node* %17, %struct.device_node** %6, align 8
  %18 = load %struct.device_node*, %struct.device_node** %6, align 8
  %19 = icmp ne %struct.device_node* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %1
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = call i32 @dev_err(%struct.device* %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %132

25:                                               ; preds = %1
  %26 = load %struct.device_node*, %struct.device_node** %5, align 8
  %27 = call i32 @of_property_read_u32_index(%struct.device_node* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 1, i32* %9)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = call i32 @dev_err(%struct.device* %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %2, align 4
  br label %132

34:                                               ; preds = %25
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.ts4800_wdt* @devm_kzalloc(%struct.device* %35, i32 56, i32 %36)
  store %struct.ts4800_wdt* %37, %struct.ts4800_wdt** %8, align 8
  %38 = load %struct.ts4800_wdt*, %struct.ts4800_wdt** %8, align 8
  %39 = icmp ne %struct.ts4800_wdt* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %132

43:                                               ; preds = %34
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.ts4800_wdt*, %struct.ts4800_wdt** %8, align 8
  %46 = getelementptr inbounds %struct.ts4800_wdt, %struct.ts4800_wdt* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load %struct.device_node*, %struct.device_node** %6, align 8
  %48 = call i32 @syscon_node_to_regmap(%struct.device_node* %47)
  %49 = load %struct.ts4800_wdt*, %struct.ts4800_wdt** %8, align 8
  %50 = getelementptr inbounds %struct.ts4800_wdt, %struct.ts4800_wdt* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load %struct.device_node*, %struct.device_node** %6, align 8
  %52 = call i32 @of_node_put(%struct.device_node* %51)
  %53 = load %struct.ts4800_wdt*, %struct.ts4800_wdt** %8, align 8
  %54 = getelementptr inbounds %struct.ts4800_wdt, %struct.ts4800_wdt* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @IS_ERR(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %43
  %59 = load %struct.device*, %struct.device** %4, align 8
  %60 = call i32 @dev_err(%struct.device* %59, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %61 = load %struct.ts4800_wdt*, %struct.ts4800_wdt** %8, align 8
  %62 = getelementptr inbounds %struct.ts4800_wdt, %struct.ts4800_wdt* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @PTR_ERR(i32 %63)
  store i32 %64, i32* %2, align 4
  br label %132

65:                                               ; preds = %43
  %66 = load %struct.ts4800_wdt*, %struct.ts4800_wdt** %8, align 8
  %67 = getelementptr inbounds %struct.ts4800_wdt, %struct.ts4800_wdt* %66, i32 0, i32 0
  store %struct.watchdog_device* %67, %struct.watchdog_device** %7, align 8
  %68 = load %struct.device*, %struct.device** %4, align 8
  %69 = load %struct.watchdog_device*, %struct.watchdog_device** %7, align 8
  %70 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %69, i32 0, i32 5
  store %struct.device* %68, %struct.device** %70, align 8
  %71 = load %struct.watchdog_device*, %struct.watchdog_device** %7, align 8
  %72 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %71, i32 0, i32 4
  store i32* @ts4800_wdt_info, i32** %72, align 8
  %73 = load %struct.watchdog_device*, %struct.watchdog_device** %7, align 8
  %74 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %73, i32 0, i32 3
  store i32* @ts4800_wdt_ops, i32** %74, align 8
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ts4800_wdt_map, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.watchdog_device*, %struct.watchdog_device** %7, align 8
  %80 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %79, i32 0, i32 2
  store i64 %78, i64* %80, align 8
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ts4800_wdt_map, align 8
  %82 = load i64, i64* @MAX_TIMEOUT_INDEX, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.watchdog_device*, %struct.watchdog_device** %7, align 8
  %87 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %86, i32 0, i32 1
  store i64 %85, i64* %87, align 8
  %88 = load %struct.watchdog_device*, %struct.watchdog_device** %7, align 8
  %89 = load %struct.ts4800_wdt*, %struct.ts4800_wdt** %8, align 8
  %90 = call i32 @watchdog_set_drvdata(%struct.watchdog_device* %88, %struct.ts4800_wdt* %89)
  %91 = load %struct.watchdog_device*, %struct.watchdog_device** %7, align 8
  %92 = load i32, i32* @nowayout, align 4
  %93 = call i32 @watchdog_set_nowayout(%struct.watchdog_device* %91, i32 %92)
  %94 = load %struct.watchdog_device*, %struct.watchdog_device** %7, align 8
  %95 = load %struct.device*, %struct.device** %4, align 8
  %96 = call i32 @watchdog_init_timeout(%struct.watchdog_device* %94, i32 0, %struct.device* %95)
  %97 = load %struct.watchdog_device*, %struct.watchdog_device** %7, align 8
  %98 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %65
  %102 = load %struct.watchdog_device*, %struct.watchdog_device** %7, align 8
  %103 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.watchdog_device*, %struct.watchdog_device** %7, align 8
  %106 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %105, i32 0, i32 0
  store i64 %104, i64* %106, align 8
  br label %107

107:                                              ; preds = %101, %65
  %108 = load %struct.watchdog_device*, %struct.watchdog_device** %7, align 8
  %109 = load %struct.watchdog_device*, %struct.watchdog_device** %7, align 8
  %110 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @ts4800_wdt_set_timeout(%struct.watchdog_device* %108, i64 %111)
  %113 = load %struct.watchdog_device*, %struct.watchdog_device** %7, align 8
  %114 = call i32 @ts4800_wdt_stop(%struct.watchdog_device* %113)
  %115 = load %struct.device*, %struct.device** %4, align 8
  %116 = load %struct.watchdog_device*, %struct.watchdog_device** %7, align 8
  %117 = call i32 @devm_watchdog_register_device(%struct.device* %115, %struct.watchdog_device* %116)
  store i32 %117, i32* %10, align 4
  %118 = load i32, i32* %10, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %107
  %121 = load i32, i32* %10, align 4
  store i32 %121, i32* %2, align 4
  br label %132

122:                                              ; preds = %107
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = load %struct.ts4800_wdt*, %struct.ts4800_wdt** %8, align 8
  %125 = call i32 @platform_set_drvdata(%struct.platform_device* %123, %struct.ts4800_wdt* %124)
  %126 = load %struct.device*, %struct.device** %4, align 8
  %127 = load %struct.watchdog_device*, %struct.watchdog_device** %7, align 8
  %128 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i32, i32* @nowayout, align 4
  %131 = call i32 @dev_info(%struct.device* %126, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i64 %129, i32 %130)
  store i32 0, i32* %2, align 4
  br label %132

132:                                              ; preds = %122, %120, %58, %40, %30, %20
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @of_property_read_u32_index(%struct.device_node*, i8*, i32, i32*) #1

declare dso_local %struct.ts4800_wdt* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @syscon_node_to_regmap(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @watchdog_set_drvdata(%struct.watchdog_device*, %struct.ts4800_wdt*) #1

declare dso_local i32 @watchdog_set_nowayout(%struct.watchdog_device*, i32) #1

declare dso_local i32 @watchdog_init_timeout(%struct.watchdog_device*, i32, %struct.device*) #1

declare dso_local i32 @ts4800_wdt_set_timeout(%struct.watchdog_device*, i64) #1

declare dso_local i32 @ts4800_wdt_stop(%struct.watchdog_device*) #1

declare dso_local i32 @devm_watchdog_register_device(%struct.device*, %struct.watchdog_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ts4800_wdt*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
