; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1511.c_ds1511_rtc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1511.c_ds1511_rtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32* }
%struct.platform_device = type { i32, i32 }
%struct.resource = type { i32 }
%struct.rtc_plat_data = type { i64, %struct.TYPE_8__*, i32, %struct.TYPE_8__* }
%struct.nvmem_config = type { i8*, i32, i32, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"ds1511_nvram\00", align 1
@ds1511_nvram_write = common dso_local global i32 0, align 4
@ds1511_nvram_read = common dso_local global i32 0, align 4
@DS1511_RAM_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ds1511_base = common dso_local global %struct.TYPE_8__* null, align 8
@DS1511_BME = common dso_local global i32 0, align 4
@RTC_CMD = common dso_local global i32 0, align 4
@RTC_CMD1 = common dso_local global i32 0, align 4
@DS1511_WD_MSEC = common dso_local global i32 0, align 4
@DS1511_WD_SEC = common dso_local global i32 0, align 4
@DS1511_BLF1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"voltage-low detected.\0A\00", align 1
@ds1511_rtc_ops = common dso_local global i32 0, align 4
@ds1511_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"interrupt not available.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ds1511_rtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1511_rtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.rtc_plat_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvmem_config, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %6, align 4
  %8 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %7, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %9 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %7, i32 0, i32 1
  store i32 1, i32* %9, align 8
  %10 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %7, i32 0, i32 2
  store i32 1, i32* %10, align 4
  %11 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %7, i32 0, i32 3
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  store i32* %13, i32** %11, align 8
  %14 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %7, i32 0, i32 4
  %15 = load i32, i32* @ds1511_nvram_write, align 4
  store i32 %15, i32* %14, align 8
  %16 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %7, i32 0, i32 5
  %17 = load i32, i32* @ds1511_nvram_read, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %7, i32 0, i32 6
  %19 = load i32, i32* @DS1511_RAM_MAX, align 4
  store i32 %19, i32* %18, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.rtc_plat_data* @devm_kzalloc(i32* %21, i32 32, i32 %22)
  store %struct.rtc_plat_data* %23, %struct.rtc_plat_data** %5, align 8
  %24 = load %struct.rtc_plat_data*, %struct.rtc_plat_data** %5, align 8
  %25 = icmp ne %struct.rtc_plat_data* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %142

29:                                               ; preds = %1
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = load i32, i32* @IORESOURCE_MEM, align 4
  %32 = call %struct.resource* @platform_get_resource(%struct.platform_device* %30, i32 %31, i32 0)
  store %struct.resource* %32, %struct.resource** %4, align 8
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = load %struct.resource*, %struct.resource** %4, align 8
  %36 = call %struct.TYPE_8__* @devm_ioremap_resource(i32* %34, %struct.resource* %35)
  store %struct.TYPE_8__* %36, %struct.TYPE_8__** @ds1511_base, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ds1511_base, align 8
  %38 = call i64 @IS_ERR(%struct.TYPE_8__* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %29
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ds1511_base, align 8
  %42 = call i32 @PTR_ERR(%struct.TYPE_8__* %41)
  store i32 %42, i32* %2, align 4
  br label %142

43:                                               ; preds = %29
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ds1511_base, align 8
  %45 = load %struct.rtc_plat_data*, %struct.rtc_plat_data** %5, align 8
  %46 = getelementptr inbounds %struct.rtc_plat_data, %struct.rtc_plat_data* %45, i32 0, i32 3
  store %struct.TYPE_8__* %44, %struct.TYPE_8__** %46, align 8
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = call i64 @platform_get_irq(%struct.platform_device* %47, i32 0)
  %49 = load %struct.rtc_plat_data*, %struct.rtc_plat_data** %5, align 8
  %50 = getelementptr inbounds %struct.rtc_plat_data, %struct.rtc_plat_data* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load i32, i32* @DS1511_BME, align 4
  %52 = load i32, i32* @RTC_CMD, align 4
  %53 = call i32 @rtc_write(i32 %51, i32 %52)
  %54 = load i32, i32* @RTC_CMD1, align 4
  %55 = call i32 @rtc_write(i32 0, i32 %54)
  %56 = load i32, i32* @DS1511_WD_MSEC, align 4
  %57 = call i32 @rtc_write(i32 0, i32 %56)
  %58 = load i32, i32* @DS1511_WD_SEC, align 4
  %59 = call i32 @rtc_write(i32 0, i32 %58)
  %60 = call i32 (...) @rtc_enable_update()
  %61 = load i32, i32* @RTC_CMD1, align 4
  %62 = call i32 @rtc_read(i32 %61)
  %63 = load i32, i32* @DS1511_BLF1, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %43
  %67 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = call i32 @dev_warn(i32* %68, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %70

70:                                               ; preds = %66, %43
  %71 = load %struct.rtc_plat_data*, %struct.rtc_plat_data** %5, align 8
  %72 = getelementptr inbounds %struct.rtc_plat_data, %struct.rtc_plat_data* %71, i32 0, i32 2
  %73 = call i32 @spin_lock_init(i32* %72)
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = load %struct.rtc_plat_data*, %struct.rtc_plat_data** %5, align 8
  %76 = call i32 @platform_set_drvdata(%struct.platform_device* %74, %struct.rtc_plat_data* %75)
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = call %struct.TYPE_8__* @devm_rtc_allocate_device(i32* %78)
  %80 = load %struct.rtc_plat_data*, %struct.rtc_plat_data** %5, align 8
  %81 = getelementptr inbounds %struct.rtc_plat_data, %struct.rtc_plat_data* %80, i32 0, i32 1
  store %struct.TYPE_8__* %79, %struct.TYPE_8__** %81, align 8
  %82 = load %struct.rtc_plat_data*, %struct.rtc_plat_data** %5, align 8
  %83 = getelementptr inbounds %struct.rtc_plat_data, %struct.rtc_plat_data* %82, i32 0, i32 1
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = call i64 @IS_ERR(%struct.TYPE_8__* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %70
  %88 = load %struct.rtc_plat_data*, %struct.rtc_plat_data** %5, align 8
  %89 = getelementptr inbounds %struct.rtc_plat_data, %struct.rtc_plat_data* %88, i32 0, i32 1
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = call i32 @PTR_ERR(%struct.TYPE_8__* %90)
  store i32 %91, i32* %2, align 4
  br label %142

92:                                               ; preds = %70
  %93 = load %struct.rtc_plat_data*, %struct.rtc_plat_data** %5, align 8
  %94 = getelementptr inbounds %struct.rtc_plat_data, %struct.rtc_plat_data* %93, i32 0, i32 1
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  store i32* @ds1511_rtc_ops, i32** %96, align 8
  %97 = load %struct.rtc_plat_data*, %struct.rtc_plat_data** %5, align 8
  %98 = getelementptr inbounds %struct.rtc_plat_data, %struct.rtc_plat_data* %97, i32 0, i32 1
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  store i32 1, i32* %100, align 8
  %101 = load %struct.rtc_plat_data*, %struct.rtc_plat_data** %5, align 8
  %102 = getelementptr inbounds %struct.rtc_plat_data, %struct.rtc_plat_data* %101, i32 0, i32 1
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = call i32 @rtc_register_device(%struct.TYPE_8__* %103)
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* %6, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %92
  %108 = load i32, i32* %6, align 4
  store i32 %108, i32* %2, align 4
  br label %142

109:                                              ; preds = %92
  %110 = load %struct.rtc_plat_data*, %struct.rtc_plat_data** %5, align 8
  %111 = getelementptr inbounds %struct.rtc_plat_data, %struct.rtc_plat_data* %110, i32 0, i32 1
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = call i32 @rtc_nvmem_register(%struct.TYPE_8__* %112, %struct.nvmem_config* %7)
  %114 = load %struct.rtc_plat_data*, %struct.rtc_plat_data** %5, align 8
  %115 = getelementptr inbounds %struct.rtc_plat_data, %struct.rtc_plat_data* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp sgt i64 %116, 0
  br i1 %117, label %118, label %141

118:                                              ; preds = %109
  %119 = load i32, i32* @RTC_CMD1, align 4
  %120 = call i32 @rtc_read(i32 %119)
  %121 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %122 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %121, i32 0, i32 0
  %123 = load %struct.rtc_plat_data*, %struct.rtc_plat_data** %5, align 8
  %124 = getelementptr inbounds %struct.rtc_plat_data, %struct.rtc_plat_data* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i32, i32* @ds1511_interrupt, align 4
  %127 = load i32, i32* @IRQF_SHARED, align 4
  %128 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %129 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %132 = call i64 @devm_request_irq(i32* %122, i64 %125, i32 %126, i32 %127, i32 %130, %struct.platform_device* %131)
  %133 = icmp slt i64 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %118
  %135 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %136 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %135, i32 0, i32 0
  %137 = call i32 @dev_warn(i32* %136, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %138 = load %struct.rtc_plat_data*, %struct.rtc_plat_data** %5, align 8
  %139 = getelementptr inbounds %struct.rtc_plat_data, %struct.rtc_plat_data* %138, i32 0, i32 0
  store i64 0, i64* %139, align 8
  br label %140

140:                                              ; preds = %134, %118
  br label %141

141:                                              ; preds = %140, %109
  store i32 0, i32* %2, align 4
  br label %142

142:                                              ; preds = %141, %107, %87, %40, %26
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local %struct.rtc_plat_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.TYPE_8__* @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_8__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_8__*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @rtc_write(i32, i32) #1

declare dso_local i32 @rtc_enable_update(...) #1

declare dso_local i32 @rtc_read(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rtc_plat_data*) #1

declare dso_local %struct.TYPE_8__* @devm_rtc_allocate_device(i32*) #1

declare dso_local i32 @rtc_register_device(%struct.TYPE_8__*) #1

declare dso_local i32 @rtc_nvmem_register(%struct.TYPE_8__*, %struct.nvmem_config*) #1

declare dso_local i64 @devm_request_irq(i32*, i64, i32, i32, i32, %struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
