; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/olpc/extr_olpc-xo175-ec.c_olpc_xo175_ec_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/olpc/extr_olpc-xo175-ec.c_olpc_xo175_ec_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.olpc_xo175_ec = type { i32, %struct.TYPE_7__, i32, %struct.TYPE_8__*, i64, i32, i32, i32, %struct.spi_device*, i32 }
%struct.TYPE_7__ = type { i32*, i32* }
%struct.TYPE_8__ = type { i8*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }

@olpc_ec = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"OLPC EC already registered.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"cmd\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to get cmd gpio: %ld\0A\00", align 1
@CMD_STATE_IDLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"Power Button\00", align 1
@EV_KEY = common dso_local global i32 0, align 4
@KEY_POWER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"error registering input device: %d\0A\00", align 1
@olpc_xo175_ec_driver = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"olpc-ec\00", align 1
@EC_ALL_EVENTS = common dso_local global i32 0, align 4
@pm_power_off = common dso_local global i32* null, align 8
@olpc_xo175_ec_power_off = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [41 x i8] c"OLPC XO-1.75 Embedded Controller driver\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @olpc_xo175_ec_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @olpc_xo175_ec_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.olpc_xo175_ec*, align 8
  %5 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %6 = load i64, i64* @olpc_ec, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %10 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %9, i32 0, i32 0
  %11 = call i32 (i32*, i8*, ...) @dev_err(i32* %10, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @EBUSY, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %136

14:                                               ; preds = %1
  %15 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %16 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %15, i32 0, i32 0
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.olpc_xo175_ec* @devm_kzalloc(i32* %16, i32 80, i32 %17)
  store %struct.olpc_xo175_ec* %18, %struct.olpc_xo175_ec** %4, align 8
  %19 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %4, align 8
  %20 = icmp ne %struct.olpc_xo175_ec* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %14
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %136

24:                                               ; preds = %14
  %25 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %26 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %25, i32 0, i32 0
  %27 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %28 = call i32 @devm_gpiod_get(i32* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %4, align 8
  %30 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %29, i32 0, i32 9
  store i32 %28, i32* %30, align 8
  %31 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %4, align 8
  %32 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %31, i32 0, i32 9
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @IS_ERR(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %24
  %37 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %38 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %37, i32 0, i32 0
  %39 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %4, align 8
  %40 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %39, i32 0, i32 9
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @PTR_ERR(i32 %41)
  %43 = call i32 (i32*, i8*, ...) @dev_err(i32* %38, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %4, align 8
  %45 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %44, i32 0, i32 9
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @PTR_ERR(i32 %46)
  store i32 %47, i32* %2, align 4
  br label %136

48:                                               ; preds = %24
  %49 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %50 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %4, align 8
  %51 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %50, i32 0, i32 8
  store %struct.spi_device* %49, %struct.spi_device** %51, align 8
  %52 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %4, align 8
  %53 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %52, i32 0, i32 7
  %54 = call i32 @spin_lock_init(i32* %53)
  %55 = load i32, i32* @CMD_STATE_IDLE, align 4
  %56 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %4, align 8
  %57 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %56, i32 0, i32 6
  store i32 %55, i32* %57, align 4
  %58 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %4, align 8
  %59 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %58, i32 0, i32 5
  %60 = call i32 @init_completion(i32* %59)
  %61 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %4, align 8
  %62 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %61, i32 0, i32 4
  store i64 0, i64* %62, align 8
  %63 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %64 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %63, i32 0, i32 0
  %65 = call %struct.TYPE_8__* @devm_input_allocate_device(i32* %64)
  %66 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %4, align 8
  %67 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %66, i32 0, i32 3
  store %struct.TYPE_8__* %65, %struct.TYPE_8__** %67, align 8
  %68 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %4, align 8
  %69 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %68, i32 0, i32 3
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = icmp ne %struct.TYPE_8__* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %48
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %136

75:                                               ; preds = %48
  %76 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %4, align 8
  %77 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %76, i32 0, i32 3
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8** %79, align 8
  %80 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %81 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %80, i32 0, i32 0
  %82 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %4, align 8
  %83 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %82, i32 0, i32 3
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  store i32* %81, i32** %86, align 8
  %87 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %4, align 8
  %88 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %87, i32 0, i32 3
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = load i32, i32* @EV_KEY, align 4
  %91 = load i32, i32* @KEY_POWER, align 4
  %92 = call i32 @input_set_capability(%struct.TYPE_8__* %89, i32 %90, i32 %91)
  %93 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %4, align 8
  %94 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %93, i32 0, i32 3
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = call i32 @input_register_device(%struct.TYPE_8__* %95)
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* %5, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %75
  %100 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %101 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %100, i32 0, i32 0
  %102 = load i32, i32* %5, align 4
  %103 = call i32 (i32*, i8*, ...) @dev_err(i32* %101, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* %5, align 4
  store i32 %104, i32* %2, align 4
  br label %136

105:                                              ; preds = %75
  %106 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %107 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %4, align 8
  %108 = call i32 @spi_set_drvdata(%struct.spi_device* %106, %struct.olpc_xo175_ec* %107)
  %109 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %4, align 8
  %110 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %109, i32 0, i32 2
  %111 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %4, align 8
  %112 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  store i32* %110, i32** %113, align 8
  %114 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %4, align 8
  %115 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %114, i32 0, i32 0
  %116 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %4, align 8
  %117 = getelementptr inbounds %struct.olpc_xo175_ec, %struct.olpc_xo175_ec* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  store i32* %115, i32** %118, align 8
  %119 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %4, align 8
  %120 = call i32 @olpc_xo175_ec_read_packet(%struct.olpc_xo175_ec* %119)
  %121 = load %struct.olpc_xo175_ec*, %struct.olpc_xo175_ec** %4, align 8
  %122 = call i32 @olpc_ec_driver_register(i32* @olpc_xo175_ec_driver, %struct.olpc_xo175_ec* %121)
  %123 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %124 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %123, i32 0, i32 0
  %125 = call i64 @platform_device_register_resndata(i32* %124, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 -1, i32* null, i32 0, i32* null, i32 0)
  store i64 %125, i64* @olpc_ec, align 8
  %126 = load i32, i32* @EC_ALL_EVENTS, align 4
  %127 = call i32 @olpc_xo175_ec_set_event_mask(i32 %126)
  %128 = load i32*, i32** @pm_power_off, align 8
  %129 = icmp eq i32* %128, null
  br i1 %129, label %130, label %132

130:                                              ; preds = %105
  %131 = load i32*, i32** @olpc_xo175_ec_power_off, align 8
  store i32* %131, i32** @pm_power_off, align 8
  br label %132

132:                                              ; preds = %130, %105
  %133 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %134 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %133, i32 0, i32 0
  %135 = call i32 @dev_info(i32* %134, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %136

136:                                              ; preds = %132, %99, %72, %36, %21, %8
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.olpc_xo175_ec* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @devm_gpiod_get(i32*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local %struct.TYPE_8__* @devm_input_allocate_device(i32*) #1

declare dso_local i32 @input_set_capability(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @input_register_device(%struct.TYPE_8__*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.olpc_xo175_ec*) #1

declare dso_local i32 @olpc_xo175_ec_read_packet(%struct.olpc_xo175_ec*) #1

declare dso_local i32 @olpc_ec_driver_register(i32*, %struct.olpc_xo175_ec*) #1

declare dso_local i64 @platform_device_register_resndata(i32*, i8*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @olpc_xo175_ec_set_event_mask(i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
